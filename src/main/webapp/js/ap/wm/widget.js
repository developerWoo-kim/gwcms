// a링크 작동 해제
$(document).on("click", "a", function(e){
	e.preventDefault();
});

// 마우스 이벤트
$(document).on("mouseenter", ".widgEdit", function(e){
	// ID : widgEditBtnDiv의 클래스 초기화
	widgEditBtnDivInit();

	// 모든 widgEdit 클래스의 widgEditMode 클래스 삭제 | widgNotEdit 클래스 추가
	$("div.widgEdit").each(function(index, item){
		if ($(item).attr("data-id") != null) {
			$(item).removeClass("widgEditMode").addClass("widgNotEdit");
		}		
	});

	// 현재 마우스 이벤트가 일어난 클래스에 
	// 1. widgEditMode 클래스 삭제 | widgNotEdit 클래스 추가
	// 2. ID : widgEditBtnDiv에 showBtnDiv 클래스 추가
	// 3. widgEditBtnDiv CSS 조정
	// 4. widgId 히든값에 data-id 세팅 <!>
	if ($(this).attr("data-widTy") != null) {
		$(this).removeClass("widgNotEdit").addClass("widgEditMode");
		$(".widgEditBtn").addClass("mini");
		$("#widgEditBtnDiv").addClass("showBtnDiv");
		$("#widgEditBtnDiv").addClass("mini");
		$("#widgEditBtnDiv").css({"top" : $(this).offset().top + $(this).height() / 2+10, "left" : $(this).offset().left + $(this).width() / 2-51});
		$("#widgId").val($(this).attr("data-id"));
	} else if ($(this).attr("data-id") != null) {
		$("#widgEditBtnDiv").removeClass("mini");
		$(".widgEditBtn").removeClass("mini");
		$(this).removeClass("widgNotEdit").addClass("widgEditMode")
		$("#widgEditBtnDiv").addClass("showBtnDiv");
		$("#widgEditBtnDiv").css({"top" : $(this).offset().top + $(this).height() / 2-20, "left" : $(this).offset().left + $(this).width() / 2-103});
		$("#widgId").val($(this).attr("data-id"));
	}

	if ($(this).attr("data-ty") != null) {
		$("#widgTy").val($(this).attr("data-ty"));

		// widgTabCnt 체크
		if ($(this).attr("data-ty") == "BANNER" || $(this).attr("data-ty") == "BBS" || $(this).attr("data-ty") == "GALBBS") {
			$("#widgTabCnt").val($(this).attr("data-tab"));

			// widgNttCnt 체크
			if ( $(this).attr("data-ty") == "BBS" || $(this).attr("data-ty") == "GALBBS") {
				$("#widgNttCnt").val($(this).attr("data-ntt"));
			}
		}
	}
});

// 위젯 편집 버튼 클릭 (초기화, 팝업 ON, 위젯콘텐츠 LOAD, 위젯타입[히든값] 초기화)
$(document).on("click", ".widgEditBtn", function(e){
	widgEditBtnDivInit();
	widgPopup();
	widgContentsCall();
	//$("#widgTy").val("");
});

// 위젯 6개 목록 중 선택시 이벤트 (팝업 ON, 난수생성, 위젯타입[히든값] 세팅, 위젯콘텐츠 LOAD[widgDataInsert], 현재 편집화면 체크[난수값 세팅])
$(document).on("click", ".widgSelectBtn", function(){
	widgPopup();
	var uuid = createUuid();
	$("#widgTy").val($(this).attr("data-id"));
	widgContentsCall('widgDataInsert', uuid);
	$(".widgTabDiv").find("[data-id=new]").attr("data-id", uuid);
});

// 위젯 팝업 OFF
$(document).on("click", ".widgLayerClose", function(){
	widgPopCloseImgDel(); // 팝업 닫기 시 이미지 삭제
	$('#widgLayer').bPopup().close();
});

