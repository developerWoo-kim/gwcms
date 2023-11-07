<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	// 페이지 이동 시 input 제거
	$(window).on('unload', function () {
		$('#searchForm input[name="memberId"]').remove();
	});

	$(document).ready(function(){

		/** 회원 등록 화면 */
		$('#btnCreateMber').on('click', function () {
			$('#searchForm').attr('action','/admin/mm/member/insertPage')
					.attr('method', 'POST').submit();
		});

		/** 회원 상세 화면 */
		$('.memberManageDetailPage').on('click', function () {
			var memberId = $(this).attr('data-code');
			$('#searchForm').attr('action','/admin/mm/member/manageDetail')
					.append($('<input/>', {type: 'hidden', name: 'memberId', value:memberId }))
					.attr('method', 'POST').submit();
		})


		/** 회원 권한 관리 화면 */
		$('.memberAuthorInsertPage').on('click', function () {
			var memberId = $(this).attr('data-code');
			$('#searchForm').attr('action','/admin/mm/memberAuthor/insertPage')
					.append($('<input/>', {type: 'hidden', name: 'memberId', value:memberId }))
					.attr('method', 'POST').submit();
		})

	});

	function goSearch() {
		$('#searchForm').attr('action','/admin/mm/member/manageList')
				.attr('method', 'GET').submit();
	}
</script>

<h4 class="tit1">전체 회원 목록</h4>
<div class="box_st1 mgb5">
	<p class="ac">전체 회원을 조회, 등록, 수정, 삭제할 수 있습니다.</p>
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
				<input type="text" name="searchText" id="searchText" title="검색 단어" class="input_200 txt"  value="<c:out value="${condition.searchText }"/>" placeholder="기관명, 이름, 아이디 입력" maxlength="80">
				<button type="button" class="btnSearch" title="검색" onclick="goSearch()">검색</button>
			</div>
			<div class="srchBtn">
<%--				<button type="button" id="btnConfmInfo" class="btnTy_grn03">자동승인설정</button>--%>
<%--				<button type="button" id="btnConfmAllYn" class="btnTy_grn02">일괄승인</button>--%>
				<button type="button" id="btnCreateMber" class="btnTy_blue01">회원생성</button>
			</div>
		</div>
	</form>
</div>
<c:import url="/WEB-INF/views/cmm/pagingCountForm.jsp" />
<!-- 셀렉트table -->
<div class="bbs_ListA">
	<table class="list">
		<caption><c:out value="${mbMap.sysNm }" /> 회원목록</caption>
		<colgroup>
			<col style="width: 5%;">
			<col style="width: 5%;">
			<col style="width: 10%;">
			<col style="width: 10%;">
			<col style="width: 16%">
			<col style="width: 9%;">
			<col style="width: 9%;">
			<col style="width: 18%;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">
					<span class='custom-input noLabel'>
						<input type="checkbox" id="allCheckBox" name="allCheckBox"><label for="allCheckBox"><em>전체선택</em></label>
					</span>
				</th>
				<th scope="col">번호</th>
				<th scope="col">아이디</th>
				<th scope="col">이름</th>
				<th scope="col">시스템명</th>
				<th scope="col">사용자구분</th>
				<th scope="col">회원상태</th>
				<th scope="col">관리</th>
			</tr>
		</thead>
		<tbody id="listBody">
			<c:forEach var="list" items="${pagination.content}" varStatus="status">
				<tr>
					<td class="ac">
						<span class='custom-input noLabel'>
							<input type="hidden" class="checkMberId" value="${list.memberId}" />
							<input type="checkbox" name="mberCheckBox" id="mberCheckBox<c:out value='${status.index }'/>" /><label for="mberCheckBox<c:out value='${status.index }'/>"><em>선택</em></label>
						</span>
					</td>
					<td class="ac"><c:out value="${status.count}"/></td>
					<td class="ac"><strong><c:out value="${list.memberId}"/></strong></td>
					<td class="ac"><c:out value="${list.memberName}"/></td>
					<td class="ac"><c:out value="${list.sysNm}"/></td>
					<td class="ac"><strong><c:out value="${list.memberType}"/></strong></td>
					<td class="ac"><c:out value="${list.memberStatus}"/></td>
					<td class="ac">
						<button class="btnTy_grn03 memberManageDetailPage" type="button" data-code="<c:out value="${list.memberId}"/>">조회</button>
						<button class="btnTy_grn01 memberAuthorInsertPage" type="button" data-code="<c:out value="${list.memberId}"/>">권한 관리</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<!-- 페이징 -->
<c:import url="/WEB-INF/views/cmm/pagingForm.jsp" />
<!-- //페이징 -->
  
<!--회원 소속 기관 리스트 -->
<div id="selectInfoDiv" class="insttPstyle" style="">
<div id="selectInfoDivCnt"></div>
</div>
