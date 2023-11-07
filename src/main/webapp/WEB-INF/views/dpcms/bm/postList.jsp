<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>
	$(document).ready(function() {
		/** 게시물 등록 화면 */
		$(".postInsertPage").on("click", function() {
			$('#searchForm').attr('action','/<c:out value="${ctx}"/>/bm/post/manage-insertPage')
					.attr('method', 'POST').submit();
		})

		/** 게시물 상세 */
		$(".postInfoPage").on("click", function() {
			var postId = $(this).attr("data-id");
			$('#searchForm').attr('action','/<c:out value="${ctx}"/>/bm/post/'+ postId +'/info')
					.attr('method', 'POST').submit();
		})
	})

	function goSearch() {
		$('#searchForm').attr('action','/<c:out value="${ctx}"/>/bm/post/list')
				.attr('method', 'GET').submit();
	}
</script>

<div>
	<form id="searchForm" name="searchForm" method="GET" >
		<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
		<input type="hidden" id="systemId" name="systemId" value="<c:out value='${condition.systemId}'/>"/>
		<input type="hidden" id="boardId" name="boardId" value="<c:out value='${condition.boardId}'/>"/>
		<fieldset class="BD_srch">
			<div class="bbs_srch">
				<span class="col-sm-1 form-select">
					<select name="size" id="size" class="srchBox" title="페이지 목록 수를 선택해주세요.">
						<option value=10 title="10건" <c:if test="${pagination.pageSize eq '10'}">selected</c:if>>10건</option>
						<option value=30 title="30건" <c:if test="${pagination.pageSize eq '30'}">selected</c:if>>30건</option>
						<option value=50 title="50건" <c:if test="${pagination.pageSize eq '50'}">selected</c:if>>50건</option>
					</select>
				</span>
				<input type="hidden" name="page" id="page" value="${pagination.page}" />
				<input type="text" name="searchText" id="searchText" title="검색 단어" class="txt inpTxt" value="<c:out value="${condition.searchText }"/>" placeholder="제목, 작성자" maxlength="80">
				<button type="button" class="btnSearch" title="검색" onclick="goSearch()">검색</button>
			</div>
		</fieldset>
	</form>
</div>

<c:import url="/WEB-INF/views/cmm/pagingCountForm.jsp" />
<div class="bbs_ListA">
	<table>
		<caption>게시물 목록</caption>
		<colgroup>
			<col style="width:10%;" class="BD_tm_none">
			<col style="width:50%;">
			<col style="width:15%;" class="widS15">
			<col style="width:15%;" class="widS15">
			<col style="width:10%;" class="BD_tm_none">
			<col style="width:10%;">
		</colgroup>
		<thead>
		<tr>
			<th scope="col" class="BD_tm_none ac">번호</th>
			<th scope="col" class="ac">제목</th>
			<th scope="col widS15" class="ac">작성자</th>
			<th scope="col widS15" class="ac">등록일</th>
			<th scope="col" class="BD_tm_none ac">조회</th>
			<th scope="col" class="ac">첨부</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="post" items="${pagination.content}" varStatus="status">
			<tr>
				<td><c:out value="${status.count}"/></td>
				<td><c:out value="${post.board.boardId}"/></td>
				<td>
					<a href="javascript:" data-id="<c:out value="${post.postId}"/>" class="postInfoPage">
						<c:out value="${post.postTitle}"/>
					</a>
				</td>
				<td><c:out value="${post.createName}"/></td>
				<td><c:out value="${post.createDateTime}"/></td>
				<td></td>
				<td></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<c:import url="/WEB-INF/views/cmm/pagingForm.jsp" />
