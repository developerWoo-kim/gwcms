<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style type="text/css">
.select2-drop { z-index:99999999; }
</style>

<input type="hidden" name="menuLevel" value="">
<input type="hidden" id="popMenuId" value="<c:out value="${menuInfo.menuId}"/>"/>
<input type="hidden" id="popMenuLevel" value="<c:out value="${menuInfo.menuLevel}"/>"/>
<input type="hidden" id="currentMenuLevel" value="<c:out value="${currentMenuLevel}"/>"/>
<input type="hidden" id="popUnderMenuCnt" value="<c:out value="${underMenuCnt}"/>"/>

<form id="menuPreForm" name="menuPreForm" method="POST">
	<input type="hidden" name="systemId" value="<c:out value="${systemId}"/>">
	<input type="hidden" name="menuId" value="<c:out value="${menuInfo.menuId}"/>">
</form>


<form id="menuUpdateForm" name="menuUpdateForm">
	<input type="hidden" name="menuId" value="<c:out value='${menuInfo.menuId}'/>">
	<input type="hidden" name="contentId" value="<c:out value='${menuInfo.contentId}'/>">

	<div class="bbs_WriteA">
		<table class="basic_tb">
			<caption>메뉴 상세정보</caption>
			<colgroup>
				<col style="width: 20%">
				<col style="width: 80%">
			</colgroup>
			<tbody>
				<tr>
					<th><label for="menuName"><span class="pc_red">＊</span>메뉴명</label></th>
					<td><input type="text" id="menuName" name="menuName" class="col-sm-12" value="<c:out value="${menuInfo.menuName}"/>" maxlength="30"></td>
				</tr>
				<tr>
					<th><label for="connectMenuId">연결 메뉴</label></th>
					<td>
						<span class="col-sm-12 form-select">
							<select name="connectMenuId" id="connectMenuId" title="연결 메뉴 선택" <c:if test="${menuInfo.menuType ne 'MENU'}">disabled="disabled" style="background-color:#e2e2e2;"</c:if>>
								<option value="" title="미사용">미사용</option>
								<c:forEach var="cnncMenuList" items="${upperMenuList}" varStatus="status">
									<option value="<c:out value="${cnncMenuList.menuId}"/>" title="<c:out value="${cnncMenuList.menuName}"/>" <c:if test="${cnncMenuList.menuId eq menuInfo.connectMenuId && menuInfo.menuType eq 'MENU'}">selected="selected"</c:if>>
										[<c:out value="${cnncMenuList.menuLevel}"/>]<c:out value="${cnncMenuList.menuNavi}"/>
									</option>
								</c:forEach>
							</select>
						</span>
						<p><span class="pc_red">＊</span>메뉴 클릭시 연결 메뉴에서 선택한 메뉴를 보여줍니다.</p>
						<p><span class="pc_red">사용시 연결메뉴의 접근권한이 적용됩니다.</span></p>
					</td>
				</tr>
				<tr>
					<th><span class="pc_red">＊</span>사용여부</th>
					<td>
						<ul class="custom-input">
							<li><input type="radio" id="useAt1" name="useAt" value="Y" <c:if test="${menuInfo.useAt eq 'Y'}">checked="checked"</c:if>><label for="useAt1">사용</label></li>
							<li><input type="radio" id="useAt2" name="useAt" value="N" <c:if test="${menuInfo.useAt eq 'N'}">checked="checked"</c:if>><label for="useAt2">미사용</label></li>
						</ul>
					</td>
				</tr>
				<tr>
					<th><span class="pc_red">＊</span>접근권한</th>
					<td>
						<span class="fl authorText" style="padding-top: 0.5rem;"></span>
						<button class="fr btn_whL mini" type="button" id="BtnConectAuthor">설정</button>
						<button class="fr btn_gr mini" style="display:none;" type="button" id="BtnCancleAuthor">닫기</button>
					</td>
				</tr>
				<tr id="authorDtrmn" style="display:none">
					<td colspan="2" style="padding: 0;">
						<div class="box_st1">
							<ul class="custom-input">
								<c:forEach var="author" items="${authorList}" varStatus="status">
									<li>
										<input type="checkbox" id="insConectAuthor<c:out value='${status.count}'/>" name="menuAuthor" value="<c:out value="${author.authorGroupId}"/>"
