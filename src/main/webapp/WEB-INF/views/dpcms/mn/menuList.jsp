<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/css/com/jquery/jquery-confirm.min.css" rel="stylesheet">
<style type="text/css">
ul#sortableListsBase { border-color: #213048 !important; }
.menuUl li div, ul#sortableListsBase li div { padding: 7px; background-color: #e8ebf0; }
.content_body:after { content: ""; clear: both; display: block; }
.board-total { margin-top: -4px; }
</style>
<script src="/js/jquery-confirm.min.js"></script>
<script src="/js/ap/mn/jquery-sortable-lists.js"></script>

<script type="text/javascript">
	// 메뉴 변동 체크
	window.menuCheck = "false";
	// 메뉴 목적지 레벨
	window.menuTargetLevel = 0;
	// 메뉴 허용 여부
	window.menuAllowedAt = "false";
	// 목적지 메뉴 탭 여부
	window.targetTabAt = "N";

	var menuTotalCnt = 0;
	var menuInsertClickStatus = "N";
	var menuDetailInfoClickStatus = "N";

	$(document).ready(function() {
		/** Jquery sortable 사용 */
		var options = {
			hintCss : {'background-color' : '#bbf'},
			currElClass : 'currElemClass',
			ignoreClass : 'clickAble', // 기능 적용을 받지 않는 class
			insertZonePlus: true, // 메뉴 이동 범위 확장
			opener: { // 하위 메뉴 open / close
				active : true,
				as : 'html',
				close : '<img src="/images/ap/mn/Remove.png" alt="minues"></img>',
				open : '<img src="/images/ap/mn/Add.png" alt="plus"></img>',
				openerCss : {
					'display' : 'inline-block', // Default value
					'float' : 'left', // Default value
					'width' : '18px',
					'height' : '18px',
					'margin-left' : '-30px',
					'margin-right' : '5px',
					'margin-top' : '10px',
					'background-position' : 'center center', // Default value
					'background-repeat' : 'no-repeat' // Default value
				}
			},
			isAllowed : function(cEl, hint, target){
				/* 메뉴 이동 허용 여부 (5레벨까지 추가 가능) 설정 시작 */
				//메뉴 이동 시, 목적 메뉴 레벨
				var targetLevel = target.attr("data-area");
				if ( target.attr("data-area") == null ) {
					window.menuTargetLevel = 0;
				} else {
					window.menuTargetLevel = targetLevel;
				}
				if (targetLevel == "5") { // 목적지가 5차 메뉴일 경우 : 무조건 cut
					hint.css('background-color', 'black');
					window.menuAllowedAt = "false";
					return false;
				} else {
					/** 이동 메뉴의 하위 메뉴 수 체크
					 * 1차 : 0개
					 * 2차 : 1개
					 * 3차 : 2개
					 * 4차 : 3개
					 */
					var underMenuCnt = 0;
					for (var i = $(cEl).attr("data-area")*1+1; i < 6; i++) {
						if (cEl.find("li[data-area="+i+"]").length > 0) {
							underMenuCnt += 1;
						}
					}
					// 목적지가 1차 메뉴일 경우  (1레벨, 2레벨 , 3레벨, 4레벨 가능)
					if (targetLevel == "1") {

						//6차 x
						if ( underMenuCnt > 3 ) {
							hint.css('background-color', 'black');
							window.menuAllowedAt = "false";
							return false;

						} else {
							//5차까지 하위 메뉴 추가 시
							if ( underMenuCnt == 3 ) {
								hint.css('background-color', 'black');
								window.menuAllowedAt = "false";
								return false;
							//4차까지 하위 메뉴 추가 시, 이동메뉴의 3차 메뉴가 탭어야 허용
							} else if ( underMenuCnt == 2 ) {
								hint.css('background-color', 'black');
								window.menuAllowedAt = "false";
								return false;
							//나머지 허용
							} else {
								hint.css('background-color', 'blue');
								window.menuAllowedAt = "true";
								return true;
							}

						}
						// 목적지가 2차 메뉴일 경우 (1레벨, 2레벨, 3레벨 가능)
					} else if (targetLevel == "2") {
						//6차 x
						if ( underMenuCnt > 2 ) {
							hint.css('background-color', 'black');
							window.menuAllowedAt = "false";
							return false;
						} else {
							//5차까지 하위 메뉴 추가 시
							if ( underMenuCnt == 2 ) {
								hint.css('background-color', 'black');
								window.menuAllowedAt = "false";
								return false;
							//4차까지 하위 메뉴 추가 시
							} else if ( underMenuCnt == 1 ) {
								hint.css('background-color', 'black');
								window.menuAllowedAt = "false";
								return false;
							//나머지 허용
							} else {
								hint.css('background-color', 'blue');
								window.menuAllowedAt = "true";
								return true;
							}
						}
					// 목적지가 3차 메뉴일 경우 (1레벨 가능)
					} else if (targetLevel == "3") {
						//6차 x
						if ( underMenuCnt > 1 ) {
							hint.css('background-color', 'black');
							window.menuAllowedAt = "false";
							return false;

						} else {
							//5차까지 하위 메뉴 추가 시
							if ( underMenuCnt == 1 ) {
								hint.css('background-color', 'black');
								window.menuAllowedAt = "false";
								return false;
							//4차까지 하위 메뉴 추가 시
							} else if ( underMenuCnt == 0 ) {
								hint.css('background-color', 'black');
								window.menuAllowedAt = "false";
								return false;
							} else {
								hint.css('background-color', 'blue');
								window.menuAllowedAt = "true";
								return true;

							}
						}

						// 목적지가 4차 메뉴일 경우 (단일메뉴 가능, 4, 5차 메뉴는  탭)
					} else if ( targetLevel == "4" ) {
						hint.css('background-color', 'black');
						window.menuAllowedAt = "false";
						return false;
					}

					// 목적지가 최상단  ( 빈공간 )
					hint.css('background-color', 'blue');
					window.menuAllowedAt = "true";
					return true;
				}
			},/* 메뉴 이동 허용 여부 (5레벨까지 추가 가능, 4, 5레벨은 탭메뉴 ) 설정 종료 */
			onDragStart: function(e, el) {
				// upperMenuLevel 확인하기 위함
				//console.log("onDragStart");
				//1차
				if ($(el).attr("data-area") == "1") {
					$("#sortableListsBase").attr("class", "sortableListsBase clickFirst");

					//2차
				} else if ($(el).attr("data-area") == "2") {
					$("#sortableListsBase").attr("class", "sortableListsBase clickSecond");

					//3차
				} else if ($(el).attr("data-area") == "3") {
					$("#sortableListsBase").attr("class", "sortableListsBase clickThird");

					//4차
				} else if ($(el).attr("data-area") == "4") {
					$("#sortableListsBase").attr("class", "sortableListsBase clickFourth");

					//5차
				} else if ($(el).attr("data-area") == "5") {
					$("#sortableListsBase").attr("class", "sortableListsBase clickFifth");

					//그 외에 옮길 시, 1차
				} else {
					$("ul#sortableListsBase > li").addClass("sortableListsBase clickFirst");
				}

			},
			onChange : function(cEl) {
				// 메뉴 변동 체크
				window.menuCheck = "true";
				// upperMenuLevel 확인하기 위함
				//console.log("onChange");

			},
			complete : function(cEl){

				// 메뉴 허용 여부 체크 : false
				if ( window.menuAllowedAt == 'false' ) {
					window.menuAllowedAt = "false";

					// 메뉴 허용 여부 체크 : true
				} else {
					/** 메뉴 변경 후 동작 ( 메뉴 레벨 변경 ) 시작  */
					/** 이동 메뉴의 하위 메뉴 수 체크
					 * ul 개수 체크 ( 하위메뉴 생성 시, ul 이 생성 됨 )
					 * 1차 : 0개
					 * 2차 : 1개
					 * 3차 : 2개
					 * 4차 : 3개
					 */
					// 부모 메뉴 레벨 0
					var upperMenuLevel = parseInt( window.menuTargetLevel );
					menuTargetLevel = upperMenuLevel;

					var underMenuCnt = 0;
					for (var i = $(cEl).attr("data-area")*1+1; i < 6; i++) {

						if (cEl.find("li[data-area="+i+"]").length > 0) {
							underMenuCnt += 1;
						}

					}

					//부모 레벨 없는 경우
					var meneOrdr = 0;
					if ( upperMenuLevel == null ) {
						meneOrdr = 0;

					} else {
						meneOrdr = upperMenuLevel;
					}

					if ( underMenuCnt == 0 ) {
						cEl.attr("data-area", meneOrdr + 1);

						// 2차 하위 메뉴 까지
					} else if ( underMenuCnt == 1 ) {
						cEl.attr("data-area", meneOrdr + 1);
						cEl.find("li").attr("data-area", meneOrdr + 2);

						// 3차 하위 메뉴 까지
					} else if ( underMenuCnt == 2 ) {
						cEl.attr("data-area", meneOrdr + 1);
						cEl.find("li").attr("data-area", meneOrdr + 2);
						cEl.find("li").find("li").attr("data-area", meneOrdr + 3);

						// 4차 하위 메뉴 까지
					} else if ( underMenuCnt == 3 ) {
						cEl.attr("data-area", meneOrdr + 1);
						cEl.find("li").attr("data-area", meneOrdr + 2);
						cEl.find("li").find("li").attr("data-area", meneOrdr + 3);
						cEl.find("li").find("li").find("li").attr("data-area", meneOrdr + 4);

						// 5차 하위 메뉴 까지
					} else {
						cEl.attr("data-area", 1);
						cEl.find("li").attr("data-area", 2);
						cEl.find("li").find("li").attr("data-area", 3);
						cEl.find("li").find("li").find("li").attr("data-area", 4);
						cEl.find("li").find("li").find("li").find("li").attr("data-area", 5);

					}
					window.menuAllowedAt = "false"; // sjLee (20/09/29) 메뉴이동시 전역변수값(menuTargetLevel) 오류로 인한 추가
				} // 메뉴 허용 여부 체크 종료

			} /** 메뉴 변경 후 동작 ( 메뉴 레벨 변경 ) 종료  */
		}

		// Jquery sortable 적용
		$(".menuUl").sortableLists(options);

		/**
		 * 전체 보기
		 * */
		$("#btnAllView").on("click", function(){
			if ($("#menuUl").find("ul").css("display") == "none") {
				$("#menuUl").find("li[class='sortableListsClosed']").removeClass("sortableListsClosed").addClass("sortableListsOpen");
				$("#menuUl").find("ul").css("display", "block");

				$("#menuUl").find("img[alt='plus']").attr("src", "/images/ap/mn/Remove.png");
				$("#menuUl").find("img[alt='plus']").attr("alt", "minues");
			} else {
				$("#menuUl").find("li[class='sortableListsOpen']").removeClass("sortableListsOpen").addClass("sortableListsClosed");
				$("#menuUl").find("ul").css("display", "none");

				$("#menuUl").find("img[alt='minues']").attr("src", "/images/ap/mn/Add.png");
				$("#menuUl").find("img[alt='minues']").attr("alt", "plus");
			}
		});

		/**
		 * 메뉴 순서 저장
		 */
		$("#btnMenuSortSave").click(function(){
			saveSortOrdr();
		});

		/**
		 * 메뉴 추가
		 */
		$("#btnInsert").on("click", function(){
			if (window.menuCheck == 'true') {
				alert("메뉴 위치가 변경되었습니다.\n메뉴 상태를 저장해주세요.");
				return false;
			}
			var systemId = $("#systemId").val();
			if (systemId == null || systemId == "") {
				alert("홈페이지 정보를 찾을 수 없습니다.");
				return false;
			}
			if (menuTotalCnt > 200) {
				alert("200개이상의 메뉴를 추가할 수 없습니다.");
				return false;
			}
			if(menuInsertClickStatus == "Y"){
				alert("메뉴추가페이지를 실행중입니다.");
				return;
			}
			menuInsertClickStatus = "Y";

			$.ajax({
				type : "post",
				url : "/admin/mn/menu/insertPage",
				data : {
					systemId : systemId
				},
				success : function(data) {
					$.confirm({
						title : '<h3 class="tit1">메뉴 추가<h3>',
						boxWidth : '50%',
						useBootstrap : false,
						content : data,
						buttons : {
							formSubmit : {
								text : '추가',
								btnClass : 'bbs_Tbtn2',
								action : function () {

									if(!menuInsertValidation()) {
										return false;
									}

									var menuType = $("#modMenuTy").val();
									if(menuType == "BOARD") {
										$("input[name='contentId']").val($("#bbsInfo").val());
										$("input[name='contentAt']").val("Y");
									}

									$("form[name='menuInsertForm'] input[name='systemId']").val(systemId);

									$.ajax({
										type : "post",
										url : "/admin/mn/menu",
										dataType : "json",
										data : $("form[name='menuInsertForm']").serialize(),
										success : function(result) {
											alert(result.message);
											if(result.status == "success") {
												$('#searchForm').attr('action','/admin/mn/menu/list')
														.attr('method', 'POST')
														.append($('<input/>', {type: 'hidden', name: 'systemId', value:$("#systemId").val() }))
														.append($('<input/>', {type: 'hidden', name: 'systemName', value:$("#systemName").val() }))
														.submit();
											}
										},
										error : function(result) {
											alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
										}
									});
								}
							},
							close : {
								text: '닫기',
								btnClass: 'bbs_Tbtn1 popClose',
								action : function () {
									menuInsertClickStatus = "N";
								}
							}
						},
					})
				},
				error : function(data) {
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
					menuInsertClickStatus = "N";
				}
			});
		});

		/**
		 * 메뉴 상세정보 클릭
		 */
		$(".menuDetail").on("click", function(){
			//메뉴 변동여부 체크
			var changeChk = window.menuCheck;
			if ( changeChk == 'true') {
				alert("메뉴 위치가 변경되었습니다.\n순서를 먼저 저장해 주세요.");
				return false;

			} else {

				if(menuDetailInfoClickStatus == "Y"){
					alert("메뉴상세정보페이지를 실행중입니다.");
					return;
				}
				menuDetailInfoClickStatus = "Y";
				// 해당 메뉴 아이디
				var menuId = $(this).attr("data-id");
				// 하위 메뉴 파악 : 몇차까지 있는지
				var underMenuCnt = $(this).closest("li").find("ul").length;

				$.ajax({
					type : "POST",
					url : "/admin/mn/menu/updatePage",
					data : {
						menuId : menuId
					},
					success : function(data){
						selectMenuInfo(data);
					},
					error : function(data){
						alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
						menuDetailInfoClickStatus = "N";
					}
				});
			}
		});

		/**
		 * 메뉴 캐시 업데이트
		 */
		$("#btnMenuCacheUpdate").on("click", function () {

			if (confirm("메뉴 캐시 데이터를 업데이트 하시겠습니까?")) {
				$.ajax({
					type : "PUT",
					dataType : "json",
					url : "/admin/mn/menu/"+$("#systemId").val()+"/cache",
					success : function(result) {
						alert(result.message);
						if(result.status == 'success'){
							goSearch();
						}
					},
					error : function(result) {
						errorMessage(result);
					}
				});
			}
		})
	})

