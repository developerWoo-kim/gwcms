<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0"/>
	<title>${param.schoolName }에 오신것을 환영합니다</title>
	<link rel=" shortcut icon" href="/00_common/images/favicon.ico">
	<link rel="icon" href="/00_common/images/favicon.ico">


	<!-- 레이아웃 CSS -->
	<link rel="stylesheet" href="/00_common/css/layout.css" media="all">
	<link rel="stylesheet" href="/00_common/css/template/${param.templateType }_layout.css" media="all">

	<!-- [P] 서브페이지인 경우에만 생성되는 조건식 -->
	<c:if test="${param.layoutType eq 'sub'}">
		<link rel="stylesheet" href="/00_common/css/con_com.css" media="all">
		<link rel="stylesheet" href="/00_common/css/sub_com.css" media="all">
		<link rel="stylesheet" href="/css/web/${param.sysID }/${param.layoutType }.css" media="all">
	</c:if>

	<!-- [P] 메인페이지인 경우에만 생성되는 조건식 -->
	<c:if test="${param.layoutType eq 'main'}">
		<link rel="stylesheet" href="/00_common/css/template/${param.templateType }.css" media="all">
		<link rel="stylesheet" href="/00_common/css/template/${param.templateType }_widget.css" media="all">
		<link rel="stylesheet" href="/00_common/css/up_pop.css" media="all">
		<!-- 메인 커스텀 CSS -->
		<link rel="stylesheet" href="/css/web/${param.sysID }/main_cnt.css" media="all">
	</c:if>

	<!-- 레이아웃 커스텀 CSS -->
	<link rel="stylesheet" href="/css/web/${param.sysID }/layout_cnt.css" media="all">

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
	<c:if test="${param.layoutType eq 'main'}">
		<script src="/00_common/js/jquery.bxslider.js"></script>
	    <script src="/00_common/js/up_pop.js"></script>
	</c:if>

	<!-- 레이아웃 js -->
	<script src="/js/template/${param.templateType }/${param.layoutType }.js"></script>
</head>