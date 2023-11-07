<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="start" value="${pagination.startPage}" />
<c:set var="end" value="${pagination.endPage}" />

<input type="hidden" name="page" value="${pagination.page}" />
<div class="bbs_pagerA">
    <c:if test="${pagination.page > pagination.startPage}">
<%--        <a href="?page=1&size=${pagination.pageSize}" class="bbs_arr pgeL2">첫 페이지</a>--%>
<%--        <a href="?page=${pagination.prevBlock}&size=${pagination.pageSize}" class="bbs_arr pgeL1">이전 페이지</a>--%>
        <a href="javascript:" onclick="goPaging(1)" class="bbs_arr pgeL2">첫 페이지</a>
        <a href="javascript:" onclick="goPaging(${pagination.prevBlock})" class="bbs_arr pgeL1">이전 페이지</a>
    </c:if>
    <c:forEach begin="${start}" end="${end}" var="pageButton">
        <c:choose>
            <c:when test="${pagination.page != pageButton}">
<%--                <a href="?page=${pageButton}&size=${pagination.pageSize}" class="bbs_pge_num">${pageButton}</a>--%>
                <a href="javascript:" onclick="goPaging(${pageButton})" class="bbs_pge_num">${pageButton}</a>
            </c:when>
            <c:otherwise>
                <strong class="bbs_pge_num" title="현재 페이지">${pageButton}</strong>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:if test="${pagination.page < pagination.totalPageCnt}">
<%--        <a href="?page=${pagination.nextBlock}&size=${pagination.pageSize}" class="bbs_arr pgeR1" title="다음 페이지">다음 페이지</a>--%>
<%--        <a href="?page=${pagination.totalPageCnt}&size=${pagination.pageSize}" class="bbs_arr pgeR2" title="끝 페이지">끝 페이지</a>--%>
        <a href="javascript:" onclick="goPaging(${pagination.nextBlock})" class="bbs_arr pgeR1" title="다음 페이지">다음 페이지</a>
        <a href="javascript:" onclick="goPaging(${pagination.totalPageCnt})" class="bbs_arr pgeR2" title="끝 페이지">끝 페이지</a>
    </c:if>
</div>
<script>
    function goPaging(pageSn){
        document.searchForm.page.value=pageSn;
        document.searchForm.action='${requestUri}';
        document.searchForm.method='GET';
        document.searchForm.submit();
    }

    function clearSearchForm() {
        $('#size').val(10);
        $('#page').val(1);
        $('#searchText').val('');
    }
</script>