</script>

<h4 class="tit1">[<c:out value="${condition.systemName }" />]&nbsp; &nbsp;메뉴 관리
	<button type="button" class="appleHpcmIcon" onClick="javascript:popupHelp('21')">도움말</button></h4>
<div class="box_st1 mgb5">
	<p class="ac">홈페이지의 메뉴를 등록, 수정, 삭제, 순서를 변경하고 적용할 수 있습니다.</p>
	<p class="ac">등록, 수정, 삭제 작업 후 반드시 "메뉴 캐시 적용" 버튼을 클릭하여 캐시를 업데이트 해주시기 바랍니다.</p>
</div>

<form id="searchForm" name="searchForm" method="GET" >
	<input type="hidden" id="size" name="size" value="<c:out value='${condition.size}'/>">
	<input type="hidden" id="page" name="page" value="${condition.page}" />
	<input type="hidden" id="searchText" name="searchText" value="<c:out value='${condition.searchText}'/>">
</form>

<div class="bbs_srch">
	<input type="hidden" id="systemId" value="<c:out value="${condition.systemId}"/>">
	<input type="hidden" id="systemName" value="<c:out value="${condition.systemName}"/>">
	<fieldset>
		<button type="button" title="홈페이지 적용" class="btnTy_grn03" id="btnMenuCacheUpdate">메뉴 캐시 적용</button>
		<button type="button" title="메뉴 순서 저장" class="btnTy_pur02" id="btnMenuSortSave">메뉴 순서 저장</button>
		<button type="button" title="메뉴추가" class="btnTy_blue01" id="btnInsert">메뉴 추가</button>
		<button type="button" title="전체보기" class="btnTy_gray02" id="btnAllView">전체보기</button>
	</fieldset>
