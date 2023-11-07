<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
.select2-drop { z-index:99999999; }
</style>

<form name="menuInsertForm">
	<input type="hidden" name="systemId" value="">
	<input type="hidden" name="menuLevel" value="">
	<input type="hidden" name="menuGroup" value="">
	<input type="hidden" name="contentId">
	<input type="hidden" name="contentAt">
	<div class="tbl_st_row al">
		<table>
			<colgroup>
				<col style="width:20%">
				<col style="width:80%">
			</colgroup>
			<tbody>
				<tr>
					<th scope="row"><label for="menuName"><span class="pc_red">＊</span>메뉴명</label></th>
					<td><input type="text" name="menuName" id="menuName" class="col-sm-12" value="" maxlength="30"></td>
				</tr>
				<tr>
					<th scope="row"><label for="upperMenuId">상위 메뉴</label></th>
					<td>
						<span class="col-sm-12 form-select"><select id="upperMenuId" name="upperMenuId" title="상위 메뉴 선택">
							<option value="" data-level="N" title="미사용" selected="selected">미사용</option>
							<c:forEach var="upperMenuList" items="${upperMenuList}" varStatus="status">
								<option value="<c:out value="${upperMenuList.menuId}"/>" data-level="<c:out value="${upperMenuList.menuLevel}"/>"
										title="<c:out value="${upperMenuList.menuName}"/>">[<c:out value="${upperMenuList.menuLevel}"/>]<c:out value="${upperMenuList.menuNavi}"/></option>
							</c:forEach>
						</select></span>
						<p><span class="pc_red">＊</span>생성할 메뉴의 부모 메뉴를 의미합니다.</p>
					</td>
				</tr>		
				<tr>
					<th scope="row"><label for="cnncMenuId">연결 메뉴</label></th>
					<td>
						<span class="col-sm-12 form-select"><select id="cnncMenuId" name="cnncMenuId" title="연결 메뉴 선택">
							<option value="" data-level="N" title="미사용" selected="selected">미사용</option>
							<c:forEach var="cnncMenuList" items="${upperMenuList}" varStatus="status">
								<option value="<c:out value="${cnncMenuList.menuId}"/>" data-level="<c:out value="${cnncMenuList.menuLevel}"/>" title="<c:out value="${cnncMenuList.menuName}"/>">[<c:out value="${cnncMenuList.menuLevel}"/>]<c:out value="${cnncMenuList.menuNavi}"/></option>
							</c:forEach>
						</select></span>
						<p><span class="pc_red">＊</span>메뉴 클릭시 연결 메뉴에서 선택한 메뉴를 보여줍니다.</p>
						<p><span class="pc_red">사용시 연결메뉴의 접근권한이 적용됩니다.</span></p>
					</td>
				</tr>
				<tr>
					<th scope="row"><span class="pc_red">＊</span>사용여부</th>
					<td>
						<ul class="custom-input">
							<li><input type="radio" name="useAt" id="useAt001" value="Y" checked="checked"><label for="useAt001">사용</label></li>
							<li><input type="radio" name="useAt" id="useAt002" value="N"><label for="useAt002">미사용</label></li>
						</ul>
					</td>
				</tr>
				<tr>
					<th scope="row"><span class="pc_red">＊</span>접근권한</th>
					<td>
						<span class="fl authorText" style="padding-top: 0.5rem;">전체</span>
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
										<input type="checkbox" id="insConectAuthor<c:out value='${status.count}'/>" name="menuAuthor" value="<c:out value="${author.authorGroupId}"/>" />
										<label for="insConectAuthor<c:out value="${status.count}"/>"><c:out value="${author.authorGroupName}"/></label>
									</li>
								</c:forEach>
							</ul>
						</div>
<%--
							===== 추후 추가 개발 예정 ======
							<div class="box_st1" id="authorEtcForm" style="display:none">--%>
