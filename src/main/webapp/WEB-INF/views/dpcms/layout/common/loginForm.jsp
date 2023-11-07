<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="loginInfo" value="${ssId}_SSmberInfo_${ctx}"/>
<c:set var="appleInfo" value="${ssId}_SSmberInfo_apple"/>

<c:set var="reqUri" value="${requestScope['javax.servlet.forward.request_uri']}" />
<c:if test="${fn:indexOf(reqUri,'/apple/') > -1}">
	<script>
	// a링크 작동 해제
	$(document).on("click", "a", function(e){
		e.preventDefault();
	});
	</script>
</c:if>

<script>
<!--회원가입버튼 클릭시-->
$(document).on('click', '#insertSbscrb', function(){
	location.href = "/<c:out value="${ctx}"/>/sb/sbscrb/insertSbscrbInfo01.do";
});
</script>
<li><a href="/<c:out value="${ctx}"/>/main.do">홈</a></li>
<li><a href="/${ctx }/lo/login/loginPage.do"  title="로그인">로그인</a></li>
<li><a href="/<c:out value='${ctx}'/>/lo/login/logout.do" title="로그아웃">로그아웃</a></li>
<li class="myPage" data-id="${ctx}"><a href="#none" title="마이페이지">마이페이지</a></li>
<li><a href="javascript:" id="insertSbscrb" title="회원가입">회원가입</a></li>
<li><a href="/apple/am/appleLoginPage.do" target="_blank" title="관리자시스템">관리자시스템</a></li>
<c:if test="${ctx eq 'apple'}">  <%-- 템플릿관리-미리보기를 위함 --%>
<li><a href="#" title="홈">홈</a></li>
<li><a href="#" title="로그인">로그인</a></li>
<li><a href="#" title="회원가입">회원가입</a></li>
</c:if>
<li><a href="#none" class="fullMenu" id="fullMenuOpen">사이트맵</a></li>

