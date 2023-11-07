<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript">
	$(document).ready(function() {
		/** 시스템 등록 화면 */
		$('.systemInsertPage').click(function(){
			$('#searchForm').attr('action','/admin/sm/system/insertPage')
					.attr('method', 'POST').submit();
		});
	})

	/** 검색 (클릭) */
	function goSearch() {
		$('#searchForm').attr('action','/admin/sm/system/list')
				.attr('method', 'GET').submit();
	}
</script>

<!-- 콘텐츠 -->
<h4 class="tit1">홈페이지관리 - 홈페이지 목록
	<button type="button" class="appleHpcmIcon" onClick="javascript:popupHelp('20')">도움말</button>
</h4>
<div class="box_st1 mgb5">
	<p class="ac">홈페이지의 기본 정보를 관리합니다. 홈페이지의 기본정보를 수정·삭제 할수 있고 운영 상태를 변경할 수 있습니다.</p>
</div>

<div class="top_box">
	<form id="searchForm" name="searchForm" method="GET" >
		<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
		<div class="bbs_srch">
			<select name="size" id="size"  title="페이지 목록 수를 선택해주세요.">
				<option value=10 title="10건" <c:if test="${pagination.pageSize eq '10'}">selected</c:if>>10건</option>
				<option value=30 title="30건" <c:if test="${pagination.pageSize eq '30'}">selected</c:if>>30건</option>
				<option value=50 title="50건" <c:if test="${pagination.pageSize eq '50'}">selected</c:if>>50건</option>
			</select>
			<select name="searchType" id="searchType"  title="홈페이지 운영상태를 선택해 주세요.">
				<option value=""  title="전체"  <c:if test="${empty condition.searchType}"  >selected</c:if> >운영상태</option>
				<option value="ACTIVE" title="운영"  <c:if test="${condition.searchType eq 'ACTIVE'}" >selected</c:if> >운영</option>
				<option value="STOP" title="중지"  <c:if test="${condition.searchType eq 'STOP'}" >selected</c:if> >중지</option>
			</select>
			<div class="srchForm">
				<input type="hidden" name="page" id="page" value="${pagination.page}" />
				<input type="text" name="searchText" id="searchText" title="검색 단어" class="col-sm-4"  value="<c:out value="${condition.searchText }"/>" placeholder="홈페이지명, 홈페이지아이디 입력" maxlength="80">
				<button type="button" class="btnSearch" title="검색" onclick="goSearch()">검색</button>
			</div>

			<div class="srchBtn">
				<button type="button" class="btnTy_blue02 systemInsertPage" title="등록">등록</button>
				<button type="button" id="setSessionTimeBtn" class="btnTy_blue02" title="세션시간설정" >세션시간설정</button>
			</div>
		</div>
	</form>
</div>


<c:import url="/WEB-INF/views/cmm/pagingCountForm.jsp" />
<!-- 셀렉트table -->
<div class="bbs_ListA">
	<table>
		<colgroup>
			<col style="width: 5%;"  >
			<col style="width: 15%;" >
			<col style="width: 10%;" >
			<col style="width: 15%;" >
			<col style="width: 15%;" >
			<col style="width: 45%;" >
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>홈페이지명</th>
				<th>운영 상태</th>
				<th>시스템 타입</th>
				<th>템플릿 아이디</th>
				<th>관리</th>
			</tr>
		</thead>
		<tbody class="select_tb">
			<c:forEach var="sysList" items="${pagination.content}" varStatus="status">
				<tr>
					<td><c:out value="${status.count}" /></td>
					<td><c:out value="${sysList.systemName}" />(<c:out value="${sysList.systemId}" />)</td>
					<td>
						<c:if test="${sysList.systemStatus eq 'ACTIVE' }">운영중</c:if>
						<c:if test="${sysList.systemStatus eq 'STOP' }">중지</c:if>
					</td>
					<td><c:out value="${sysList.systemType}" /></td>
					<td><c:out value="${sysList.templateId}" /></td>
					<td>
						<a href="javascript:" onClick="goViewSys('<c:out value="${sysList.systemId}"/>','<c:out value="${sysList.systemName}"/>', 'view', this)" class="btnTy_blue01">조회</a>

						<c:if test="${sysList.systemId ne 'apple' }">
							<a href="javascript:" onClick="goViewSys('<c:out value="${sysList.systemId}"/>','<c:out value="${sysList.systemName}"/>', 'update', this)" class="btnTy_grn01">수정</a>
							<c:if test="${appleAt eq 'Y' }">
								<a href="javascript:" onClick="goViewSys('<c:out value="${sysList.systemId}"/>','<c:out value="${sysList.systemName}"/>', 'delete', this)" class="btnTy_red">삭제</a>
							</c:if>
<%--							<a href="javascript:" class="btnTy_pur01" onclick="manageWidgBak('<c:out value="${sysList.systemId}"/>','<c:out value="${sysList.systemName}"/>')" >위젯관리</a>--%>
<%--							<a href="javascript:" class="btnTy_org" onclick="goViewLogo('<c:out value="${sysList.systemId}"/>','<c:out value="${sysList.systemName}"/>')" >로고관리</a>--%>
<%--							<a href="javascript:" class="btnTy_black" onclick="goViewSubImg('<c:out value="${sysList.systemId}"/>','<c:out value="${sysList.systemName}"/>')" >서브이미지관리</a>--%>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<%--</form>--%>

<!-- 페이징 -->
<c:import url="/WEB-INF/views/cmm/pagingForm.jsp" />
<!-- //페이징 -->

<c:if test="${sysMap.adminAt eq 'Y' }">
<div id="sesionDiv" style="display:none;">
	<form id="sesionForm" name="sesionForm">
	<div class="bbs_ListA">
		<table>
			<thead>
				<tr>
					<th>세션종료시간(분)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" name="sesionTime" title="세션종료시간(분)" class="onylNum" value="<c:out value='${sesionTime }'/>"/></td>
				</tr>
			</tbody>
		</table>
	</div>
	</form>
	<div class="mgt30 ac">
        <button class="btn_bl" onclick="setSesionTime();">수정</button>
    	<button class="btn_gr" onclick="closeSesionTime();">닫기</button>
    </div>
</div>
</c:if>