<%--							<!-- 권한&nbsp;&nbsp; -->--%>
<%--							<select id="selAuthorList" title="권한을 선택해주세요">--%>
<%--								<option value="">권한 선택</option>--%>
<%--								<c:forEach var="au" items="${authorList}" varStatus="status">--%>
<%--									<option value="<c:out value="${au.authorSeq}"/>" title="<c:out value="${au.authorNm}"/>"><c:out value="${au.authorNm}"/></option>--%>
<%--								</c:forEach>--%>
<%--							</select>--%>
<%--							<button class="btn_blL mini" id="btnAddAuthor" type="button">부여</button>--%>
<%--							<!-- 권한 목록 -->--%>
<%--							<div class="box_st1" id="authorDiv" style="height: 70px; overflow-y: scroll;"></div>--%>
<%--						</div>--%>
<%--						<div class="box_st1" id="authorGroupForm" style="display:none">--%>
<%--							<!-- 그룹&nbsp;&nbsp; -->--%>
<%--							<select id="selgroupList" title="그룹을 선택해주세요">--%>
<%--								<option value="">그룹 선택</option>--%>
<%--								<c:forEach var="gr" items="${groupList}" varStatus="status">--%>
<%--									<option value="<c:out value="${gr.authorSeq}"/>" title="<c:out value="${gr.authorNm}"/>"><c:out value="${gr.authorNm}"/></option>--%>
<%--								</c:forEach>--%>
<%--							</select>--%>
<%--							<button class="btn_blL mini" id="btnAddGroup" type="button">부여</button>--%>
<%--							<!-- 그룹 목록 -->--%>
<%--							<div class="box_st1" id="groupDiv" style="height: 70px; overflow-y: scroll;"></div>--%>
<%--						</div>--%>
					</td>
				</tr>
				<tr>
					<th scope="row"><span class="pc_red">＊</span>새창여부</th>
					<td>
						<ul class="custom-input">
							<li><input type="radio" name="newWinAt" id="newWinAt001" value="Y"><label for="newWinAt001">새창</label></li>
							<li><input type="radio" name="newWinAt" id="newWinAt002" value="N" checked="checked"><label for="newWinAt002">현재창</label></li>
						</ul>
					</td>
				</tr>
				<tr>
					<th scope="row"><span class="pc_red">＊</span>메뉴타입</th>
					<td>
						<span class="col-sm-12 form-select"><select name="menuType" id="modMenuTy" title="메뉴 타입 선택">
							<c:forEach var="cdTy" items="${menuTyList}">
								<option value="<c:out value="${cdTy.id.commonDetailCode}"/>" title="<c:out value="${cdTy.commonDetailCodeName}"/>" <c:if test="${menuInfo.menuType eq cdTy.id.commonDetailCode}">selected="selected"</c:if>><c:out value="${cdTy.commonDetailCodeName}"/></option>
							</c:forEach>
						</select></span>
					</td>
				</tr>
				<tr>
					<th scope="row">메뉴링크</th>
					<td>
						<input type="text" id="menuUrl" name="menuUrl" class="col-sm-12" value="#" readonly="" maxlength="400">
						<span class="col-sm-12 form-select" id="bbsInfoView" style="display: none;">
							<select name="boardId" id="boardId">
								<option value="">게시판 선택</option>
								<c:forEach items="${boardList}" var="board" varStatus="status">
									<option value="<c:out value="${board.boardId}"/>"><c:out value="${board.boardName}[${board.boardId}]"/></option>
								</c:forEach>
							</select>
						</span>
						<span class="col-sm-12 form-select" id="cdbbsTyView" style="display: none;">										
							<select id="cdbbsTy">
								<c:forEach items="${cdBbsType}" var="cdBbsTy">
									<option value="<c:out value="${cdBbsTy.commonDetailCode}"/>"><c:out value="${cdBbsTy.commonDetailCodeName}"/></option>
								</c:forEach>					
							</select>
						</span>
						<span class="col-sm-12 form-select" id="cntntsInfoView" style="display: none;">					
							<select name="cntntsInfo" id="cntntsInfo">
								<option value="">콘텐츠 선택</option>
								<option value="NEW">[신규 콘텐츠]</option>
								<c:forEach items="${cntntsList}" var="cntntsList" varStatus="status">
									<option value="<c:out value="${cntntsList.cntntsId}"/>"><c:out value="${cntntsList.cntntsNm}[${cntntsList.cntntsId}]"/></option>
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
	var chk = $("input[name='conectAuthor']:checked").val();
	var notChk = $('[name="conectAuthor"]:not(:checked)');

	//전체 체크되어있을경우 : 그외 disable 처리
	if ($("#conectTotal").is(":checked")) {
		notChk.prop("checked", false);
		notChk.prop("disabled", true);
	} else {
		notChk.prop("disabled", false);

		if (chk!="common=0" && chk!=null) {
			$("#conectTotal").prop("checked", false);
			$("#conectTotal").prop("disabled", true);
		} else {
			$("#conectTotal").prop("disabled", false);
		}
	}

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

	// 메뉴 타입 선택
	$("#modMenuTy").on("change", function(){
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
});

