<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>디펍(주) CMS</title>
<meta property="og:type" content="website">
<meta property="og:title" content="디펍(주) CMS">
<meta property="og:description" content="디펍(주) CMS">
<meta property="og:image" content="../images/main/v-1.png">
<%--<meta property="og:url" content="">--%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<link rel="stylesheet" type="text/css" href="/css/web/apple/main.css" />
<link href="/css/web/apple/board.css" rel="stylesheet" />
<!-- 시스템전환 버튼 디자인 -->

<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/web/apple/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/web/apple/layout.js"></script>
<script type="text/javascript" src="/js/web/apple/main.js"></script>

<!-- 사용시 left펼침기능 사라짐
<script type="text/javascript" src="/js/web/apple/jquery-3.1.1.min.js"></script>
 -->
<script type="text/javascript" src="/js/jquery.bpopup.min.js"></script>


<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<div id="skipArea">
		<a href="#container">본문으로 바로가기</a> <a href="#gnb">주메뉴 바로가기</a>
	</div>

	<!-- left를 고정형으로 사용하고 싶다면  #wrap에 class='active'를 추가하기 -->
	<div id="wrap" class="active">
		<c:import url="header.jsp" />
		<c:import url="left.jsp" />
		<div id="container">
			<c:import url="slide.jsp" />
			<c:import url="main.jsp" />
			<!-- FOOTER -->
			<c:import url="footer.jsp" />
			<!-- // FOOTER -->
		</div>
	</div>
</body>
</html>