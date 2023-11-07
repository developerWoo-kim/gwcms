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
<link href="/css/web/apple/board.css" rel="stylesheet" />
<!-- 게시판디자인, 시스템전환 버튼 디자인 -->
<!-- <link href="/css/ap/nt/nttTotal.css" rel="stylesheet" /> -->
<!-- 게시물관리 게시판, 버튼 디자인 -->

<link href="/css/ap/before_common.css" rel="stylesheet" />
<!-- <link href="/css/00_common/con_com.css" rel="stylesheet" /> -->
<!-- sjlee : + 버튼css -->
<link href="/css/com/jquery/select2.css" rel="stylesheet" />
<link href="/css/com/jquery/jquery-ui.min.css" rel="stylesheet" />
<link rel="stylesheet" href="/css/com/calendar/jquery-ui.css" type="text/css">
<link rel="stylesheet" href="/css/web/common/sub.css" media="all" />
<link rel="stylesheet" href="/css/web/apple/sub.css" />
<!-- 만족도 관리 -->
<%--<script type="text/javascript" src="/js/jquery.min.js"></script>--%>
<script type="text/javascript" src="/js/web/apple/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/js/web/apple/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/web/apple/layout.js"></script>
<script type="text/javascript" src="/js/web/apple/sub.js"></script>

<script type="text/javascript" src="/00_common/js/common.js"></script>
<script type="text/javascript" src="/js/util/file/CommonFileUtil.js"></script>
<script type="text/javascript" src="/js/util/CommonUtil.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/jquery.form.min.js"></script>
<script type="text/javascript" src="/js/jquery.bpopup.min.js"></script>
<script type="text/javascript" src="/js/select2.js"></script>
<script type="text/javascript" src="/js/jquery.showLoading.js"></script>
<!-- jquey.showLoading.js 호출 (admin.js 에서 사용 로딩바)  :  sjLee 2020/12/28 -->
<%--<script type="text/javascript" src="/js/admin.js"></script>--%>
<script src="/js/jquery-ui.min.js"></script>
<script src="/js/calendar.js"></script>
<script type="text/javascript" src="/js/web/apple/main.js"></script>
<!-- 상단 슬라이드 때문에 추가 -->

<!-- 차트  -->
<script type="text/javascript" src="/js/Chart.js"></script>
<script type="text/javascript" src="/js/Chart.min.js"></script>
<script type="text/javascript" src="/js/Chart.bundle.js"></script>
<script type="text/javascript" src="/js/Chart.bundle.min.js"></script>
<!-- //차트  -->

<!-- API -->
<script type="text/javascript" src="/js/web/common/api.js"></script>
<!-- 도움말 -->
<script type="text/javascript" src="/js/web/apple/help.js"></script>
<script type="text/javascript" src="/js/jquery.bpopup.min.js"></script>
<script type="text/javascript" src="/js/jquery-confirm.min.js"></script>

<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

<link rel="stylesheet" href="/css/web/apple/help.css" />

<!-- 도움말 사용 -->
<script src="/js/ap/hc/bootstrap.min.js"></script>
<!-- 도움말 사용 -->

<%--<!-- 공통 검색 폼-->--%>
<%--<script type="text/javascript" src="/js/web/apple/sub.js"></script>--%>
<%--<!-- 공통 검색 폼 -->--%>

</head>
<body>
<div id="skipArea">
	<a href="#container">본문으로 바로가기</a>
	<a href="#gnb">주메뉴 바로가기</a>
</div>

	<!-- left를 고정형으로 사용하고 싶다면  #wrap에 class='active'를 추가하기 -->
	<div id="wrap" class="active">
		<c:import url="header.jsp"/>
		<c:import url="left.jsp"/>
		<div id="container">
			<c:import url="slide.jsp"/>
			<div id="contents">
				<c:import url="/WEB-INF/views/${content}" />
			</div>
			<!-- FOOTER -->
			<c:import url="footer.jsp"/>
			<!-- // FOOTER -->
		</div>
	</div>
	<div class="loading" style="display:none">
		<div class="img">
			<p>
				<img src="/images/com/loding.gif" alt="로딩중입니다.잠시만 기다려주세요.">
			</p>
		</div>
		<h2>로딩중입니다.<span>잠시만 기다려주세요.</span></h2>
	</div>
	<!-- menuForm -->
<%--	<c:import url="/WEB-INF/jsp/nfu/la/common/menuForm.jsp" />--%>
	<!-- /menuForm -->
</body>
</html>