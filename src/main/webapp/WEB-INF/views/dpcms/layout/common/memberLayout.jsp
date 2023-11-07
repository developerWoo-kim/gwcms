<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<title><c:out value="${htmlTitle }" /></title>
<!-- CSS -->
<link rel="stylesheet" href="/00_common/css/con_com.css" media="all">
<link rel="stylesheet" href="/00_common/css/member.css" media="all">
<!-- 공통파일 js -->
<script type="text/javascript" src="/00_common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="/00_common/js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="/00_common/js/common.js"></script>
<script type="text/javascript" src="/00_common/js/con_com.js"></script>

<script type="text/javascript" src="/js/jquery.form.min.js"></script>
<script type="text/javascript" src="/js/jquery.bpopup.min.js"></script>
<script type="text/javascript" src="/js/jquery-confirm.min.js"></script>
</head>
<body class="member_bg">
	<!-- login_container -->
	<c:import url="/WEB-INF/jsp/${content}" />
	<!-- //login_container -->
</body>
</html>