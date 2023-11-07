<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form id="searchForm" method="GET" >
	<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
	<input type="hidden" id="size" name="size" value="<c:out value='${condition.size}'/>">
	<input type="hidden" id="page" name="page" value="${condition.page}" />
	<input type="hidden" id="searchText" name="searchText" value="<c:out value='${condition.searchText}'/>">
	<input type="hidden" id="systemId" name="systemId" value="${condition.systemId}" />
</form>

<form id="bbsForm" name="bbsForm" method="post">
	<input type="hidden" name="systemId" value="<c:out value="${condition.systemId}"/>"/>
	<input type="hidden" name="systemName" value="<c:out value="${condition.systemName}"/>"/>

	<%-- 게시판설명,개인정보수집 사용여부,제3자 정보제공 사용여부 --%>
	<h4 class="tit1">[<c:out value="${condition.systemName}"/>]&nbsp; &nbsp;게시판 추가</h4>
	<div class="box_st1 mgb5">
		<p class="ac">홈페이지에서 사용할 게시판을 추가할 수 있습니다.</p>
	</div>

	<h6 class="tit2 mgt20">게시판 기본설정</h6>
	<div class="bbs_WriteA">
		<table class="basic_tb">
			<caption>게시판 기본설정</caption>
			<colgroup>
				<col style="width:15%;">
				<col style="width:35%;">
				<col style="width:15%;">
				<col style="width:35%;">
			</colgroup>
			<tbody>
				<tr>
					<th scope="row"><span class="ess_itm">*</span>게시판명</th>
					<td><input type="text" id="boardName" name="boardName" class="col-sm-12" title="게시판명" maxlength="80"/></td>
					<th scope="row"><span class="ess_itm">*</span>게시판종류</th>
					<td>
						<span class="col-sm-12 form-select">
							<select name="boardType" id="boardType" title="게시판종류">
								<c:forEach items="${boardTypeList}" var="boardType">
									<option value="<c:out value="${boardType.id.commonDetailCode}"/>"><c:out value="${boardType.commonDetailCodeName}"/></option>
								</c:forEach>
							</select>
						</span>
					</td>
				</tr>
				<tr>
					<th scope="row"><span class="ess_itm">*</span>댓글기능 사용여부</th>
					<td>
						<ul class="custom-input">
							<li><input type="radio" class="faqChk" name="answerUseAt" id="answerTy1" value="N" checked="checked"/><label for="answerTy1">미사용</label></li>
							<li><input type="radio" class="faqChk" name="answerUseAt" id="answerTy2" value="Y"/><label for="answerTy2">사용</label></li>
						</ul>
					</td>
					<th scope="row"><span class="ess_itm">*</span>게시판 사용여부</th>
					<td>
						<ul class="custom-input">
							<li><input type="radio" class="faqChk" name="useAt" id="userAt1" value="N" checked="checked"/><label for="userAt1">미사용</label></li>
							<li><input type="radio" class="faqChk" name="useAt" id="userAt2" value="Y"/><label for="userAt2">사용</label></li>
						</ul>
					</td>
				</tr>
		    </tbody>
		</table>
	</div>
	<p class="btns ar">
		<button class="btn_bl bbsInsert" type="button">게시판 추가</button>
		<a href="javascript:" class="btn_gr listBtn" title="취소">취소</a>
	</p>
	<!-- /게시판 관리 -->
</form>
<script type="text/javascript">

	$(function() {
		// 게시판 추가
		$('.bbsInsert').click(function() {

			if ($("#boardName").valueEmpty()) {
				alert("게시판명을 입력해주세요.");
	            $("#boardName").focus();
	            return false;
	        }

			if (confirm("게시판을 추가하시겠습니까?")) {
				// FAQ 게시판 disabled 해제
				$(".faqChk").attr('disabled', false);

				$.ajax({
					type: "POST",
					datatype:"json",
					data: $("#bbsForm").serialize(),
					url: "/admin/bm/board",
					success:function(result){
						alert(result.message);
						if (result.status == "success") {
							goList();
						}
					},
					error:function(result) {
						errorMessage(result);
					}
				});
			}
		});

		// 게시판 타입 변경 체크 ( 일반, 게시판만 에디터 사용가능 )
		$('#boardType').change(function() {
			var boardType = $("#boardType").val();
			setBbsVolumeOption(boardType);
		});

		// 취소
		$('.listBtn').click(function() {
			goList();
		});

	});

	// 목록 이동
	function goList() {
		$('#searchForm').attr('action','/admin/bm/board/list').submit();
	}
</script>