// 위젯 추가 버튼 클릭
$(document).on("click", ".widgAdd", function(){
	// 탭 추가 및 기존 탭(data-id='new') addTabUuid로 변경
	var addTabUuid = createUuid();

	var widgTyVal = $("#widgTy").val();
	var widgTabLength = $(".widgTabDiv > li").length;
	var widgMaxTabCnt = $("#widgTabCnt").val();
	
	if ( widgTyVal != "" ) {
		if ( widgTyVal == "BBS" || widgTyVal == "GALBBS" || widgTyVal == "BANNER" ) {
			if ( Number(widgTabLength) >= Number(widgMaxTabCnt) ) {
				alert("해당 위젯은 최대" + widgMaxTabCnt + "개 까지 추가 가능합니다.");
				return false;
			}

		}
	}

	addTab(addTabUuid);

	// 추가될 탭 콘텐츠 추가 및 uuid 설정
	var uuid = createUuid();
	widgContentsCall('widgDataInsert', uuid);
	$(".widgDataInsertDiv").hide();
	$(".widgDataInsertDiv[data-id="+uuid+"]").show("blind");
});

// 위젯 화면에서 위젯 탭 삭제 버튼 클릭
$(document).on("click", ".widgDataDel", function(){
	if ($("#widgTabUl li").length > 1) {
		$("#widgTabUl li[data-id="+$(this).attr("data-id")+"]").remove();
		$("#widgTabUl li.on").removeClass("on");
		$("#widgTabUl li:first").addClass("on");
		$(".widgDataInsertDiv").hide();
		$(".widgDataInsertDiv[data-id="+$(this).attr("data-id")+"]").remove();
		$(".widgDataInsertDiv[data-id="+$("#widgTabUl li:first").attr("data-id")+"]").show();

		if ($("#widgTabUl li").length < 2) {
			$(".widgDataDel").hide();
		}
	} else {
		alert("삭제할 수 없습니다.");
	}
});

// 탭 전환 이벤트
$(document).on("click", "#widgTabUl li", function(){
	$("#widgTabUl li.on").removeClass("on");
	$(this).addClass("on");
	$(".widgDataInsertDiv").hide();
	$(".widgDataInsertDiv[data-id="+$(this).attr("data-id")+"]").show();
});

// 위젯 초기화 버튼 이벤트
$(document).on("click", ".widgInit", function(){
	if(!confirm("백업을 하지 않을 경우 데이터 복구가 불가능합니다.\n위젯 초기화를 진행하시겠습니까?")){
		return;
	}
	
	$.ajax({
		type: "POST",
		url: "/apple/wm/widg/deleteWidgData.do",
		dataType: "json",
		data: {
			widgId : $("#widgId").val(),
			sysId : $("#widgSysId").val()
		},
		success:function(result){
			if (result.resultAt == "S") {
				alert("초기화가 완료되었습니다.");
				location.reload();
			}
		},
		error:function(data) {   
			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}
	});
});