$(function(){

	/** 비공개 사용여부  변경 체크 */
	$("input[name='clsdrAt']").change(function(){
		//비공개 선택
		var clsdrChk = $("input[name='clsdrAt']:checked").val();
		var chk = $("input[name='conectAuthor']:checked").val();
		if (clsdrChk == "Y") {
			//접근권한 목록 열기
			$("#authorDtrmn").css("display", "");
			//접근권한 전체 체크 불가능하게 막음
			alert("비공개 사용시 접근권한에 전체 설정이 불가능합니다.");
			$("input[name='conectAuthor']").prop("disabled", false);
			$("#conectTotal").prop("checked", false);
			$("#conectMem").prop("checked", true);
			$("#conectTotal").prop("disabled", true);

			if ($(".authorText").text().trim() == '전체') {
				$(".authorText").text("전체회원");
			}
		} else {
			if (chk!="common=0" && chk!=null) {
				$("#conectTotal").prop("checked", false);
				$("#conectTotal").prop("disabled", true);
			} else {
				$("#conectTotal").prop("disabled", false);
			}
		}
	});

	/** 접근권한 체크 */
	$("input[name='menuAuthor']").change(function(){
		// var chk = $("input[name='conectAuthor']:checked").val();
		// var notChk = $('[name="conectAuthor"]:not(:checked)');
		// var clsdrChk = $("input[name='clsdrAt']:checked").val();
		//
		// if (clsdrChk == "N") {
		// 	//전체가 체크되어있을시
		// 	if ($("#conectTotal").is(":checked")) {
		// 		notChk.prop("checked", false);
		// 		notChk.prop("disabled", true);
		// 	} else {
		// 		notChk.prop("disabled", false);
		//
		// 		// 전체회원 - 하위회원 비활성화
		// 		if ($("#conectMem").is(":checked")) {
		// 			notChk.prop("disabled", true);
		// 			$('#conectTotal').prop("disabled", false);
		// 			$('#insConectAuthor2').prop("disabled", false);
		// 		}
		//
		// 		//그외 체크되어있을시
		// 		if (chk!="common=0"&&chk!=null) {
		// 			$("#conectTotal").prop("checked", false);
		// 			$("#conectTotal").prop("disabled", true);
		// 		} else {
		// 			$("#conectTotal").prop("disabled", false);
		// 		}
		// 	}
		// }

		// 접근권한 텍스트 세팅
		$(".authorText").text(""); // 초기화
		$('input[name="menuAuthor"]:checked').each(function (index) {
			var inputIdVal = $(this).attr("id");
			var labelVal = $("label[for='" + inputIdVal + "']").text();

			$(".authorText").append(labelVal + "&nbsp;&nbsp;&nbsp;")
		});
		// end of 접근권한 텍스트 세팅

	});

	//권한리스트 select2
	$('#selAuthorList').select2({ width: 'resolve' });

	//그룹리스트 select2
	$('#selgroupList').select2({ width: 'resolve' });

	//접근권한 설정
	$("#BtnConectAuthor").click(function(){
		$("#authorDtrmn").css("display", "");
		$("#BtnCancleAuthor").css("display", "");
		$("#BtnConectAuthor").css("display", "none");

	});

	//접근 권한 설정취소
	$("#BtnCancleAuthor").click(function(){
		$("#authorDtrmn").css("display", "none");
		$("#BtnCancleAuthor").css("display", "none");
		$("#BtnConectAuthor").css("display", "");
	});

	//접근 권한 부여
	$("#btnAddAuthor").click(function(){
		var authorVal = $("#selAuthorList").val();

		if (authorVal == "") {
			alert("권한을 선택해주세요.");
			return false;
		}

		var authorTxt = $("#selAuthorList option:selected").text();
		var authorBtn = "<a class='btn_whL mini selAuthor' id='auth" + authorVal + "' href='#authorDetail' onclick='javascript:selectDetailAuthor(" + authorVal + ")' data-val='" + authorVal + "'>" + authorTxt + "</a>";
		$("#authorDiv").append(authorBtn);
		$("#selAuthorList option:selected").remove();
		$(".select2-chosen:eq(0)").text("권한 선택");
		$("#selAuthorList option:eq(0)").prop("selected", true);
	});

	//접근 그룹 부여
	$("#btnAddGroup").click(function(){
		var groupVal = $("#selgroupList").val();

		if (groupVal == "") {
			alert("그룹을 선택해주세요.");
			return false;
		}

		var groupTxt = $("#selgroupList option:selected").text();
		var groupBtn = "<a class='btn_whL mini selGroup' id='group" + groupVal + "' href='#groupDetail' onclick='javascript:selectDetailGroup(" + groupVal + ")' data-val='" + groupVal + "'>" + groupTxt + "</a>";
		$("#groupDiv").append(groupBtn);
		$("#selgroupList option:selected").remove();
		$(".select2-chosen:eq(1)").text("그룹 선택");
		$("#selgroupList option:eq(0)").prop("selected", true);
	});
});

</script>