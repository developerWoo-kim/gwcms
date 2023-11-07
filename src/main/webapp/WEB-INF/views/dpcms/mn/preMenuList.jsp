<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/css/com/jquery/jquery-confirm.min.css" rel="stylesheet">
<style type="text/css">
/* .menuUl li, ul#sortableListsBase li { padding-left: 50px; margin: 5px; border: 1px solid #3f3f3f; } */
ul#sortableListsBase { border-color: #213048 !important; }
.menuUl li div, ul#sortableListsBase li div { padding: 7px; background-color: #e8ebf0; }
.fa-minus { background-image: "/images/ap/mn/Remove.png"; }
.fa-plus { background-image: "/images/ap/mn/Add.png"; }
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

	function menuInsertValidation() {
		var result = true;
		var menuNm = $("input[name='menuNm']").val();

		if (menuNm == "") {
			alert("메뉴명을 입력해주세요.");
			menuInsertClickStatus = "N";
			result = false;
		}

		// 권한
		var authorSize = $(".selAuthor").length;

		if (authorSize != 0) {
			var authorArray = "";

			for (var i = 0; i < authorSize; i++) {
				authorArray += $(".selAuthor").eq(i).attr("data-val") + ",";
			}

			var authorArray = authorArray.substring(0, authorArray.length - 1);

			$("input[name='menuAuthor']").val(authorArray);
		}

		// 그룹
		var groupSize = $(".selGroup").length;

		if (groupSize != 0) {
			var groupArray = "";

			for (var j = 0; j < groupSize; j++) {
				groupArray += $(".selGroup").eq(j).attr("data-val") + ",";
			}

			var groupArray = groupArray.substring(0, groupArray.length - 1);

			$("input[name='menuGroup']").val(groupArray);
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
			menuUrl = "/" + sysId + menuUrl;
		}

		$("#menuUrl").val(menuUrl);

		// 상위메뉴 체크
		var upperMenuId = $("#upperMenuId option:selected").val();

		//로딩
		loadingStart();

		var newBbsType = $("#cdbbsTy").val();

		if(newBbsType == 'CVPL') {
			$("input[name='cvplAt']").val('Y');
			$("input[name='sttusUseAt']").val('Y');
		} else if ( newBbsType == 'FAQ') {
			$("input[name='secretUseAt']").val('N');
		}

		var chk = $("input[name='menuAuthor']:checked").length;

		if ( chk < 1) {
			alert("접근권한을 선택해주세요.");
			menuInsertClickStatus = "N";
			result = false;
		}

		// 그룹, 기타권한 부여여부 체크
		var conectAuthorChk = false;
		$('input[name="conectAuthor"]:checked').each(function (index) {
			if ( $(this).val() == 'common=19' ) { // 그룹
				if ( $("#groupDiv").children().length == 0 ) {
					alert("그룹을 부여해주세요.");
					conectAuthorChk = true;
				}
			} else if ( $(this).val() == 'common=30' ) { // 기타
				if ( $("#authorDiv").children().length == 0 ) {
					alert("기타권한을 부여해주세요.");
					conectAuthorChk = true;
				}
			}
		});

		// 그룹, 기타권한 부여여부 체크
		if (conectAuthorChk) {
			menuInsertClickStatus = "N";
			result = false;
		}

		return result;
	}
</script>

<h4 class="tit1">[<c:out value="${condition.sysNm }" />]&nbsp; &nbsp;메뉴 관리
	<button type="button" class="appleHpcmIcon" onClick="javascript:popupHelp('21')">도움말</button></h4>
<div class="box_st1 mgb5">
	<p class="ac">홈페이지의 메뉴를 등록, 수정, 삭제, 순서를 변경하고 적용할 수 있습니다.</p>
</div>

<c:import url="/WEB-INF/views/dpcms/cmm/searchForm.jsp" />

<div class="bbs_srch">
	<input type="hidden" id="sysId" value="<c:out value="${condition.sysId}"/>">
	<input type="hidden" id="sysNm" value="<c:out value="${condition.sysNm}"/>">
	<fieldset>
		<button type="button" title="홈페이지 적용" class="btnTy_grn03" id="btnMenuManageSys">홈페이지 적용</button>
		<button type="button" title="메뉴 순서 저장" class="btnTy_pur02" id="btnSave">메뉴 순서 저장</button>
		<button type="button" title="메뉴추가" class="btnTy_blue01" id="btnInsert">메뉴 추가</button>
		<button type="button" title="전체보기" class="btnTy_gray02" id="btnAllView">전체보기</button>
		<a href="/apple/mh/menuhist/selectMhList.do?sysId=<c:out value="${sysId}"/>&sysNm=<c:out value="${sysNm}"/>" class="btnTy_white01" >메뉴 이력</a>
		<a href="/apple/mn/menu/selectMenuList.do" class="btnTy_white01" >홈페이지 목록</a>
	</fieldset>
</div>
<ul class="menuUl" id="menuUl">
	<c:out value="${menuList}" escapeXml="false"/>
</ul>

<script type="text/javascript">
var menuTotalCnt = 0;