$(document).on("click", ".widgSave", function(){
	if (!confirm("저장하시겠습니까?")) {
		return;
	}
	
	/* 유효성 체크 ( 필수값, 숫자만 허용 등 ) */
	var widgTyVal = $("#widgTy").val(); // 위젯 타입
	var widgNttCntVal = $("#widgNttCnt").val(); // 게시물 개수 제한
	var tmplatId = $("#tmplatId").val(); // 템플릿 아이디

	if ( widgTyVal != "" ) {
		var valChk = "Y";
		$("#widgPage .widgDataInsertDiv").each(function(index, item){
			
			if ( widgTyVal == "MAINIMG" ) {
				if ( tmplatId == 'T1001' || tmplatId == 'T1002' || tmplatId == 'T1003' || tmplatId == 'T1004') {
					var slogan01 = $(item).find("#widgDataSj1").val(); // 슬로건 01
					var slogan02 = $(item).find("#widgDataSj2").val(); // 슬로건 02
					if (slogan01 == "" || slogan02 == "") {
						alert("슬로건을 입력해주세요.");
						valChk = "N";
						return false;
					}
					var slogan = slogan01 + "|" + slogan02;
					$(item).find("#widgDataSj").val(slogan);
				}
			}
			// 위젯 명 체크 (공통:팝업,일정,식단은 탭 없음)
			var widgDataSjVal = $(item).find("#widgDataSj").val(); // 위젯명
			
			// 탭 없는 위젯명 체크
			if ( widgTyVal == "POP" || widgTyVal == "SCHDUL" || widgTyVal == "DIET" ) {
				if ( widgDataSjVal == "" ) {
					alert("위젯명을 입력해주세요.");
					valChk = "N";
					return false;
				}
			} else { // 탭 있는 위젯명 체크
				if ( widgDataSjVal == "" ) {
					alert( (index+1) + "번째 탭의 위젯명을 입력해주세요.");
					valChk = "N";
					return false;
				}
			}

			// 메뉴 선택 체크 (일정, 식단)
			if ( widgTyVal == "SCHDUL" || widgTyVal == "DIET" ) {
				var widgDataIdVal = $(item).find("select[name='widgDataId']").val(); // 일정메뉴, 식단메뉴

				if ( widgDataIdVal == "" ) {
					alert( "메뉴를 선택해 주세요.");
					valChk = "N";
					return false;
				}
			}

			// 게시판, 게시물 개수, 게시판 출력방식 체크 (게시판)
			if ( widgTyVal == "BBS" || widgTyVal == "GALBBS" ) {
				var widgDataIdVal = $(item).find("select[name='widgDataId']").val(); // 게시판
				var widgDataCoVal = $(item).find("input[name='widgDataCo']").val(); // 게시물 개수
				//var widgDataTyVal = $(this).find("select[name='widgDataTy']").val(); // 게시판 출력방식 (필요시 사용)

				if ( widgDataIdVal == "" ) {
					alert( (index+1) + "번째 탭의 게시판을 선택해 주세요.");
					valChk = "N";
					return false;
				}

				// 게시물 개수 정규식 체크
				var chkCoVal = /[0-9]/;
				if ( widgDataCoVal == "" ) {
					alert( (index+1) + "번째 탭의 게시물 개수를 입력해 주세요.");
					valChk = "N";
					return false;
				} else {
					if( !chkCoVal.test(widgDataCoVal) ){
						alert( (index+1) + "번째 탭의 게시물 개수는 숫자만 입력 가능합니다.");
						valChk = "N";
						return false;
					}
				}

				// 게시물 개수 초과 체크
				if ( Number(widgDataCoVal) > Number(widgNttCntVal) ) {
					alert("해당 위젯의 최대 게시물 개수는 " + widgNttCntVal + "개 입니다.\n" + (index+1) + "번째 탭의 게시물 개수를 " + widgNttCntVal + " 이하로 입력해 주세요.");
					valChk = "N";
					return false;
				}
			}

			// 이미지, 대체 텍스트 체크 (메인비주얼, 바로가기메뉴)
			if ( widgTyVal == "MAINIMG" || widgTyVal == "BANNER" ) {
				var widgDataFlpthVal = $(item).find("input[name='widgDataFlpth']").val(); // 이미지
				var widgDataAltrtvTextVal = $(item).find("#widgDataAltrtvText").val(); // 대체 택스트

				if ( widgDataFlpthVal == "" ) {
					alert( (index+1) + "번째 탭의 이미지를 선택해 주세요.");
					valChk = "N";
					return false;
				}
				
				if ( widgDataAltrtvTextVal == "" ) {
					alert( (index+1) + "번째 탭의 대체 텍스트를 입력해 주세요.");
					valChk = "N";
					return false;
				}

			}
			
			// 링크 체크 (게시판, 바로가기메뉴)
			if ( widgTyVal == "BBS" || widgTyVal == "GALBBS" || widgTyVal == "BANNER" || widgTyVal == "QUICK" ) {
				var widgDataTyVal = $(item).find("input[name='widgDataUrl']").val(); // 링크

				if ( widgDataTyVal == "" ) {
					alert( (index+1) + "번째 탭의 링크를 입력해 주세요.");
					valChk = "N";
					return false;
				}
			}
			
			// 정렬순서 체크
			if ( widgTyVal == "BBS" || widgTyVal == "GALBBS" || widgTyVal == "MAINIMG" || widgTyVal == "BANNER" || widgTyVal == "QUICK" ) {
				var widgDataOrdrVal = $(item).find("#widgDataOrdr").val(); // 정렬 순서

				// 정렬순서 정규식 체크
				var chkOrdrVal = /[0-9]/;
				if ( widgDataOrdrVal == "" ) {
					alert( (index+1) + "번째 탭의 정렬순서를 입력해 주세요.");
					valChk = "N";
					return false;
				} else {
					if( !chkOrdrVal.test(widgDataOrdrVal) ){
						alert( (index+1) + "번째 탭의 정렬순서는 숫자만 입력 가능합니다.");
						valChk = "N";
						return false;
					}
				}
			}
		});
	}
	
	// foreach 에서 false 된값 체크
	if ( valChk == "N" ) {
		return;
	}
	
	/* end of 유효성 체크 ( 필수값, 숫자만 허용 등 ) */

	var ajaxUrl = "";

	if ($("#widgTyUpdateMode").length > 0 && $("#widgTyUpdateMode").val() == "widgTyUpdateMode") {
		ajaxUrl = "/apple/widg/post/json.do";
	} else {
		ajaxUrl = "/apple/widg/put/json.do";
	}
	
	$.ajax({
		type: "POST",
		url: ajaxUrl,
		dataType: "json",
		data: $("#widgForm").serialize(),
		success:function(result){
			if (result.resultAt == "S") {
				alert("저장이 완료되었습니다.");
				$('#widgLayer').bPopup().close();
				location.reload();
			}
		},
		error:function(data) {   
			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}
	});
});

