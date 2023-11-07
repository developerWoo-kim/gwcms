<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
	$(document).ready(function() {
		/** 게시물 등록 화면 */
		$(".surveyInsertPage").on("click", function() {
			$('#searchForm').attr('action','/admin/sv/survey/manage-insertPage')
					.attr('method', 'POST').submit();
		})

		/** 설문 관리 상세 */
		$(".btnSurveyDetail").on("click", function() {
			var surveyId = $(this).attr("data-id");
			$('#searchForm').attr('action','/admin/sv/survey/manage-detail/'+ surveyId)
					.attr('method', 'POST').submit();
		})
	})

	function goSearch() {
		$('#searchForm').attr('action','/admin/bm/post/manage-list')
				.attr('method', 'GET').submit();
	}
</script>

<h4 class="tit1">설문 관리
	<button type="button" class="appleHpcmIcon" onClick="javascript:popupHelp('51')">도움말</button></h4>
<div class="box_st1 mgb5">
	<p class="ac">홈페이지에서 사용할 설문을 조회, 추가, 수정, 삭제할 수 있습니다.</p>
</div>

<div class="top_box">
	<form id="searchForm" name="searchForm" method="GET" >
		<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
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
				<button class="btnTy_blue01 surveyInsertPage" type="button">설문 등록</button>
			</div>
		</div>
	</form>
</div>

<c:import url="/WEB-INF/views/cmm/pagingCountForm.jsp" />
<div class="bbs_ListA">
	<table>
		<caption>설문 목록</caption>
		<colgroup>
			<col style="width:7%;">
			<col style="width:40%;">
			<col style="width:20%;">
			<col style="width:10%;">
			<col style="width:10%;">
			<col style="width:15%;">
		</colgroup>
		<thead>
		<tr>
			<th scope="col" class="ac">번호</th>
			<th scope="col" class="ac">설문 제목</th>
			<th scope="col" class="ac">설문 기간</th>
			<th scope="col" class="ac">작성자</th>
			<th scope="col" class="ac">등록일</th>
			<th scope="col" class="ac">관리</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="list" items="${pagination.content}" varStatus="status">
			<tr>
				<td><c:out value="${status.count}"/></td>
				<td><c:out value="${list.surveyTitle}"/></td>
				<td>
					<fmt:parseDate value="${list.startDate }"
								   pattern="yyyy-MM-dd" var="startDate" type="both" />
					<fmt:parseDate value="${list.endDate }"
								   pattern="yyyy-MM-dd" var="endDate" type="both" />
					<fmt:formatDate value="${startDate}" pattern = "yyyy-MM-dd"/> ~ <fmt:formatDate value="${endDate}" pattern = "yyyy-MM-dd"/>
				</td>
				<td></td>
				<td>
					<fmt:parseDate value="${list.createDateTime }"
								   pattern="yyyy-MM-dd'T'HH:mm" var="createDateTime" type="both" />
					<fmt:formatDate value="${createDateTime}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<button class="btnTy_grn02 btnSurveyDetail" type="button" data-id="<c:out value="${list.surveyId}"/>">상세</button>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<c:import url="/WEB-INF/views/cmm/pagingForm.jsp" />