</div>
<ul class="menuUl" id="menuUl">
	<c:out value="${menuList}" escapeXml="false"/>
</ul>

<script type="text/javascript">
	/** 메뉴 정렬 순서 저장 */
	function saveSortOrdr(check){
		var systemId = $("#systemId").val();
		if (systemId == null || systemId == "") {
			alert("홈페이지 정보를 찾을 수 없습니다.");
			return false;
		}

		if (!confirm("현재 메뉴순서를 저장하시겠습니까?")) {
			return false;
		}

		var listArray = ($('#menuUl').sortableListsToArray());
		var paramLength = $('#menuUl').sortableListsToArray().length;

		if (paramLength == 0) {
			window.menuCheck = "false";
			alert("저장할 메뉴 데이터가 존재하지 않습니다.");
			return false;
		}

		var paramArray = new Array();
		for (var i = 0; i < paramLength; i++) {
			// 메뉴 아이디 체크
			paramArray += listArray[i].id + ",";
			// 메뉴 순서 체크
			paramArray += (i + 1) + ",";
			// 부모 메뉴 아이디 체크
			var parentId = "";
			if ( listArray[i].parentId == null || !listArray[i].parentId ) {
				parentId = "N";
			} else {
				parentId = listArray[i].parentId;
			}
			paramArray += parentId + ";";
		}
		var paramArray = paramArray.substring(0, paramArray.length-1);
		//로딩
		// loadingStart();
		$.ajax({
			type : "POST",
			url : "/admin/mn/menu/sort",
			data : {
				listArray : paramArray
			},
			datatype : "json",
			success : function(result) {
				alert(result.message);
				// loadingEnd();
				window.menuCheck = "false";
			},
			error : function (result) {
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				window.menuCheck = "false";
				//로딩
				// loadingEnd();
			}
		})
	}

	/**
	 * 메뉴 추가 시 유효성 검사
	 * */
	function menuInsertValidation() {
		var result = true;
		var menuNm = $("input[name='menuNm']").val();
		if (menuNm == "") {
			alert("메뉴명을 입력해주세요.");
			menuInsertClickStatus = "N";
			result = false;
		}
		// 새로운 메뉴 생성시 (메뉴 레벨)
		var upperMenuLevel = $("select[name='upperMenuId'] > option:selected").attr("data-Level");
		var menuLevel = "";

		if (upperMenuLevel == "N")
			menuLevel = "1";
		else
			menuLevel = parseInt(upperMenuLevel) + 1;

		$("input[name='menuLevel']").val(menuLevel);

		// 메뉴 URL
		var menuTy = $("#modMenuTy").val();
		var menuUrl = $("#menuUrl").val();

		if (menuTy == "MENU") {
			menuUrl = "#";
		} else if (menuTy == "BBS") {
			menuUrl = $("#BBS_URL").val();

			var bbsInfo = $("#bbsInfo").val();
			if ( bbsInfo == "") {
				alert("게시판을 선택해주세요.");
				$("#bbsInfo").focus();
				menuInsertClickStatus = "N";
				result = false;
			}

		} else if (menuTy == "SUB") {
			menuUrl = $("#SUB_URL").val();
		} else if (menuTy == "LINK") {
			if (menuUrl == "") {
				alert("메뉴링크를 입력해주세요.");
				$("#menuUrl").focus();
				menuInsertClickStatus = "N";
				result = false;
			}
		} else {
			menuUrl = $("#" + menuTy + "_URL").val();
		}

		if (menuTy != "MENU" && menuTy != "LINK") {
			menuUrl = "/" + systemId + menuUrl;
		}

		$("#menuUrl").val(menuUrl);

		// 상위메뉴 체크
		var upperMenuId = $("#upperMenuId option:selected").val();

		var newBbsType = $("#cdbbsTy").val();

		if(newBbsType == 'CVPL') {
			$("input[name='cvplAt']").val('Y');
			$("input[name='sttusUseAt']").val('Y');
		} else if ( newBbsType == 'FAQ') {
			$("input[name='secretUseAt']").val('N');
		}

		return result;
	}

	/**
	 * 메뉴 상세 정보 처리
	 * @param data
	 */
	function selectMenuInfo(data){

		$.confirm({
			title : '<h3 class="tit1">메뉴 상세 정보<h3>',
			boxWidth : '50%',
			useBootstrap : false,
			content : data,
			buttons : {
				confirm : {
					text : '수정',
					btnClass : 'btn-orange btnUpdate',
					action : function () {
						menuUpdate();
						menuDetailInfoClickStatus = "N";
						return false;
					}
				},
				btnDelete : {
					text : '삭제',
					btnClass : 'btn-red btnDelete',
					action : function () {
						menuDeleteAction();
						menuDetailInfoClickStatus = "N";
						return false;
					}
				},
				close : {
					text: '닫기',
					btnClass: 'btn-dark popClose',
					action : function () {
						menuDetailInfoClickStatus = "N";
					}
				}
			},
		})
	}

	// 메뉴 삭제 버튼 클릭
	function menuDeleteAction() {
		var systemId = $("#systemId").val();

		if (systemId == null || systemId == "") {
			alert("홈페이지 정보를 찾을 수 없습니다.");
			return false;
		}

		if (window.menuCheck == 'true') {
			alertMsg('메뉴 위치 변경', '메뉴 위치가 변경되었습니다.<br/>저장 후 삭제해주세요.');
			$(".popClose").click();
			return false;
		}

		var menuId = $("#popMenuId").val();
		var menuLevel = $("#popMenuLevel").val();

		var childLength = null;
		if (menuLevel == "1") {
			childLength = $("#menuUl > #menuId_" + menuId).find("li").length;
		} else if (menuLevel == "2") {
			childLength = $("#menuId_" + menuId).find("li").length;
		} else {
			childLength = 0;
		}

		if (childLength > 0) {
			delMsg += "<br/><b>하위 메뉴(" + childLength + "개)</b>";
			$.alert({
				title : '<h3 class="tit1">하위 메뉴 확인<h3>',
				boxWidth : '250px',
				useBootstrap : false,
				content : '먼저 하위 메뉴를 삭제해주세요.',
				buttons : {
					alert : {
						text : '확인',
						btnClass : 'btn-default',
						action : function () {
							$(".popClose").click();
						}
					}
				}
			});

			return false;
		}

		var delMsg = "메뉴를 삭제하시겠습니까?";
		$.confirm({
			title : '<h3 class="tit1">메뉴 삭제<h3>',
			boxWidth : '250px',
			useBootstrap : false,
			content : delMsg,
			buttons : {
				confirm : {
					text : '삭제',
					btnClass : 'btn-red',
					action : function () {
						menuDelete(menuId);
					}
				},
				close : {
					text: '닫기',
					btnClass: 'btn-dark alertClose'
				}
			},
		});

	}

	// 메뉴 삭제 처리
	function menuDelete(id) {
		$.ajax({
			type : "DELETE",
			dataType : "json",
			url : "/admin/mn/menu/"+id+"/delete",
			success : function(result) {
				alert(result.message);
				if(result.status == "success") {
					$('#searchForm').attr('action','/admin/mn/menu/list')
							.attr('method', 'POST')
							.append($('<input/>', {type: 'hidden', name: 'systemId', value:$("#systemId").val() }))
							.append($('<input/>', {type: 'hidden', name: 'systemName', value:$("#systemName").val() }))
							.submit();
				}
			},
			error : function(result) {
				alert(result.message);
			}
		});
	};

	/** 메뉴 수정 처리 */
	function menuUpdate() {
		/** 홈페이지 정보 체크 */
		var systemId = $("#systemId").val();
		if (systemId == null || systemId == "") {
			alert("홈페이지 정보를 찾을 수 없습니다.");
			return false;
		}
		/** 메뉴명 체크 */
		var menuNm = $("input[name='menuNm']").val();
		if (menuNm == "") {
			alert("메뉴명을 입력해주세요.");
			return false;
		}

		var updateMsg = "메뉴를 수정하시겠습니까?";
		$.confirm({
			title : '<h3 class="tit1">메뉴 수정<h3>',
			boxWidth : '250px',
			useBootstrap : false,
			content : updateMsg,
			buttons : {
				confirm : {
					text : '수정',
					btnClass : 'btn-orange',
					action : function () {
						$.ajax({
							type : "PUT",
							dataType : "json",
							data : $("form[name='menuUpdateForm']").serialize(),
							url : "/admin/mn/menu/update",
							success : function(result) {
								alert(result.message);
								if(result.status == "success") {
									$('#searchForm').attr('action','/admin/mn/menu/list')
											.attr('method', 'POST')
											.append($('<input/>', {type: 'hidden', name: 'systemId', value:$("#systemId").val() }))
											.append($('<input/>', {type: 'hidden', name: 'systemName', value:$("#systemName").val() }))
											.submit();
								}
							},
							error : function (result) {
								alert(result.message);
							}
						})
					}
				},
				close : {
					text: '닫기',
					btnClass: 'btn-dark alertClose'
				}
			},
		});
	}

</script>