// ID : widgEditBtnDiv에 showBtnDiv 클래스 제거
function widgEditBtnDivInit(){
	$("#widgEditBtnDiv").removeClass("showBtnDiv");
}

// 위젯 bPopup 실행 설정
widgPopup = function(){
	widgInit();

	$("#widgLayer").bPopup({
		modalClose : false,
		opacity : 0.3,
		speed : 450,
		autoClose : false,
		followSpeed: 500,
		transition: 'slideDown',
		transitionClose: 'slideBack',
		onClose:function(){
			widgPopCloseImgDel();
			widgInit();
		}
	});

	$("#widgLayer").css("top","20px");
}

// 위젯 페이지 불러오기
widgContentsCall = function(pageId, uuid){
	$.ajax({
		type: "POST",
		url: "/apple/widg/get/html.do",
		dataType: "html",
		data: {
			widgId : $("#widgId").val(),
			widgSysId : $("#widgSysId").val(),
			pageId : pageId,
			widgTy : $("#widgTy").val(),
			tmplatId : $("#tmplatId").val()
		},
		success:function(result){
			$("#widgPage").append(result);
			widgResize();

			if ($("#widgPage").find("#widgTyUpdate").length > 0 && pageId != "widgDataInsert") {
				$("#widgTy").val($("#widgPage").find("#widgTyUpdate").val());
				$("#widgTabUl li").remove();
				$("#widgPage .widgDataInsertDiv").each(function(index, item){
					var classOn = "";

					if (index == 0) {
						classOn = "on";
					} else {
						classOn = "";
					}

					$("#widgTabUl").append("<li class=\""+classOn+"\" data-id=\""+$(item).attr("data-id")+"\"><a href=\"javascript:\" >#"+$(item).find("input[name=widgDataSj]").val()+"</a></li>");
				});
			}
			
			if ($("#widgTy").val() != "") {
				createTabs();
				createBtns();
			}

			// BBS, GALBBS MAINIMG, BANNER, QUICK 외 위젯에서는 탭, 추가버튼 숨김처리
			if ($("#widgTy").val() != "BBS" && $("#widgTy").val() != "GALBBS" && $("#widgTy").val() != "MAINIMG" && $("#widgTy").val() != "BANNER" && $("#widgTy").val() != "QUICK") {
				$("#widgTab").hide();
				$(".widgAdd").hide();
			} else {
				$(".widgAdd").show();
			}

			// 추가될 탭 uuid 세팅
			if (pageId == "widgDataInsert") {
				$(".widgTabDiv").find("[data-id=new]").attr("data-id", uuid);
				$(".widgDataInsertDiv[data-id=new]").attr("data-id", uuid);
				$(".widgDataDel[data-id=new]").attr("data-id", uuid);
			}

			if ($("#widgTabUl li").length > 1) {
				$(".widgDataDel").show();
			} else {
				$(".widgDataDel").hide();
			}
		},
		error:function(data) {   
			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}				
	});
}