<%--											   <c:if test="${fn:indexOf(menuInfo.menuAuthor, author.authorId) > -1}">checked="checked"</c:if>--%>
												<c:forEach var="menuAuthorGroup" items="${menuInfo.authorGroupList}">
													<c:if test="${menuAuthorGroup.authorGroup.authorGroupId eq author.authorGroupId}">checked="checked"</c:if>
												</c:forEach>/>
										<label for="insConectAuthor<c:out value="${status.count}"/>"><c:out value="${author.authorGroupName}"/></label>
									</li>
								</c:forEach>
							</ul>
						</div>
					</td>
				</tr>
				<tr>
					<th><span class="pc_red">＊</span>새창여부</th>
					<td>
						<ul class="custom-input">
							<li><input type="radio" id="newWinAt1" name="newWindowAt" value="Y" <c:if test="${menuInfo.newWindowAt eq 'Y'}">checked="checked"</c:if>><label for="newWinAt1">새창</label></li>
							<li><input type="radio" id="newWinAt2" name="newWindowAt" value="N" <c:if test="${menuInfo.newWindowAt eq 'N'}">checked="checked"</c:if>><label for="newWinAt2">현재창</label></li>
						</ul>
					</td>
				</tr>
				<tr>
					<th><span class="pc_red">＊</span>메뉴타입</th>
					<td>
						<span class="col-sm-9 form-select">
							<select name="menuType" id="menuType" title="메뉴 타입 선택">
							<c:forEach var="menuType" items="${menuTyList}">
								<option value="<c:out value="${menuType.id.commonDetailCode}"/>" title="<c:out value="${menuType.commonDetailCodeName}"/>" <c:if test="${menuInfo.menuType eq menuType.id.commonDetailCode}">selected="selected"</c:if>>
									<c:out value="${menuType.commonDetailCodeName}"/>
								</option>
							</c:forEach>
							</select>
						</span>
						<a href="javascript:" class="btn_whL mini" id="btnPreView">미리보기</a>
					</td>
				</tr>
				<tr>
					<th>메뉴링크</th>
					<td>
						<input type="text" id="menuUrl" name="menuUrl" class="col-sm-12"
						value="<c:out value="${menuInfo.menuUrl}"/>"
						<c:if test="${menuInfo.menuType ne 'LINK' && menuInfo.menuType ne 'BOARD' && menuInfo.menuType ne 'CONTENT'}">readonly="readonly"</c:if>
						<c:if test="${menuInfo.menuType eq 'BOARD' || menuInfo.menuType eq 'CONTENT'}">style="display:none;"</c:if>
						maxlength="400"/>
						<span class="col-sm-12 form-select" id="bbsInfoView" <c:if test="${menuInfo.menuType ne 'BOARD'}">style="display:none;"</c:if>>
							<select name="boardId" id="boardId">
								<c:forEach items="${boardList}" var="bbsList" varStatus="status">
									<option value="<c:out value="${bbsList.boardId}"/>" <c:if test="${menuInfo.menuType eq 'BOARD' && menuInfo.contentId eq bbsList.boardId}">selected="selected"</c:if>><c:out value="${bbsList.boardName}[${bbsList.boardId}]"/></option>
								</c:forEach>
							</select>
						</span>
						<span class="col-sm-12 form-select" id="cntntsInfoView" <c:if test="${menuInfo.menuType ne 'CONTENT'}">style="display:none;"</c:if>>
							<select name="contentId" id="cntntsInfo">
								<c:forEach items="${cntntsList}" var="cntntsList" varStatus="status">
									<option value="<c:out value="${cntntsList.cntntsId}"/>" <c:if test="${menuInfo.menuType eq 'CONTENT' && menuInfo.cntntsId eq cntntsList.cntntsId}">selected="selected"</c:if>><c:out value="${cntntsList.cntntsNm}[${cntntsList.cntntsId}]"/></option>
								</c:forEach>
							</select>
						</span>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</form>