$(function(){
	/** 메뉴 이동 설정 시작 */
	// 정렬 옵션
	var options = {
		hintCss : {'background-color' : '#bbf'},	
		currElClass : 'currElemClass',
		ignoreClass : 'clickAble', // 기능 적용을 받지 않는 class
		insertZonePlus: true, // 메뉴 이동 범위 확장
		opener: { // 하위 메뉴 open / close
			active : true,
			as : 'html',  // or "class" or skip if using background-image url
			close : '<img src="/images/ap/mn/Remove.png" alt="minues"></img>', //'<i class="fa fa-minus red"></i>', // or 'fa fa-minus' or './imgs/Remove2.png'
			open : '<img src="/images/ap/mn/Add.png" alt="plus"></img>', //'<i class="fa fa-plus"></i>', // or 'fa fa-plus' or './imgs/Add2.png'
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
 			// upperMenuLevel 확인하기 위함
 			//console.log("isAllowed");
 		/* 메뉴 이동 허용 여부 (5레벨까지 추가 가능, 4,5레벨은 탭메뉴 ) 설정 시작 */

 			//메뉴 이동 시, 목적 메뉴 레벨
 			var targetLevel = target.attr("data-area");
 			if ( target.attr("data-area") == null ) {
 				window.menuTargetLevel = 0;	
 			} else {
 				window.menuTargetLevel = targetLevel;
 			}
 			
 			if (targetLevel == "5") { // 목적지가 4차 메뉴일 경우 : 무조건 cut
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
				
				/** 목적 메뉴 탭 여부 체크  */
				var targetTabAt = target.attr("data-ty");
				window.targetTabAt = targetTabAt;
 			
				/** 목적지 메뉴의 부모 메뉴 탭 여부 체크 < 탭 - 탭 체크 목적 > */
 				var parentTabAt = target.parent().closest("li").attr("data-ty");
				if ( parentTabAt == null ) {
					  parentTabAt = "N";
						
				} else {
					parentTabAt = target.parent().closest("li").attr("data-ty");
				}
 				
 				// 상위메뉴 구성이 <탭 - 탭 메뉴> 인 경우 하위메뉴 추가 x
				if ( parentTabAt == "Y" && targetTabAt == "Y"  ) {
					 hint.css('background-color', 'black');
					 window.menuAllowedAt = "false";
					 return false;
					 
				// 목적지 메뉴 ( 상위메뉴 )가 탭 인 경우, 탭 메뉴만 추가 가능
				} else if ( targetTabAt == "Y" ) {
					
					if ( cEl.attr("data-ty") == "N" ) {
						 hint.css('background-color', 'black');
						 window.menuAllowedAt = "false";
						 return false;
					
					// 하위메뉴가 존재 할 경우, 불가능
					} else if ( underMenuCnt != 0 ) {
						hint.css('background-color', 'black');
						window.menuAllowedAt = "false";
						return false;
					
					} else {
						hint.css('background-color', 'blue');
						window.menuAllowedAt = "true";
						return true;
						
					}
					
				} else { 
					
					// 목적지가 1차 메뉴일 경우  (1레벨, 2레벨 , 3레벨, 4레벨 가능)
					if (targetLevel == "1") { 
						
						//6차 x
						if ( underMenuCnt > 3 ) { 
							 hint.css('background-color', 'black');
							 window.menuAllowedAt = "false";
							 return false;
							
						} else {
							
							//5차까지 하위 메뉴 추가 시, 이동메뉴의 3차 4차메뉴가 탭이어야 허용
							if ( underMenuCnt == 3 ) {
								 var thirdTabAt = cEl.find("li").find("li").attr("data-ty");
								 var fouthTabAt = cEl.find("li").find("li").find("li").attr("data-ty");
								 if ( thirdTabAt == "Y" && fouthTabAt == "Y" ) {
									 	hint.css('background-color', 'blue');
										window.menuAllowedAt = "true";
										return true;
									 
								 } else {
									 hint.css('background-color', 'black');
									 window.menuAllowedAt = "false";
									 return false;
								 } 
								
							//4차까지 하위 메뉴 추가 시, 이동메뉴의 3차 메뉴가 탭어야 허용								
							} else if ( underMenuCnt == 2 ) {
								var thirdTabAt = cEl.find("li").find("li").attr("data-ty");
								 if ( thirdTabAt == "Y" ) {
									 	hint.css('background-color', 'blue');
										window.menuAllowedAt = "true";
										return true;
									 
								 } else {
									 hint.css('background-color', 'black');
									 window.menuAllowedAt = "false";
									 return false;
								 }
								 
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
							
							//5차까지 하위 메뉴 추가 시, 이동메뉴의 2차 3차메뉴가 탭이어야 허용
							if ( underMenuCnt == 2 ) {
								 var secondTabAt = cEl.find("li").attr("data-ty");
								 var thirdTabAt = cEl.find("li").find("li").attr("data-ty");
								 if ( thirdTabAt == "Y" && secondTabAt == "Y" ) {
									  hint.css('background-color', 'blue');
									  window.menuAllowedAt = "true";
									  return true;
									 
								 } else {
									 hint.css('background-color', 'black');
									 window.menuAllowedAt = "false";
									 return false;
								 }
								 
							//4차까지 하위 메뉴 추가 시, 이동메뉴의 2차 메뉴가 탭이어야 허용	
							} else if ( underMenuCnt == 1 ) {
								var secondTabAt = cEl.find("li").attr("data-ty");
								if ( secondTabAt == "Y" ) {
									 hint.css('background-color', 'blue');
									 window.menuAllowedAt = "true";
									 return true;
									 
								} else {
									 hint.css('background-color', 'black');
									 window.menuAllowedAt = "false";
									 return false;
								}
								
							//나머지 허용	
							} else {
								hint.css('background-color', 'blue');
								window.menuAllowedAt = "true";
								return true;
							}
							
						}
							
					
					// 목적지가 3차 메뉴일 경우 (1레벨 가능, 4차부터 탭)
					} else if (targetLevel == "3") {
						
						//6차 x
						if ( underMenuCnt > 1 ) { 
							 hint.css('background-color', 'black');
							 window.menuAllowedAt = "false";
							 return false;
							
						} else {
							
							//5차까지 하위 메뉴 추가 시, 이동메뉴의 1차, 2차 메뉴가 탭이어야 허용
							if ( underMenuCnt == 1 ) {
								 var firstTabAt = cEl.attr("data-ty");
								 var secondTabAt = cEl.find("li").attr("data-ty");
								 if ( firstTabAt == "Y" && secondTabAt == "Y") {
									  hint.css('background-color', 'blue');
									  window.menuAllowedAt = "true";
									  return true;
									  
								 } else {
									 hint.css('background-color', 'black');
									 window.menuAllowedAt = "false";
									 return false;
								 }
							
							//4차까지 하위 메뉴 추가 시, 이동메뉴의 1차 메뉴가 탭이어야 허용
							} else if ( underMenuCnt == 0 ) {
								var firstTabAt = cEl.attr("data-ty");
								if ( firstTabAt == "Y" ) {
									  hint.css('background-color', 'blue');
									  window.menuAllowedAt = "true";
									  return true;
									  
								} else {
								   hint.css('background-color', 'black');
								   window.menuAllowedAt = "false";
								   return false;
								}
								
							} else {
								hint.css('background-color', 'blue');
								window.menuAllowedAt = "true";
								return true;
								
							}
						}
						
					// 목적지가 4차 메뉴일 경우 (단일메뉴 가능, 4, 5차 메뉴는  탭)		
					} else if ( targetLevel == "4" ) {
						
						//6차 x
						if ( underMenuCnt != 0 ) { 
							 hint.css('background-color', 'black');
							 window.menuAllowedAt = "false";
							 return false;
							
						} else {
							//5차까지 하위 메뉴 추가 시, 이동메뉴의 1차메뉴가 탭이어야 허용
							var firstTabAt = cEl.attr("data-ty");
							if ( firstTabAt == 'Y' ) {
								 hint.css('background-color', 'blue');
								 window.menuAllowedAt = "true";
								 return true;
								
							} else {
								hint.css('background-color', 'black');
								window.menuAllowedAt = "false";
								return false;	
							}
							
						}
						
					}
					
				}
				
				// 목적지가 최상위 메뉴 인 경우 ( 탭 메뉴는 최상위 메뉴 이동 불가능 )
				if ( cEl.attr('data-ty') == 'Y') {
					  hint.css('background-color', 'black');
					  window.menuAllowedAt = "false";
					  return false;
					  
				} else {
					
					// 목적지가 최상단  ( 빈공간 )
					hint.css('background-color', 'blue');
					window.menuAllowedAt = "true";
					return true;
				}
				
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
				//alert("하위항목 수 : " + underMenuCnt);
				
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
				// upperMenuLevel 확인하기 위함
				//console.log("complete");
				//console.log("부모 : " + upperMenuLevel);
				//console.log("현재 : " + cEl.attr("data-area"));
				window.menuAllowedAt = "false"; // sjLee (20/09/29) 메뉴이동시 전역변수값(menuTargetLevel) 오류로 인한 추가
				//alert("현재(수정) : " + cEl.attr("data-area"));
				 
		 } // 메뉴 허용 여부 체크 종료	
		
	  } /** 메뉴 변경 후 동작 ( 메뉴 레벨 변경 ) 종료  */ 
		
	} /** 메뉴 이동 설정 종료 */
	
	
	// 적용
	$(".menuUl").sortableLists(options);
	
	// 순서 저장 버튼 클릭
	$("#btnSave").click(function(){
		saveSortOrdr("");
	});

	// 메뉴상세정보클릭 상태
	menuDetailInfoClickStatus = "N";

	// 메뉴 상세정보 클릭
	$(document).on('click', '.menuDetail', function(){
		
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
			// 시스템 아이디
			var sysId = $("#sysId").val();
			// 하위 메뉴 파악 : 몇차까지 있는지
			var underMenuCnt = $(this).closest("li").find("ul").length;
			// 현재 해당 메뉴 레벨 파악
			var currentMenuLevel = $(this).closest("li").attr("data-area");
			
			// 상위 메뉴 탭 여부 
			var upperMenuTabAt = $(this).closest("li").closest("ul").closest("li").attr("data-ty");
			if ( upperMenuTabAt = null) {
					upperMenuTabAt = "N";
			} else {
				upperMenuTabAt = $(this).closest("li").closest("ul").closest("li").attr("data-ty");
			}
			
			$.ajax({
				type : "POST",
				url : "/admin/mn/menu/updatePage",
				data : {
					menuId : menuId,
					underMenuCnt : underMenuCnt,
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
	
	// 메뉴 상세 정보 처리
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
						menuUpdateAction();
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
	
	// 메뉴 수정 처리
	function menuUpdateAction() {
		var sysId = $("#sysId").val();
		
		if (sysId == null || sysId == "") {
			alert("홈페이지 정보를 찾을 수 없습니다.");
			return false;
		}
		
		var menuNm = $("input[name='modMenuNm']").val();
		
		if (menuNm == "") {
			alert("메뉴명을 입력해주세요.");
			return false;
		}
		
		var menuId = $("#popMenuId").val();
		var menuNm = $("#modMenuNm").val();
		var cnncMenuId = $("#modCnncMenuId").val();
		var useAt = $("input[name='modUseAt']:checked").val();
		var clsdrAt = $("input[name='modClsdrAt']:checked").val();
		var upendAt = $("input[name='modUpendAt']:checked").val();
		var conectAuthor = "";
		
// 		if ($('.connAuthor:checked').length < 1) {
// 			alert("접근권한을 선택해주세요.");
// 			return false;
// 		}
		
		$('.connAuthor:checked').each(function(idx){
			if (idx>0) {
				conectAuthor += ","+$(this).val();
			} else {
				conectAuthor += $(this).val();
			}
		});
		
		var menuTy = $("#modMenuTy").val();
		var newWinAt = $("input[name='modNewWinAt']:checked").val();
	//임시제외		var rclickAt = $("input[name='modRclickAt']:checked").val();
		var rclickAt = "Y";
		var menuUrl = $("#menuUrl").val();
		var cntntsId = "";
		
		if (menuTy == "MENU") {
// 			if (cnncMenuId == "") {
// 				alert("연결할 메뉴를 선택해주세요.");
// 				$("#modCnncMenuId").focus();
// 				return;
// 			}
			menuUrl = "#";
			cntntsId = "";
		} else if (menuTy == "BBS") {
			menuUrl = $("#BBS_URL").val();
			cntntsId = $("#bbsInfo").val();
		} else if (menuTy == "SUB") {
			menuUrl = $("#SUB_URL").val();
			cntntsId = $("#cntntsInfo").val();
		} else if (menuTy == "LINK") {
			if (menuUrl == "") {
				alert("메뉴링크를 입력해주세요.");
				$("#menuUrl").focus();
				return;
			}
			cntntsId = "";
		} else {
			menuUrl = $("#" + menuTy + "_URL").val();
			cntntsId = "";
		}
		
		// ctx 추가
		if (menuTy != "MENU" && menuTy != "LINK") {
			menuUrl = "/" + sysId + menuUrl;
		}
		
		if (!confirm("메뉴를 수정하시겠습니까?")) {
			return;
		}
		
		//로딩
		loadingStart();
		
		// 권한
		var menuAuthor = "";
		var authorSize = $(".selAuthor").length;
		
		if (authorSize != 0) {
			var authorArray = "";
			
			for (var i = 0; i < authorSize; i++) {
				authorArray += $(".selAuthor").eq(i).attr("data-val") + ",";
			}
			
			menuAuthor = authorArray.substring(0, authorArray.length - 1);
		}
		
		// 그룹
		var menuGroup = "";
		var groupSize = $(".selGroup").length;
		
		if (groupSize != 0) {
			var groupArray = "";
			
			for (var j = 0; j < groupSize; j++) {
				groupArray += $(".selGroup").eq(j).attr("data-val") + ",";
			}
			
			menuGroup = groupArray.substring(0, groupArray.length - 1);
		}
		
		// 탭 여부
		var tabAt = $("input[name='tabAt']:checked").val();
		
		/*
		작업자 : sjLee (200724)
		작업안 : 상단 미표시 기능 1차 메뉴에서만 사용가능
		*/
		// 상단 미표시 1차메뉴에서만 사용
		var modUpendAt = $("input[name='modUpendAt']:checked").val();
		var menuLevel = $("#popMenuLevel").val();
		
		if ( modUpendAt == 'Y') {
			if ( menuLevel != '1' ) {
				alert("상단 미표시 기능은 1차메뉴에서 가능합니다.");
				$("select[name='modUpendAt']").focus();
				$("select[name='modUpendAt']").val("N");
				menuInsertClickStatus = "N";
				return false;
			}
		}
		
		var chk = $("input[name='modConectAuthor']:checked").length;
		
 		if ( chk < 1) {
 			alert("접근권한을 선택해주세요.");
 			return false;
 		}
		
 		// 그룹, 기타권한 부여여부 체크
 		var conectAuthorChk = false;
 		$('input[name="modConectAuthor"]:checked').each(function (index) {
 			if ( $(this).val() == 'common=19' ) { // 그룹
 				if ( $("#groupDiv").children().length == 0 ) {
 					alert("그룹을 부여해주세요.");
 					conectAuthorChk = true;
 				}
 			} else if ( $(this).val() == 'common=30' ) { // 기타
 				if ( $("#authorDiv").children().length == 0 ) {
 					alert("기타권한을 부여해주세요.");
 					conectAuthorChk = true;
 				}
 			}
 		});
 		
 		// 그룹, 기타권한 부여여부 체크
 		if (conectAuthorChk) {
			menuInsertClickStatus = "N";
			return false;
 		}
 		
		$.ajax({
			type : "POST",
			url : "/apple/mn/menu/updateMenuInfoAjax.do",
			data : {
				menuId : menuId,
				menuNm : menuNm,
				cnncMenuId : cnncMenuId,
				useAt : useAt,
				clsdrAt : clsdrAt,
				conectAuthor : conectAuthor,
				menuTy : menuTy,
				newWinAt : newWinAt,
				rclickAt : rclickAt,
				menuUrl : menuUrl,
				cntntsId : cntntsId,
				histInsertYn : 'Y',
				sysId : sysId,
				menuAuthor : menuAuthor,
				menuGroup : menuGroup,
				tabAt : tabAt,
				upendAt : upendAt
			},
			success : function(data) {
				if ( data != 0 ) {
					if ( data == 2 ){
						alert('메뉴타입 일정안내는 하나만 생성 가능합니다.');
						loadingEnd();
						return false;
					}

					// 탭여부 체크
					var tabVisible = "";
					if ( tabAt == "Y"){
							tabVisible = "&nbsp;&nbsp;<img src='/images/ap/mn/icon_tab.png' style='width:40px'/>";
					} else {
						tabVisible = "";
					}
					
					// 사용여부 체크
					var useVisible = "";
					if ( useAt == "N"){
						useVisible = "&nbsp;&nbsp;[미사용]";
					} else {
						useVisible = "";
					}
					
					// 비공개 체크
					var clsdrVisible = "";
					if ( clsdrAt == "Y"){
						clsdrVisible = "&nbsp;&nbsp;[비공개]";
					} else {
						clsdrVisible = "";
					}

					// 상단미표시여부 체크
					var upendVisible = "";
					if ( upendAt == "Y"){
						upendVisible = "&nbsp;&nbsp;[상단미표시]";
					} else {
						upendVisible = "";
					}
					
					$("#menuId_" + menuId).attr("data-ty", tabAt);
					$("#menuId_" + menuId).find("a[data-id=" + menuId + "]").html(menuNm+""+tabVisible+""+useVisible+""+clsdrVisible+""+upendVisible);
					$("#menuId_" + menuId).find("a[data-id=" + menuId + "]").attr("data-nm", menuNm);
					
					alertMsg('메뉴 수정', '메뉴 수정이 완료되었습니다.');
					$(".popClose").click();
					
				} else {
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");	
				}
				
				//로딩
				loadingEnd();
			},
			error : function(data) {
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}
		});		
	}

	// 메뉴 삭제 버튼 클릭
	function menuDeleteAction() {
		var sysId = $("#sysId").val();
		
		if (sysId == null || sysId == "") {
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
		var childMenuIdArr = "";
		if (menuLevel == "1") {
			childLength = $("#menuUl > #menuId_" + menuId).find("li").length;
			$("#menuUl > #menuId_" + menuId).find("li").forEach(function (el, index) {
				childMenuIdArr = el.id + ",";
			})
		} else if (menuLevel == "2") {
			childLength = $("#menuId_" + menuId).find("li").length;
			$("#menuId_" + menuId).find("li").forEach(function (el, index) {
				childMenuIdArr = el.id + ",";
			})
		} else {
			childLength = 0;
		}

		var delMsg = "메뉴를 삭제하시겠습니까?";
		
		if (childLength > 0) {
			delMsg += "<br/><input type='checkbox' id='subDelChk'> <b>하위 메뉴(" + childLength + "개) 삭제</b>";
		}
		
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
						if (childLength > 0) {
							if ($("#subDelChk").is(":checked") == true) {
								menuDelete(menuId);
							} else {
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
							}
						} else {
							menuDelete(menuId);
						}
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
		var sysId = $("#sysId").val();
		var menuId = id;
		var menuLevel = $("li#menuId_" + menuId).attr("data-area");
		
		//로딩
// 		loadingStart();
		
		$.ajax({
			type : "DELETE",
			dataType : "json",
			url : "/admin/mn/menu/"+menuId+"/delete",
			success : function(data) {
				if ( data.resultAt == 'Y') {
					 saveSortOrdr('N');			
					 $("li#menuId_" + menuId).remove();
// 					 alertMsg('메뉴 삭제', '삭제되었습니다.');
// 					 $(".alertClose").click();
// 					 $(".popClose").click();
						
				} else {
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");	
				}
				//로딩
// 				loadingEnd();
			},
			error : function(data) {   
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}					
		});
	};

	// 순서 저장
	function saveSortOrdr(check){
		
		if (check != "N") {
			var sysId = $("#sysId").val();
			
			if (sysId == null || sysId == "") {
				alert("홈페이지 정보를 찾을 수 없습니다.");
				return false;
			}
			
			if (check != "S") {
				if (!confirm("현재 메뉴순서를 저장하시겠습니까?")) {
					return false;
				}
			}
		}
		/* 
			listArray = [ 메뉴Id, 순서(시퀀스느낌), 상위메뉴Id; 메뉴Id, 순서(시퀀스느낌), 상위메뉴Id..... ]
		*/
		var listArray = ($('#menuUl').sortableListsToArray());
		var paramLength = $('#menuUl').sortableListsToArray().length;

		if (paramLength == 0) {
			window.menuCheck = "false";
			
			if (check != "N" || check != "S")
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
			//"", null, undefined > false 반환
			if ( listArray[i].parentId == null || !listArray[i].parentId ) {
				parentId = "N";
			} else {
				parentId = listArray[i].parentId;
			}
			
		 paramArray += parentId + ";";
		}
		var paramArray = paramArray.substring(0, paramArray.length-1);
		
		//로딩
		loadingStart();
		
	 	$.ajax({
			type : "POST",
			url : "/admin/mn/menu/sort",
			data : {
				listArray : paramArray
			},
			datatype : "json",
			success : function(result) {
				if (check != "N") {
					
					var data = result.body;
					if (check != "S") {
						alert(result.message);
						loadingEnd();
					} else {
						if ( data.resultAt == 'Y') {
							
							$.ajax({
								type : "POST",
								url : "/apple/mn/menu/updateHmpgMenu.do",
								data : {
									sysId : sysId
								},
								success : function(data) {
									alert("적용이 완료되었습니다.");
									createMenu();
									//로딩
									loadingEnd();
								},
								error : function(data) {
									alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
									//로딩
									loadingEnd();
								}
							});
						} else {
							alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
							//로딩
							loadingEnd();
						}
					}
				} else {
					alertMsg('메뉴 삭제', '삭제되었습니다.');
					 $(".alertClose").click();
					 $(".popClose").click();
					//로딩
					loadingEnd();
				}
				window.menuCheck = "false";
			},
			error : function(data) {
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				window.menuCheck = "false";
				//로딩
				loadingEnd();
			}
		});	
	 	
	};	

	// 메뉴추가클릭 상태
	menuInsertClickStatus = "N";
	
	// 메뉴 추가
	$(document).on('click', '#btnInsert', function(){
		
		if (window.menuCheck == 'true') {
			alert("메뉴 위치가 변경되었습니다.\n메뉴 상태를 저장해주세요.");
			return false;
		}
		
		var sysId = $("#sysId").val();
		
		if (sysId == null || sysId == "") {
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
				sysId : sysId
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
								};

								$("form[name='menuInsertForm'] input[name='sysId']").val(sysId);

								$.ajax({
									type : "post",
									url : "/admin/mn/menu",
									dataType : "json",
									data : $("form[name='menuInsertForm']").serialize(),
									success : function(data) {
										var resultData = data.body;
										
										if (data.status == 'success' ) {
											
											var addMenuLevel = resultData.menuLevel;
											var addMenuId = resultData.menuId;
											var addMenuNm = resultData.menuNm;
											var sameMenuCheck = resultData.sameMenuCheck;
											var addUpperMenuId = null;
											var addText = "";
											
											//사용 여부
											var useAt = "";
											var useVisible = "";
											if ( resultData.useAt != "" ) {
												   useAt = resultData.useAt;
												   if ( useAt == "N" ) {
													 	useVisible= "&nbsp;[미사용]";
													 	
												  } else {
													 useVisible = "";
												 }
												   
											} else {
												useAt = "Y";
												useVisible = "";
											}
											
											addText += "<li id='menuId_" + addMenuId + "' data-area='" + addMenuLevel + "'>";
											addText += "<div>";
											addText += "<button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp<button class='btnmnSt2 menuDetail clickAble' type='button' data-id='" + addMenuId + "' data-nm='" + addMenuNm + "' >상세정보</button>&nbsp;&nbsp;";
											addText += "<a class='menuDetail clickAble' href='#' data-id='" + addMenuId + "' data-nm='" + addMenuNm + "'>" + addMenuNm +" "+useVisible+"</a>";
											addText += "</div>";
											addText += "</li>";
											
											if (addMenuLevel != "1") {
												addUpperMenuId = resultData.upperMenuId;
												
												if (addUpperMenuId == null) {
													$(".popClose").click();
													createMenu();
													return false;
												}
												
												var addUlText = "";
												addUlText = "<ul style='display: block;''>";
												
												if (sameMenuCheck == "Y") {
													$("#menuId_" + addUpperMenuId + "> ul").append(addText);
												} else {
													// 아이콘
													var addIconText = "";
													addIconText += "<span class='sortableListsOpener' style='float: left; display: inline-block; background-position: center center; background-repeat: no-repeat; width: 18px; height: 18px; margin-left: -30px; margin-right: 5px; margin-top: 10px;'><img src='/images/ap/mn/Remove.png' alt='minues'></span>";
													$("#menuId_" + addUpperMenuId).addClass("sortableListsOpen");
													$("#menuId_" + addUpperMenuId + "> div").append(addIconText);												
													
													// li (메뉴)
													addUlText += addText;
													addUlText += "</ul>";
													$("#menuId_" + addUpperMenuId).append(addUlText);
												}
											} else {
												$("#menuUl").append(addText);											
											}
											
											menuTotalCnt++;
											alert("추가되었습니다.");
											//로딩
											loadingEnd();
											menuInsertClickStatus = "N";
											
										} else {
											alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
											//로딩
											loadingEnd();
											menuInsertClickStatus = "N";
										}
										
									},
									error : function(data) {   
										alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
										//로딩
										loadingEnd();
										menuInsertClickStatus = "N";
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
	
	// 메뉴 타입 선택
	$(document).on('change', '#modMenuTy', function(){
		if($(this).val() == 'BBS'){
			$('#bbsInfoView').show();
			
			if ($("#bbsInfo").val() == "NEW") {
				$("#cdbbsTyView").css("display", "");
				$("#cdbbsTy").attr("name", "bbsTy");
			}
			
			// 컨텐츠  수정 시 , 미리보기 FORM 에 첫 vale값 설정 ( 메뉴 상세 정보 창 )
			$("input[name='bbsId']").val($("#bbsInfo").val());
			
			//$('#bbsTy').show();
			$('#menuUrl').hide();
			$('#cntntsInfoView').hide();
			//$('#modCnncMenuId').val('');
			$('#modCnncMenuId').attr('disabled', true);
			$('#modCnncMenuId').css('background-color','#e2e2e2');
		} else if ($(this).val() == 'LINK'){
			$('#menuUrl').show().attr('readonly', false);
			$('#bbsInfoView').hide();
			//$('#bbsTy').hide();
			$('#cntntsInfoView').hide();
			//$('#modCnncMenuId').val('');
			$('#modCnncMenuId').attr('disabled', true);
			$('#modCnncMenuId').css('background-color','#e2e2e2');
			$("#cdbbsTyView").css("display", "none");
		} else if($(this).val() == 'SUB'){
			// 컨텐츠  수정 시 , 미리보기 FORM 에 첫 vale값 설정 ( 메뉴 상세 정보 창 )
			$("input[name='cntntsId']").val($("#cntntsInfo").val());
			
			$('#bbsInfoView').hide();
			//$('#bbsTy').hide();
			$('#menuUrl').hide();
			$('#cntntsInfoView').show();
			//$('#modCnncMenuId').val('');
			$('#modCnncMenuId').attr('disabled', true);
			$('#modCnncMenuId').css('background-color','#e2e2e2');
			$("#cdbbsTyView").css("display", "none");
		} else if($(this).val() == 'MENU'){
			$('#menuUrl').show().attr('readonly', true);
			$('#cntntsInfoView').hide();
			$('#bbsInfoView').hide();
			//$('#bbsTy').hide();
			$('#modCnncMenuId').attr('disabled', false);
			$('#modCnncMenuId').css('background-color','#fff');
			$("#cdbbsTyView").css("display", "none");
		} else {
			$('#menuUrl').show().attr('readonly', true);
			$('#bbsInfoView').hide();
			//$('#bbsTy').hide();
			$('#cntntsInfoView').hide();
			//$('#modCnncMenuId').val('');
			$('#modCnncMenuId').attr('disabled', true);
			$('#modCnncMenuId').css('background-color','#e2e2e2');
			$("#cdbbsTyView").css("display", "none");
		}
	});
	
	// 전체보기
	$(document).on('click', '#btnAllView', function(){
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
	
	// 메뉴 이력
	$(document).on('click', '#btnMenuHist', function(){
		$("#menuInsertForm").attr("action","/apple/mh/menuhist/selectMhList.do").submit();
	});
	
	// 홈페이지 선택 (홈페이지 적용)
	$(document).on('click', '#btnMenuManageSys', function(){
		if (window.menuCheck == "true") {
			if (!confirm("메뉴 위치가 변경되었습니다.\n홈페이지 적용시 메뉴 위치도 함께 적용됩니다.\n계속하시겠습니까?")) {
				return false;
			}
		}
		
		// 필수메뉴 항목 조회
		$.ajax({
			type: "post",
			url: "/apple/mn/menu/menuEsntlTable.do",
			success: function(content) {
				
				$.confirm({
					title: '',
					content: content,
					boxWidth: '50%',
					useBootstrap: false,
		            buttons: {
		            	'confirm': {
		                    text: '확인',
							btnClass: 'btn_bl',
		                    action: function(data){
		                    	
		                    	// 홈페이지 적용
		                    	saveSortOrdr('S');
		                    	return;
		                    }
		                },
		                'close': {
		                	text: '취소',
		                	btnClass: 'btn_gr',
		                	action: function(data) {
		                		return;
		                	}
		                }
		            }
				});
			},
			error: function() {
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}
		});
	});
	
	// 메뉴생성
	function createMenu(){
		var sysId = $("#sysId").val();
		
		if (sysId == null || sysId == "") {
			alert("홈페이지 정보를 찾을 수 없습니다.");
			$("#menuUl").html("");
			return false;
		}
		
		if ($("#sortableListsBase").length > 0)
		    $(".menuUl").off(); // 해당 객체와 연관된 모든 이벤트 제거
		
		$.ajax({
			type : "POST",
			url : "/apple/mn/menu/selectMenuListAjax.do",
			data : {
				sysId : sysId
			},
			dataType : "json",
			success : function(data){
				var textView = "";
				var dataLength = data.length;
				
				// 메뉴전체 갯수
				menuTotalCnt = dataLength;
				
				for (var i = 0; i < dataLength; i++) {
					var menuLevel = data[i].menuLevel;
					var menuId = data[i].menuId;
					var menuNm = data[i].menuNm;
					var thisUpperMenuId = data[i].upperMenuId;
					
					//탭 메뉴 여부
					var tabAt = "";
					var tabVisible = "";
					if ( data[i].tabAt != "" ) {
						   tabAt = data[i].tabAt;
						   if ( tabAt == "Y" ) {
							 	tabVisible= "&nbsp;<img src='/images/ap/mn/icon_tab.png' style='width:40px'/>";
						  } else {
							 tabVisible = "";
						 }
						   
					} else {
						tabAt = "N";
						tabVisible = "";
					}
					
					//사용 여부
					var useAt = "";
					var useVisible = "";
					if ( data[i].useAt != "" ) {
						   useAt = data[i].useAt;
						   if ( useAt == "N" ) {
							 	useVisible= "&nbsp;[미사용]";
							 	
						  } else {
							 useVisible = "";
						 }
						   
					} else {
						useAt = "Y";
						useVisible = "";
					}
					
					//비공개 여부
					var clsdrAt = "";
					var clsdrVisible = "";
					if ( data[i].clsdrAt != "" ) {
						   clsdrAt = data[i].clsdrAt;
						   if ( clsdrAt == "Y" ) {
							   clsdrVisible= "&nbsp;[비공개]";
							 	
						  } else {
							  clsdrVisible = "";
						 }
						   
					} else {
						clsdrAt = "N";
						clsdrVisible = "";
					}
					

					//상단미표시 여부
					var upendAt = "";
					var upendVisible = "";
					if ( data[i].upendAt != "" ) {
							upendAt = data[i].upendAt;
						   if ( upendAt == "Y" ) {
							   upendVisible= "&nbsp;[상단미표시]";
							 	
						  } else {
							  upendVisible = "";
						 }
						   
					} else {
						upendAt = "N";
						upendVisible = "";
					}
					
					if (i > 0) {
						var prevMenuLevel = data[i-1].menuLevel;	
					}
					
					var j = i - 1;
					
					if (i == dataLength - 1) {
						var nextUpperMenuId = "";
						var nextMenuLevel = "";
					} else {
						var nextUpperMenuId = data[i + 1].upperMenuId;
						var nextMenuLevel = data[i + 1].menuLevel;
					}
					
					if (menuLevel == "1") {						
						textView += "<li id='menuId_" + menuId + "' data-area=" + menuLevel + " data-ty="+ tabAt + " >";
						textView += "	<div><button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp;<button class='btnmnSt2 menuDetail clickAble' type='button' data-id='" + menuId + "' data-nm='" + menuNm + "'>상세정보</button>&nbsp;&nbsp;<a class='menuDetail clickAble' href='#' data-id='" + menuId + "' data-nm='" + menuNm + "'>" + menuNm + " "+ tabVisible+ " "+ useVisible+ " "+ clsdrVisible+ " "+ upendVisible+"</a></div>";
						
						if (menuId != nextUpperMenuId) {
							textView += "</li>";
						}
					} else if (menuLevel == "2") {
						if (menuLevel != prevMenuLevel && menuLevel > prevMenuLevel) {
							textView += "<ul style='display: none;'>";
						}						
						
						textView += "	<li id='menuId_" + menuId + "' data-area=" + menuLevel + " data-ty="+ tabAt + ">";
						textView += "		<div><button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp;<button class='btnmnSt2 menuDetail clickAble' type='button' data-id='" + menuId + "' data-nm='" + menuNm + "'>상세정보</button>&nbsp;&nbsp;<a class='menuDetail clickAble' href='#' data-id='" + menuId + "' data-nm='" + menuNm + "'>" + menuNm + " "+ tabVisible+ " "+ useVisible+ " "+ clsdrVisible+ " "+ upendVisible+"</a></div>";
						
						if (menuId != nextUpperMenuId) {
							textView += "		</li>";
							
							if (menuLevel > nextMenuLevel && nextMenuLevel == 1) {
								textView += "	</ul>";
							}							
							
							if (thisUpperMenuId != nextUpperMenuId) {
								textView += "</li>";
							}
						}
					} else if (menuLevel == "3") {
						if (menuLevel != prevMenuLevel && menuLevel > prevMenuLevel) {
							textView += "			<ul style='display: none;'>";
						}
						
						textView += "				<li id='menuId_" + menuId + "' data-area=" + menuLevel + " data-ty="+ tabAt + " >";
						textView += "					<div><button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp;<button class='btnmnSt2 menuDetail clickAble' type='button' data-id='" + menuId + "' data-nm='" + menuNm + "'>상세정보</button>&nbsp;&nbsp;<a class='menuDetail clickAble' href='#' id='menuNm' data-id='" + menuId + "' data-nm='" + menuNm + "'>" + menuNm + " "+ tabVisible+ " "+ useVisible+ " "+ clsdrVisible+ " "+ upendVisible+"</a></div>";
						
						// 현재 메뉴가 다음 메뉴의 상위메뉴가 아닐 경우 닫는다.
						if ( menuId != nextUpperMenuId ) {
							textView +="		</li>";
							
							// 다음 메뉴가 1차, 2차 인경우
							if ( menuLevel > nextMenuLevel ) {
								if ( nextMenuLevel == 0 ||  nextMenuLevel == 1 ) {
									 textView +="	</ul>";	
									 textView +="	 </li>";	
									 textView +="	  </ul>";
									 
								} else {
									textView +="	</ul>";
								}
							}							
							
							// 현재 메뉴의 상위 메뉴와 다음 메뉴의 상위 메뉴가 다를 때 닫는다.
							if ( thisUpperMenuId != nextUpperMenuId ) {
								textView +=" </li>";
							}
						} 
						
					} else if ( menuLevel == 4 && tabAt == "Y" ) {
						
						// 이전 메뉴의 하위 메뉴 일 때 ul 생성 
						if (menuLevel != prevMenuLevel && menuLevel > prevMenuLevel) {
							textView +="			<ul style='display: none;'>";
						}
						
						textView +="<li id='menuId_" + menuId + "' data-area=" + menuLevel + " data-ty="+ tabAt +" >";
						textView +="<div><button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp;<button class='btnmnSt2 menuDetail clickAble' type='button' data-id='" + menuId + "' data-nm='" + menuNm + "'>상세정보</button>&nbsp;&nbsp;<a class='menuDetail clickAble' href='#' id='menuNm' data-id='" + menuId + "' data-nm='" + menuNm + "'>" + menuNm + " " + tabVisible+ " "+ useVisible+ " "+ clsdrVisible+ " "+ upendVisible+"</a></div>";
						
						// 현재 메뉴가 다음 메뉴의 상위메뉴가 아닐 경우 닫는다.
						if ( menuId != nextUpperMenuId ) {
							textView +="		</li>";
							
							// 다음 메뉴가 1차, 2차, 3차 인경우   
							if (menuLevel > nextMenuLevel) {
								if ( nextMenuLevel == 0 || nextMenuLevel == 1 ) { 
									textView +="	</ul>";
									textView +="	 </li>";	
									textView +="	  </ul>";
									textView +="	   </li>";	
									textView +="	    </ul>";
									 
								} else if ( nextMenuLevel == 2 ) {
									textView +="	</ul>";
									textView +="	 </li>";	
									textView +="	  </ul>";
									
								} else {
									textView +="	</ul>";
								}
							}							
							
							// 현재 메뉴의 상위 메뉴와 다음 메뉴의 상위 메뉴가 다를 때 닫는다.
							if ( thisUpperMenuId != nextUpperMenuId ) {
								 textView +="</li>";
							}
						} 
						
					} else if ( menuLevel == 5 && tabAt == "Y" ) {
						
						// 이전 메뉴의 하위 메뉴 일 때 ul 생성 
						if (menuLevel != prevMenuLevel && menuLevel > prevMenuLevel) {
							textView +="			<ul style='display: none;'>";
						}
						
						textView +="<li id='menuId_" + menuId + "' data-area=" + menuLevel + " data-ty="+ tabAt +" >";
						textView +="	<div><button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp;<button class='btnmnSt2 menuDetail clickAble' type='button' data-id='" + menuId + "' data-nm='" + menuNm + "'>상세정보</button>&nbsp;&nbsp;<a class='menuDetail clickAble' href='#' id='menuNm' data-id='" + menuId + "' data-nm='" + menuNm + "'>" + menuNm + " " + tabVisible+ " "+ useVisible+ " "+ clsdrVisible+ " "+ upendVisible+"</a></div>";
						textView +="</li>";
							
						if (menuLevel > nextMenuLevel) {
							textView +="			</ul>";
						}
						
						if (thisUpperMenuId != nextUpperMenuId) {
							textView +="		</li>";
							
							if (menuLevel > nextMenuLevel ) {
									 	 
								 if ( nextMenuLevel == 0 || nextMenuLevel == 1 ) {
									  textView +="	</ul>";
							 		  textView +="	 </li>";
									  textView +="	  </ul>";
									  textView +="	   </li>";	
									  textView +="	    </ul>";
									  textView +="	   	 </li>";
									  
								 } else if ( nextMenuLevel == 2 ) {
									 textView +="	</ul>";
									 textView +="	 </li>";	
									 textView +="	  </ul>";
									 textView +="	   </li>";	
									 
								 } else if (nextMenuLevel == 3 ) {
									 textView +="	  </ul>";
									 textView +="	   </li>";	
									 
								 } else {
									 textView +="	";
								 }
							}
						}
					}
					
					
					
					
				}
				
				$("#btnDiv").css("display", "block");
				$("#menuUl").html(textView);
				$(".menuUl").sortableLists(options);
			},
			error : function(data){
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}			
		});
	}
	
	// 목록
	$(document).on("click", "#btnBack", function(){
		if (!confirm("메뉴목록으로 돌아가시겠습니까?"))
			return false;
		
		location.href = "/apple/mn/menu/selectMenuList.do?mi="+$("#backMi").val();
	});
	
	// 메뉴 추가 - 게시판 - 메뉴링크
	$(document).on('change', '#bbsInfoView', function(){
		var selectBbs = $("#bbsInfo").val();
		
		if (selectBbs == "NEW") {
			$("#cdbbsTyView").css("display", "");
			/* $("#cdbbsTy").attr("name", "bbsTy"); */
			$("#cdbbsTyView").children().remove();
			var textView = "";
			
				// 게시판 hidden
				textView += "<select id='cdbbsTy' name='bbsTy'>";
				textView += "<option value='NORMAL'>일반게시판(자료탑재형)</option>";
				textView += "<option value='PIC'>사진게시판(사진)</option>";
				textView += "<option value='GAL'>갤러리게시판(사진+내용요약)</option>";
				textView += "<option value='VOD'>동영상게시판(동영상탑재형)</option>";
				textView += "<option value='FAQ'>FAQ 게시판</option>";
				textView += "<option value='CVPL'>민원게시판</option></select>";
				textView += "<input type='hidden' name='bbsPrpos' value='HOMEPAGE' />";
				textView += "<input type='hidden' name='columnNmNo' value='번호' />";
				textView += "<input type='hidden' name='columnNmCo' value='조회수' />";
				textView += "<input type='hidden' name='columnNmRegNm' value='작성자' />";
				textView += "<input type='hidden' name='columnNmRegDt' value='작성일' />";
				textView += "<input type='hidden' name='searchPage' value='0' />";
				textView += "<input type='hidden' name='indvdlinfoColctAgreUseAt' value='N' />";
				textView += "<input type='hidden' name='infoProvdAgreUseAt' value='N' />";
				textView += "<input type='hidden' name='flterUseAt' value='N' />";
				textView += "<input type='hidden' name='smsUseAt' value='N' />";
				textView += "<input type='hidden' name='emailUseAt' value='N' />";
				textView += "<input type='hidden' name='ownerListUseAt' value='N' />";
				textView += "<input type='hidden' name='nttCnEssntlAt' value='N' />";
				
				
				textView += "<input type='hidden' name='answerTy' value='N' />";
				textView += "<input type='hidden' name='replyAt' value='N' />";
				textView += "<input type='hidden' name='cvplAt' value='N' />";
				textView += "<input type='hidden' name='prfaceUseAt' value='N' />";
				textView += "<input type='hidden' name='annymtyUseAt' value='N' />";
				textView += "<input type='hidden' name='clsdrUseAt' value='N' />";
				
				// 게시판 기본 설정
				textView += "<input type='hidden' name='pageNttCo' value='10' />";
				textView += "<input type='hidden' name='secretUseAt' value='Y' />";
				textView += "<input type='hidden' name='fileMxmCo' value='10' />";
				textView += "<input type='hidden' name='editrUseAt' value='N' />";
				textView += "<input type='hidden' name='sttusUseAt' value='N' />";
				textView += "<input type='hidden' name='newNttNtcnHour' value='24' />";
				textView += "<input type='hidden' name='listFileDwldAt' value='N' />";
				textView += "<input type='hidden' name='fileLmttSize' value='10' />";
				textView += "<input type='hidden' name='confmUseAt' value='N' />";
				textView += "<input type='hidden' name='stsfdgUseAt' value='N' />";
				textView += "<input type='hidden' name='noticeAt' value='N' />";
				textView += "<input type='hidden' name='registPdUseAt' value='N' />";
				
				// 게시판 권한
				textView += "<input type='hidden' name='writAuthor' value='common=1' />";
				textView += "<input type='hidden' name='readngAuthor' value='common=0' />";
				textView += "<input type='hidden' name='answerAuthor' value='common=1' />";
				textView += "<input type='hidden' name='prntngAuthor' value='common=0' />";
			/* $("#cdbbsTy").after(textView); */
			$("#cdbbsTyView").append(textView);
		} else {
			if ($("#cdbbsTy").length > 0) {
				//$("#cdbbsTy").remove();
				$("#cdbbsTyView").css("display", "none");
				$("#cdbbsTy").removeAttr("name");
			}
		}
	});
});

function alertMsg(title, msg) {
	$.alert({
		title : '<h3 class="tit1">' + title +'<h3>',
		boxWidth : '250px',
		useBootstrap : false,
		content : msg,
		buttons : {
			alert : {
				text : '확인',
				btnClass : 'btn-default',
			}
		}
	});
}

</script>