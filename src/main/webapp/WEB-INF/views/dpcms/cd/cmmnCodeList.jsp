<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	$(window).on('unload', function () {
		$('#searchForm input[name="commonCode"]').remove();
	});

	$(function(){
		// 공통 코드 추가
		$('.cmmncodeInsertPage').click(function(){
			$('#searchForm').attr('action','/admin/cd/commonCode/insertPage')
					.attr('method', 'POST').submit();
		});

		//수정화면 이동
		$('.cmmncodeUpdatePage').click(function(){
			var commonCode = $(this).attr('data-code');
			$('#searchForm').attr('action','/admin/cd/commonCode/' + commonCode + '/updatePage')
					.attr('method', 'POST').submit();
		});

		//공통상세코드목록
		$('.cmmnDetailcodeList').click(function(){
			var commonCode = $(this).attr('data-code');
			$('#searchForm').attr('action','/admin/cd/commonDetailCode/list')
					.attr('method', 'GET')
					.append($('<input/>', {type: 'hidden', name: 'commonCode', value:commonCode }))
					.submit();
		});

		// 공통 코드 삭제
		$('.cmmncodeDelete').click(function(){
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
		$('#searchForm').attr('action','/admin/cd/commonCode/list')
				.attr('method', 'GET').submit();
	}
</script>

<!-- 공통코드 관리 -->
<h4 class="tit1">공통코드 목록
	<button type="button" class="appleHpcmIcon" onClick="javascript:popupHelp('51')">도움말</button></h4>
<div class="box_st1 mgb5">
	<p class="ac">공통코드를 조회, 등록, 수정, 삭제할 수 있습니다.</p>
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
				<input type="text" name="searchText" id="searchText" title="검색 단어" class="col-sm-4"  value="<c:out value="${condition.searchText }"/>" placeholder="공통코드 및 공통코드명 입력" maxlength="80">
				<button type="button" class="btnSearch" title="검색" onclick="goSearch()">검색</button>
			</div>
			<div class="srchBtn">
				<button class="btnTy_blue01 cmmncodeInsertPage" type="button">공통코드 추가</button>
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
			<col style="width: 20%;">
			<col style="width: 40%;">
		</colgroup>
		<thead>
			<tr>
				<th class="ac">순번</th>
				<th class="ac">공통코드 </th>
				<th class="ac">공통코드명</th>
				<th class="ac">사용여부</th>
				<th class="ac">공통코드설명</th>
				<th class="ac"><span class="nobr"></span> </th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${not empty pagination.content}">
					<c:forEach var="list" items="${pagination.content}" varStatus="staus">
						<tr>
							<td class="ac"><c:out value="${staus.index}"/></td>
							<td class="ac"><c:out value="${list.commonCode}"/></td>
							<td class="ac"><c:out value="${list.commonCodeName}"/></td>
							<td class="ac"><c:out value="${list.useAt}"/></td>
							<td class="ac"><c:out value="${list.commonCodeDescription}"/></td>
							<td class="ac">
								<button class="btnTy_grn03 cmmnDetailcodeList" type="button" data-code="<c:out value="${list.commonCode}"/>">공통상세코드목록</button>
<%--								<button class="btnTy_grn02 cmmncodeInfo" type="button" data-code="<c:out value="${list.commonCode}"/>">상세보기</button>--%>
								<button class="btnTy_grn01 cmmncodeUpdatePage" type="button" data-code="<c:out value="${list.commonCode}"/>">수정</button>
								<button class="btnTy_red cmmncodeDelete" type="button" data-code="<c:out value="${list.commonCode}"/>">삭제</button>
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