<script type="text/javascript">
	$(document).ready(function() {
		setAuthorText();
		/** 접근권한 체크 */
		$("input[name='menuAuthor']").change(function(){
			// 접근 권한 텍스트 세팅
			setAuthorText();
		});
		/** 권한 설정 버튼 */
		$("#BtnConectAuthor").click(function(){
			$("#authorDtrmn").css("display", "");
			$("#BtnCancleAuthor").css("display", "");
			$("#BtnConectAuthor").css("display", "none");
		});
		/** 권한 취소 버튼 */
		$("#BtnCancleAuthor").click(function(){
			$("#authorDtrmn").css("display", "none");
			$("#BtnCancleAuthor").css("display", "none");
			$("#BtnConectAuthor").css("display", "");
		});

		/** 메뉴 타입 선택 */
		$("#menuType").on("change", function(){
			if($(this).val() == 'BOARD'){
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
				//$('#connectMenuId').val('');
				$('#connectMenuId').attr('disabled', true);
				$('#connectMenuId').css('background-color','#e2e2e2');
			} else if ($(this).val() == 'LINK'){
				$('#menuUrl').show().attr('readonly', false);
				$('#bbsInfoView').hide();
				//$('#bbsTy').hide();
				$('#cntntsInfoView').hide();
				//$('#connectMenuId').val('');
				$('#connectMenuId').attr('disabled', true);
				$('#connectMenuId').css('background-color','#e2e2e2');
				$("#cdbbsTyView").css("display", "none");
			} else if($(this).val() == 'SUB'){
				// 컨텐츠  수정 시 , 미리보기 FORM 에 첫 vale값 설정 ( 메뉴 상세 정보 창 )
				$("input[name='cntntsId']").val($("#cntntsInfo").val());

				$('#bbsInfoView').hide();
				//$('#bbsTy').hide();
				$('#menuUrl').hide();
				$('#cntntsInfoView').show();
				//$('#connectMenuId').val('');
				$('#connectMenuId').attr('disabled', true);
				$('#connectMenuId').css('background-color','#e2e2e2');
				$("#cdbbsTyView").css("display", "none");
			} else if($(this).val() == 'MENU'){
				$('#menuUrl').show().attr('readonly', true);
				$('#cntntsInfoView').hide();
				$('#bbsInfoView').hide();
				//$('#bbsTy').hide();
				$('#connectMenuId').attr('disabled', false);
				$('#connectMenuId').css('background-color','#fff');
				$("#cdbbsTyView").css("display", "none");
			} else {
				$('#menuUrl').show().attr('readonly', true);
				$('#bbsInfoView').hide();
				//$('#bbsTy').hide();
				$('#cntntsInfoView').hide();
				//$('#connectMenuId').val('');
				$('#connectMenuId').attr('disabled', true);
				$('#connectMenuId').css('background-color','#e2e2e2');
				$("#cdbbsTyView").css("display", "none");
			}
		});

	});

	/** 접근 권한 텍스트 세팅 */
	function setAuthorText() {
		$(".authorText").text("");
		var authorCheck = false;
		$('input[name="menuAuthor"]').each(function (index) {
			if($(this).is(":checked")) {
				authorCheck = true;
			}
		});

		if(authorCheck) {
			$('input[name="menuAuthor"]:checked').each(function (index) {
				var inputIdVal = $(this).attr("id");
				var labelVal = $("label[for='" + inputIdVal + "']").text();

				$(".authorText").append(labelVal + "&nbsp;&nbsp;&nbsp;")
			});
		} else {
			$(".authorText").append("전체");
		}
	}

	$(function(){
		/** 메뉴 타입 변경 시*/
		/** 게시판 변경 시*/
		$("select[name='boardId']").change(function(){
			var boardId = $(this).val();
			$("input[name='contentId']").val(boardId);
		});

		/** 컨텐츠(SUB) 변경 시*/
		$("select[name='cntntsInfo']").change(function(){
			var cntntsId = $(this).val();
			$("input[name='cntntsId']").val(cntntsId);
		});
	});

function selectDetailAuthor(val) {
 	var systemId = $("input[name='systemId']").val();
	var authorCode = val;

	if (systemId == "" || authorCode == "") {
		alert("잘못된 접근입니다.");
		return false;
	}

	$.ajax({
		type : "post",
		url : "/apple/mn/menu/selectMenuAuthorDetail.do",
		data : {
			systemId : systemId,
			authorCode : authorCode
		},
		success : function(data){
			$.confirm({
				title : '<h3 class="tit1">권한 정보<h3>',
				boxWidth : '250px',
				useBootstrap : false,
				content : data,
				buttons : {
					confirm : {
						text : '회수',
						btnClass : 'btn-red btnDelete',
						action : function () {
							var optVal = $("#auth" + val).attr("data-val");
							var optTxt = $("#auth" + val).text();
							var authOpt = "<option value='" + optVal + "'>" + optTxt + "</option>";
							$("#selAuthorList").append(authOpt);
							$("#auth" + val).remove();
				        }
					},
					close : {
						text: '닫기',
						btnClass: 'btn-dark popClose'
					}
				}
			});
		},
		error : function(data){
			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}
	});
}

function selectDetailGroup(val) {

	var systemId = $("input[name='systemId']").val();
	var groupCode = val;

	if (systemId == "" || groupCode == "") {
		alert("잘못된 접근입니다.");
		return false;
	}

	$.ajax({
		type : "post",
		url : "/apple/mn/menu/selectMenuGroupDetail.do",
		data : {
			systemId : systemId,
			groupCode : groupCode
		},
		success : function(data){
			$.confirm({
				title : '<h3 class="tit1">그룹 정보<h3>',
				boxWidth : '250px',
				useBootstrap : false,
				content : data,
				buttons : {
					confirm : {
						text : '회수',
						btnClass : 'btn-red btnDelete',
						action : function () {
							var groupVal = $("#group" + val).attr("data-val");
							var groupTxt = $("#group" + val).text();
							var groupOpt = "<option value='" + groupVal + "'>" + groupTxt + "</option>";
							$("#selgroupList").append(groupOpt);
							$("#group" + val).remove();
				        }
					},
					close : {
						text: '닫기',
						btnClass: 'btn-dark popClose'
					}
				}
			});
		},
		error : function(data){
			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}
	});
}
</script>