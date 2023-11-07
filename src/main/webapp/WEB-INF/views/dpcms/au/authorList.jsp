<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
    $(document).ready(function() {
        /** 권한 등록 화면 */
        $('.authorInsertPage').click(function(){
            $('#searchForm').attr('action','/admin/au/author/insertPage')
                .attr('method', 'POST').submit();
        });
    })

    /** 권한 삭제*/
    function authorGroupDelete(authorGroupId, authorGroupName) {
        if (confirm(authorGroupName + " 권한을 삭제하시겠습니까?")) {
            $.ajax({
                type : "DELETE",
                dataType : "json",
                url : "/admin/au/author/" + authorGroupId,
                success : function(result) {
                    alert(result.message);
                    if(result.status == 'success'){
                        goSearch();
                    }
                },
                error : function(result) {
                    errorMessage(result);
                }
            });
        }
    }

    /** 권한 역할 관리 화면 */
    function viewAuthorGroupRole(authorGroupId) {
        location.href = "/admin/au/author-role/list?authorGroupId="+authorGroupId;
    }

    function goSearch() {
        $('#searchForm').attr('action','/admin/au/author/list')
            .attr('method', 'GET').submit();
    }
</script>
<!-- 공통코드 관리 -->
<h4 class="tit1">권한 목록</h4>
<div class="box_st1 mgb5">
    <p class="ac">시스템의 권한을 조회, 등록, 삭제할 수 있습니다.</p>
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
                <input type="text" name="searchText" id="searchText" title="검색 단어" class="col-sm-4" value="<c:out value="${condition.searchText }"/>" placeholder="권한명을 입력하세요." maxlength="80">
                <button type="button" class="btnSearch" title="검색" onclick="goSearch()">검색</button>
            </div>
            <div class="srchBtn">
                <button type="button" title="권한등록" class="btnTy_blue01 authorInsertPage">권한등록</button>
            </div>
        </div>
    </form>
</div>
<c:import url="/WEB-INF/views/cmm/pagingCountForm.jsp" />
<div class="bbs_ListA">
    <table>
        <colgroup>
            <col style="width: 5%;">
            <col style="width: 20%;">
            <col style="width: 20%;">
            <col style="width: auto;">
        </colgroup>
        <thead>
        <tr>
            <th class="ac">순번</th>
            <th class="ac">권한명</th>
            <th class="ac">권한설명</th>
            <th class="ac">관리</th>
        </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${not empty pagination.content}">
                    <c:forEach var="list" items="${pagination.content}" varStatus="status">
                        <tr>
                            <td class="ac"><c:out value="${status.count}"/></td>
                            <td class="ac"><c:out value="${list.authorGroupName}"/></td>
                            <td class="ac"><c:out value="${list.authorGroupDescription}"/></td>
                            <td class="ac">
<%--                                <a href="javascript:"  onClick="javascript:goViewUpdate('<c:out value="${list.authorGroupId}"/>');" class="btnTy_grn01">수정</a>--%>
                                <a href="javascript:"  onClick="javascript:viewAuthorGroupRole('<c:out value="${list.authorGroupId}"/>');" class="btnTy_grn01">역할관리</a>
                                <a href="javascript:"  onClick="javascript:authorGroupDelete('<c:out value="${list.authorGroupId}"/>', '<c:out value="${list.authorGroupName}"/>');" class="btnTy_red">삭제</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
            </c:choose>
        </tbody>
    </table>
    <!-- //셀렉트 table -->
</div>
<c:import url="/WEB-INF/views/cmm/pagingForm.jsp" />
