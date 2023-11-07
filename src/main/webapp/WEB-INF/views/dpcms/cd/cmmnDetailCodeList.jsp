<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	$(function(){
		 // $('#cmmnCode').select2({
			//     width : '170px'
		 // });
		
		$('.cmmncodeList').click(function(){
			location.href="/admin/cd/commonCode/list";
		});

		/** 공통코드 등록 화면 */
		$('.cmmnDetailcodeInsertPage').click(function(){
			$('#searchForm').attr('action','/admin/cd/commonDetailCode/insertPage')
					.attr('method', 'POST').submit();
		});
		
		$('.cmmnDetailcodeDelete').click(function(){
			if(confirm('삭제하시겠습니까?')){
				var commonCode = $(this).attr('data-code');
				var commonDetailCode = $(this).attr('data-detailcode');
				$.ajax({
					type: "DELETE",
					url: "/admin/cd/"+commonCode+"/"+commonDetailCode+"/commonDetailCode",
					dataType : "json",
					success:function(result){
						alert(result.message);
						if(result.status == "success") {
							$('#searchForm').submit();
						}
					},
					error:function(data) {
						alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
					}

				});
			}
		});
		
	})
	
	// 검색
	function selectList(){
		$('#searchForm').attr('action','/admin/cd/commonDetailCode/list')
				.attr('method', 'GET').submit();
	}
</script>
<!-- 공통코드 관리 -->
<h4 class="tit1">공통상세코드 목록</h4>
<div class="box_st1 mgb5">
	<p class="ac">공통상세코드를 조회, 등록, 수정, 삭제할 수 있습니다.</p>
</div>

<div class="top_box">
	<form id="searchForm" method="GET">
		<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
		<div class="bbs_srch">
			<span class="col-sm-1 form-select">
				<select name="size" id="size" class="srchBox" title="페이지 목록 수를 선택해주세요.">
					<option value=10 title="10건" <c:if test="${pagination.pageSize eq '10'}">selected</c:if>>10건</option>
					<option value=30 title="30건" <c:if test="${pagination.pageSize eq '30'}">selected</c:if>>30건</option>
					<option value=50 title="50건" <c:if test="${pagination.pageSize eq '50'}">selected</c:if>>50건</option>
				</select>
			</span>

			<select name="commonCode" id="commonCode" title="공통코드">
				<option value="" title="공통코드선택">공통코드선택</option>
				<c:forEach var="commonCode" items="${commonCodeList }">
					<option value="<c:out value="${commonCode.commonCode }"/>" title="<c:out value="${commonCode.commonCodeName }"/>"
							<c:if test="${commonCode.commonCode eq condition.commonCode }">selected</c:if>>
						<c:out value="${commonCode.commonCodeName }"/>
					</option>
				</c:forEach>
			</select>

			<div class="srchForm">
				<input type="hidden" name="page" value="${pagination.page}" />
				<input name="searchText" id="searchText" title="검색 단어" class="col-sm-4" type="text" value="<c:out value="${condition.searchText }"/>" placeholder="공통코드 및 공통코드명 입력" maxlength="80">
				<button type="button" onclick="selectList()" title="검색" class="btnSearch">검색</button>
			</div>

			<div class="srchBtn">
				<button class="btnTy_blue01 cmmnDetailcodeInsertPage" type="button" title="공통상세코드 등록">공통상세코드 등록</button>
				<button class="btnTy_grn03 cmmncodeList" type="button" title="공통코드 목록">공통코드목록</button>
			</div>
		</div>
	</form>
</div>

<c:import url="/WEB-INF/views/cmm/pagingCountForm.jsp" />
<div class="bbs_ListA">
	<table>
		<colgroup>
			<col style="width: 5%;">
			<col style="width: 10%;">
			<col style="width: 10%;">
			<col style="width: 10%;">
			<col style="width: 25%;">
			<col style="width: 5%;">
			<col style="width: 15%;">
			<col style="width: 20%;">
		</colgroup>
		<thead>
			<tr>
				<th class="ac">순번</th>
				<th class="ac">공통코드 </th>
				<th class="ac">공통코드명</th>
				<th class="ac">공통상세코드 </th>
				<th class="ac">공통상세코드명</th>
				<th class="ac">사용여부</th>
				<th class="ac">공통상세코드설명</th>
				<th class="ac"><span class="nobr"></span> </th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${not empty pagination.content}">
					<c:forEach var="list" items="${pagination.content}" varStatus="status">
						<tr>
							<td class="ac"><c:out value="${status.count }"/></td>
							<td class="ac"><c:out value="${list.commonCode }"/></td>
							<td class="ac"><c:out value="${list.commonCodeName }"/></td>
							<td class="ac"><c:out value="${list.commonDetailCode }"/></td>
							<td class="ac"><c:out value="${list.commonDetailCodeName }"/></td>
							<td class="ac"><c:if test="${list.useAt eq 'Y' }">사용</c:if><c:if test="${cdVal.useAt eq 'N' }">미사용</c:if></td>
							<td class="ac"><c:out value="${list.commonDetailCodeDescription }"/></td>
							<td class="ac">
								<button class="btnTy_blue01 cmmnDetailcodeInfo" type="button" data-code="<c:out value="${list.commonCode }"/>" data-detailcode="<c:out value="${list.commonDetailCode }"/>">보기</button>
								<button class="btnTy_grn01 cmmnDetailcodeUpdatePage" type="button" data-code="<c:out value="${list.commonCode }"/>" data-detailcode="<c:out value="${list.commonDetailCode }"/>">수정</button>
								<button class="btnTy_red cmmnDetailcodeDelete" type="button" data-code="<c:out value="${list.commonCode }"/>" data-detailcode="<c:out value="${list.commonDetailCode }"/>">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="8">등록된 상세 공통 코드가 존재 하지 않습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
<!-- //셀렉트table -->
</div>
<c:import url="/WEB-INF/views/cmm/pagingForm.jsp" />
