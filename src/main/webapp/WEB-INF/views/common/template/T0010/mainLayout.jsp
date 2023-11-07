<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta http-equiv="Cache-Control" content="no-cache"/>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
	<title>${htmlTitle}에 오신것을 환영합니다</title>
	<link rel=" shortcut icon" href="/00_common/images/favicon.ico">
	<link rel="icon" href="/00_common/images/favicon.ico">


	<!-- 레이아웃 CSS -->
	<link rel="stylesheet" href="/00_common/css/layout.css" media="all">
	<!-- //레이아웃 CSS -->
	<!-- 템플릿 CSS -->
	<!-- //템플릿 CSS -->
	<link rel="stylesheet" href="/00_common/css/template/T0010_layout.css" media="all">
	<link rel="stylesheet" href="/00_common/css/template/T0010.css" media="all">
	<link rel="stylesheet" href="/00_common/css/template/T0010_widget.css" media="all">
	<link rel="stylesheet" href="/00_common/css/up_pop.css" media="all">
	<!-- 메인 커스텀 CSS -->
	<!-- <link rel="stylesheet" href="/css/web//main_cnt.css" media="all"> -->
	<!-- 레이아웃 커스텀 CSS -->
	<!-- <link rel="stylesheet" href="/css/web//layout_cnt.css" media="all"> -->

	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->

	<!-- 공통파일 js -->
    <script src="/00_common/js/jquery.min.js"></script>
    <script src="/00_common/js/slick.min.js"></script>
	<script src="/00_common/js/modernizr-2.6.2.min.js"></script>
    <script src="/00_common/js/common.js"></script>
    <script src="/00_common/js/con_com.js"></script>

	<!-- [P] 메인 상단팝업 js -->
	<script src="/00_common/js/jquery.bxslider.js"></script>
    <script src="/00_common/js/up_pop.js"></script>

	<script type="text/javascript" src="/js/common.js"></script> <!-- 팝업  -->
	<link rel="stylesheet" href="/css/com/jquery/jquery-ui.min.css"/> <!-- 팝업  -->
	<script type="text/javascript" src="/js/jquery-ui.min.js"></script> <!-- 팝업  -->
	<script type="text/javascript" src="/js/jquery.form.min.js"></script><!-- ajaxSubmit function 사용-->
	<script type="text/javascript" src="/js/jquery.bpopup.min.js"></script><!-- .bPopup({}) function 사용 -->

	<!-- 레이아웃 js -->
	<script src="/js/template/T0010/main.js"></script>

	<link rel="stylesheet" href="/css/web/<c:out value="${ctx}"/>/main_cnt.css" media="all">
	<link rel="stylesheet" href="/css/web/<c:out value="${ctx}"/>/layout_cnt.css" media="all">

	<!-- popover 사용 -->
	<script src="/js/ap/hc/bootstrap.min.js"></script>
	<!-- //popover 사용 -->
</head>

<%
	/* templateType : 템플릿 타입 설정 */
	/* layoutType : 레이아웃 타입 설정 */
	/* code : 메뉴코드 */
	/* title : 메뉴명 */
%>
<body>
<!-- 바로가기 -->
<div id="skipArea">
	<a href="#container">본문으로 바로가기</a>
	<a href="#gnb">메인메뉴 바로가기</a>
</div>
<!-- //바로가기 -->
<div id="wrap" <c:if test="${popListCnt > 0 }">class="openPop"</c:if>>

	<c:import url="/WEB-INF/views/dpcms/layout/common/popHeader.jsp"></c:import>
	<c:import url="header.jsp"></c:import>

	<!-- 컨테이너 -->
	<div id="container">
		<c:import url="main.jsp"></c:import>
	</div>
	<!-- // 컨테이너 -->

	<c:import url="footer.jsp"></c:import>

</div>
	<%--		<c:import url="/WEB-INF/jsp/nfu/ap/wm/widgForm.jsp" />--%>
</body>
</html>