// 버튼 보이기
createBtns = function(){
	$("#widgBtns").show();
}

// 탭 추가
addTab = function(uuid){	
	$("#widgTabUl li.on").removeClass("on");

	$(".widgTabDiv").find("[data-id=new]").attr("data-id", uuid);
	$(".widgDataInsertDiv[data-id=new]").attr("data-id", uuid);
	$(".widgDataDel[data-id=new]").attr("data-id", uuid);
	$("#widgTabUl").append("<li class=\"on\" data-id=\"new\"><a href=\"javascript:\" >#추가위젯</a></li>")
}

// 난수 생성
createUuid = function(){
	var randomValuesArray = new Uint32Array(1);
	var crypto = window.crypto || window.msCrypto;
	crypto.getRandomValues(randomValuesArray);
	
	var outputString = "";

	for (var i = 0; i < randomValuesArray.length; i++) {
	  if (i > 0) outputString += ",";
	  outputString += randomValuesArray[i];
	}
	
	return outputString;	
	//return (window.crypto.getRandomValues(new Uint32Array(1)));
}

// 탭 버튼 보이기
createTabs = function(){
	$("#widgTab").show();
}

// 위젯 초기화
widgInit = function(){
	$("#widgPage").children().remove();
	$("#widgPage").html("");
	$("#widgTab").hide();
	$("#widgBtns").hide();
	$("#widgTabUl li").remove();
	$("#widgTabUl").append("<li class=\"on\" data-id=\"new\"><a href=\"javascript:\" >#추가위젯</a></li>")
	$("#widgLayer").attr("style", ""); // 이전 css가 남아있는 것 같아 제거
}

// 위젯 리사이즈
widgResize = function(){ 
	$("#widgLayer").height($(".top_bar").height() + $("#widgForm").height() + 10);
}

// 
$(document).on("change", ".widgDataUrlList", function(){
	$(this).prev("input[name=widgDataUrl]").val($(this).val());
});

// 이미지 파일 업로드
$(document).on("change", ".imgFileUpload", function(){
	if ($(this).val() == "") {
		return;
	} 
	
	if (!confirm("선택한 이미지를 업로드하시겠습니까?")) {
		return;
	} 
	
	var thisObj = $(this);
	
	$("#widgForm").ajaxSubmit({
        url : "/apple/widg/put/img.do",
        dataType : "json",
        success : function(result, statusText){
        	if (result.resultAt == "S") {
        		thisObj.next().next().find(".selectImg").attr("src", result.filePath);
        		thisObj.next("input[name=widgDataFlpth]").val(result.filePath);
				
				// 미 저장시 파일 삭제를 위한 경로
				var widgImgPopClose = $("#widgImgPopClose").val();
				widgImgPopClose += (result.filePath + ",");
				$("#widgImgPopClose").val(widgImgPopClose);

				// 파일초기화
				var agent = navigator.userAgent.toLowerCase();

				if ((navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1)) {
					thisObj.replaceWith(thisObj.clone(true));
				} else {
					thisObj.val("");
				}
        	} else {
        		console.log("이미지 업로드 오류");
        	}
        }
    });
});

// 이미지 선택
$(document).on("click", ".selectImgListItems", function(){
	$(this).closest(".widgImgTr").find(".selectImg").attr("src",$(this).attr("src"));
	$(this).closest(".widgImgTbl").prev("input[name=widgDataFlpth]").val($(this).attr("src"));
});

// 위젯 닫기시 쓰레기 이미지 삭제
widgPopCloseImgDel = function(){ 
	if ( $("#widgTy").val() == "MAINIMG" || $("#widgTy").val() == "BANNER" ) {
		$.ajax({
			type: "POST",
			url: "/apple/widg/popClose/imgDel.do",
			dataType: "json",
			async: false,
			data: {
				widgImgPopClose : $("#widgImgPopClose").val()
			},
			success:function(result){
				if (result.resultAt == "imgDelete") {
					$("#widgImgPopClose").val(",");
				} else if (result.resultAt == "NotChange") {
					$("#widgImgPopClose").val(",");
				}
			},
			error:function(data) {   
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}
		});
	}
}