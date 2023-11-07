<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>
	// 페이지 이동 시 input 제거
	$(window).on('unload', function () {
		$('#searchForm input[name="boardId"]').remove();
	});
	$(document).ready(function() {
		$(".bbsInsertPage").on("click", function() {
			$('#searchForm').attr('action','/admin/bm/board/insertPage')
					.attr('method', 'POST').submit();
		})

		$(".postManageList").on("click", function() {
			$('#searchForm').attr('action','/admin/bm/post/manage-list')
					.append($('<input/>', {type: 'hidden', name: 'boardId', value:$(this).attr("data-id")}))
					.attr('method', 'POST').submit();
		})
	})

	function goSearch() {
		$('#searchForm').attr('action','/admin/bm/board/list')
				.attr('method', 'GET').submit();
	}
</script>

<h4 class="tit1">[<c:out value="${system.systemName}"/>]&nbsp; &nbsp;게시판 관리
	<button type="button" class="appleHpcmIcon" onClick="javascript:popupHelp('51')">도움말</button></h4>
<div class="box_st1 mgb5">
	<p class="ac">홈페이지에서 사용할 게시판을 조회, 추가, 수정, 삭제, 컬럼관리할 수 있습니다.</p>
</div>
<div class="top_box">
	<form id="searchForm" name="searchForm" method="GET" >
		<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
		<input type="hidden" id="systemId" name="systemId" value="<c:out value='${condition.systemId}'/>"/>
		<input type="hidden" id="systemName" name="systemName" value="<c:out value='${system.systemName}'/>"/>
		<div class="bbs_srch">
			<span class="col-sm-1 form-select">
				<select name="size" id="size" class="srchBox" title="페이지 목록 수를 선택해주세요.">
					<option value=10 title="10건" <c:if test="${pagination.pageSize eq '10'}">selected</c:if>>10건</option>
					<option value=30 title="30건" <c:if test="${pagination.pageSize eq '30'}">selected</c:if>>30건</option>
					<option value=50 title="50건" <c:if test="${pagination.pageSize eq '50'}">selected</c:if>>50건</option>
				</select>
			</span>
			<div class="srchForm">
				<input type="hidden" name="page" id="page" value="${pagination.page}" />
				<input type="text" name="searchText" id="searchText" title="검색 단어" class="col-sm-4"  value="<c:out value="${condition.searchText }"/>" placeholder="게시판명  or 아이디" maxlength="80">
				<button type="button" class="btnSearch" title="검색" onclick="goSearch()">검색</button>
			</div>
			<div class="srchBtn">
				<button class="btnTy_blue01 bbsInsertPage" type="button">게시판 추가</button>
			</div>
		</div>
	</form>
</div>

<c:import url="/WEB-INF/views/cmm/pagingCountForm.jsp" />
<div class="bbs_ListA">
	<table>
		<caption>게시판 목록</caption>
		<colgroup>
			<col style="width: 10%;">
			<col style="width: 7%;">
			<col style="width: 7%;">
			<col style="width: 18%;">
			<col style="width: 20%;">
			<col style="width: 40%;">
		</colgroup>
		<thead>
		<tr>
			<th scope="col">홈페이지</th>
			<th scope="col">게시판 아이디</th>
			<th scope="col">유형</th>
			<th scope="col">게시판명</th>
			<th scope="col">메뉴경로</th>
			<th scope="col">관리</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="board" items="${pagination.content}" varStatus="status">
			<tr>
				<td><c:out value="${board.system.systemName}"/></td>
				<td><c:out value="${board.boardId}"/></td>
				<td><c:out value="${board.boardType}"/></td>
				<td>
					<c:out value="${board.boardName}" escapeXml="false"/>
				</td>
				<td>
<%--					<c:choose>--%>
<%--						<c:when test="${fn:length(bbsInfo.menuCours) > 0}">--%>
<%--							<c:out value="${fn:replace(bbsInfo.menuCours, '|', '<br/>')}" escapeXml="false"/>--%>
<%--						</c:when>--%>
<%--						<c:otherwise>--%>
<%--							<c:if test="${bbsInfo.cntntsId > 0}">--%>
<%--								<p class="pc_red f_weightB">[미사용메뉴]</p>--%>
<%--							</c:if>--%>
<%--							<c:if test="${bbsInfo.cntntsId == 0}">--%>
<%--								<p class="pc_red f_weightB">[연결메뉴없음]</p>--%>
<%--							</c:if>--%>
<%--						</c:otherwise>--%>
<%--					</c:choose>--%>
				</td>
				<td class="btns">
					<button class="btnTy_grn02 bbsSelectInfo" type="button" data-id="<c:out value="${board.boardId}"/>">상세보기</button>
					<button class="btnTy_grn02 postManageList" type="button" data-id="<c:out value="${board.boardId}"/>">게시물 관리</button>
					<button class="btnTy_pur01 bbsSelectAditList" type="button" data-id="<c:out value="${board.boardId}"/>">컬럼관리</button>
					<button class="btnTy_grn01 bbsUpdatePage" type="button" data-id="<c:out value="${board.boardId}"/>">수정</button>
					<button class="btnTy_red bbsDelete" type="button" data-id="<c:out value="${board.boardId}"/>">삭제</button>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<c:import url="/WEB-INF/views/cmm/pagingForm.jsp" />
