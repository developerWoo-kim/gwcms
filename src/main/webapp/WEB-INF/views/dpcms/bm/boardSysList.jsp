<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">

	$(document).ready(function() {
		/** 게시판 리스트 화면 */
		$(".boardList").click(function(){
			$('#searchForm').attr('action','/admin/bm/board/list')
					.append($('<input/>', {type: 'hidden', name: 'systemId', value:$(this).attr("data-id")}))
					.attr('method', 'GET').submit();
		});
	})
	function goSearch() {
		$('#searchForm').attr('action','/admin/bm/board/sysList')
				.attr('method', 'GET').submit();
	}

</script>
<h4 class="tit1">게시판 관리 - 홈페이지 목록
	<button type="button" class="appleHpcmIcon" onClick="javascript:popupHelp('21')">도움말</button></h4>
<div class="box_st1 mgb5">
	<p class="ac">홈페이지의 메뉴를 등록, 수정, 삭제, 순서를 변경하고 적용할 수 있습니다.</p>
</div>

<!-- 검색 폼 -->
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
				<input type="text" name="searchText" id="searchText" title="홈페이지 아이디, 명 입력" placeholder="홈페이지 아이디, 명 입력" class="col-sm-4" maxlength="80" value="<c:out value="${condition.searchText }"/>">
				<button type="button" class="btnSearch" title="검색" onclick="goSearch()">검색</button>
			</div>
		</div>
	</form>
</div>
<!-- 검색 폼 -->
<!-- 페이징 카운트 -->
<c:import url="/WEB-INF/views/cmm/pagingCountForm.jsp" />
<!-- 페이징 카운트 -->
<div class="bbs_ListA">
	<table>
		<caption>홈페이지 목록</caption>
		<colgroup>
			<col style="width: 10%;">
			<col style="width: 15%;">
			<col style="width: 15%;">
			<col style="width: 20%;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">홈페이지 아이디</th>
				<th scope="col">홈페이지 명</th>
				<th scope="col">조회</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pagination.content}" var="sys" varStatus="status">
				<tr>
					<td class="ac"><c:out value="${status.count}"/></td>
					<td><c:out value="${sys.systemId}"/></td>
					<td><c:out value="${sys.systemName}"/></td>
					<td><button class="btnTy_blue01 boardList" data-id="<c:out value="${sys.systemId}"/>" data-nm="<c:out value="${sys.systemName}"/>" type="button">조회</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<!-- 페이징 -->
<c:import url="/WEB-INF/views/cmm/pagingForm.jsp" />
<!-- 페이징 -->
