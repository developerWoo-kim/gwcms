<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	$(function(){
		// 템플릿 추가
		$('.templateInsertPage').click(function(){
			$('#searchForm').attr('action','/admin/tm/template/insertPage')
					.attr('method', 'POST').submit();
		});

		// 수정 화면 이동
		$('.templateUpdatePage').click(function(){
			var commonCode = $(this).attr('data-code');
			$('#searchForm').attr('action','/admin/cd/commonCode/' + commonCode + '/updatePage')
					.attr('method', 'POST').submit();
		});

		// 삭제
		$('.templateDelete').click(function(){
			if(confirm('삭제하시겠습니까?')){
				var commonCode = $(this).attr('data-code');
				$.ajax({
					type: "DELETE",
					url: "/admin/cd/" + commonCode + "/commonCode",
					dataType : "json",
					success:function(result){
						alert(result.message);
						if(result.status == "success") {
							goSearch();
						}
					},
					error:function(data) {
						alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
					}
				})
			}
		});
	})

	function goSearch() {
		$('#searchForm').attr('action','/admin/tm/template/list')
				.attr('method', 'GET').submit();
	}
</script>

<!-- 템플릿 관리 -->
<h4 class="tit1">템플릿 목록
	<button type="button" class="appleHpcmIcon" onClick="javascript:popupHelp('51')">도움말</button></h4>
<div class="box_st1 mgb5">
	<p class="ac">템플릿을 조회, 등록, 수정, 삭제할 수 있습니다.</p>
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
				<input type="text" name="searchText" id="searchText" title="검색 단어" class="col-sm-4"  value="<c:out value="${condition.searchText }"/>" placeholder="템플릿명 입력" maxlength="80">
				<button type="button" class="btnSearch" title="검색" onclick="goSearch()">검색</button>
			</div>
			<div class="srchBtn">
				<button class="btnTy_blue01 templateInsertPage" type="button">템플릿 추가</button>
			</div>
		</div>
	</form>
</div>

<c:import url="/WEB-INF/views/cmm/pagingCountForm.jsp" />
<div class="bbs_ListA">
	<table>
		<colgroup>
			<col style="width: 10%;">
			<col style="width: 10%;">
			<col style="width: 10%;">
			<col style="width: 10%;">
			<col style="width: 40%;">
			<col style="width: 10%;">
			<col style="width: 20%;">
		</colgroup>
		<thead>
			<tr>
				<th class="ac">순번</th>
				<th class="ac">템플릿 아이디</th>
				<th class="ac">템플릿 이름</th>
				<th class="ac">템플릿 유형</th>
				<th class="ac">템플릿 설명</th>
				<th class="ac">사용 여부</th>
				<th class="ac"><span class="nobr"></span> </th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${not empty pagination.content}">
					<c:forEach var="list" items="${pagination.content}" varStatus="staus">
						<tr>
							<td class="ac"><c:out value="${staus.index}"/></td>
							<td class="ac"><c:out value="${list.templateId}"/></td>
							<td class="ac"><c:out value="${list.templateName}"/></td>
							<td class="ac"><c:out value="${list.templateType}"/></td>
							<td class="ac"><c:out value="${list.templateDescription}"/></td>
							<td class="ac"><c:out value="${list.useAt}"/></td>
							<td class="ac">
								<button class="btnTy_grn01 templateUpdatePage" type="button" data-code="<c:out value="${list.templateId}"/>">수정</button>
								<button class="btnTy_red templateDelete" type="button" data-code="<c:out value="${list.templateId}"/>">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
		</tbody>
	</table>
<!-- //셀렉트table -->
</div>
<c:import url="/WEB-INF/views/cmm/pagingForm.jsp" />
