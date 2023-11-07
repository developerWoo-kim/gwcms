<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta http-equiv="Cache-Control" content="no-cache"/>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0"/>
	<title>${htmlTitle}에 오신것을 환영합니다</title>
	<link rel=" shortcut icon" href="/00_common/images/favicon.ico">
	<link rel="icon" href="/00_common/images/favicon.ico">


	<!-- 레이아웃 CSS -->
	<link rel="stylesheet" href="/00_common/css/layout.css" media="all">
	<link rel="stylesheet" href="/00_common/css/template/T0010_layout.css" media="all">
	<!-- [P] 서브페이지인 경우에만 생성되는 조건식 -->
	<link rel="stylesheet" href="/00_common/css/con_com.css" media="all">
	<link rel="stylesheet" href="/00_common/css/sub_com.css" media="all">
	<link rel="stylesheet" href="/00_common/css/template/T0010.css" media="all">
	<!-- //레이아웃 CSS -->

	<!-- 레이아웃 커스텀 CSS -->
	<link rel="stylesheet" href="/css/web/<c:out value="${ctx}"/>/sub_cnt.css" media="all">
	<link rel="stylesheet" href="/css/web/<c:out value="${ctx}"/>/layout_cnt.css" media="all">
	<!-- //레이아웃 커스텀 CSS -->

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
	<!-- //공통파일 js -->

	<!-- 레이아웃 js -->
	<script src="/js/template/T0010/sub.js"></script>
	<!-- //레이아웃 js -->

	<script type="text/javascript" src="/js/common-scroll.js"></script>
	<script type="text/javascript" src="/js/common.js"></script>

	<!-- 추가  -->
	<script type="text/javascript" src="/js/jquery-ui.min.js"></script> <!-- datePicker js -->
	<script type="text/javascript" src="/js/jquery.form.js"></script> <!-- ajax -->
	<link href="/00_common/css/ntt.css" rel="stylesheet"> <!-- 게시판 -->
	<!-- //추가  -->

	<!-- 개발자 추가 -->
	<script type="text/javascript" src="/js/co/js_developer.js"></script><!-- 개발자 js -->
	<!-- //개발자 추가 -->

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
<div id="wrap">

	<c:import url="header.jsp"/>

	<!-- 컨테이너 -->
	<div id="sub_container">
		<!--subImgStart-->
			<div class="subvisual"><img src="/images/web/T0010/sub/s_visual.png" alt="행복한 웃음을 찾아주는 교육의 장"></div>
		<!--subImgEnd-->

		<div class="subCntBody">
			<!-- 서브메뉴 -->
			<c:import url="left.jsp"/>
			<!-- //서브메뉴 -->

			<!-- 서브 영역 -->
			<div class="sub_container" id="subContent">
				<div class="subHeader">
					<!-- location -->
					<c:import url="navi.jsp"/>
					<!-- //location -->
					<h2 id="pageTitle"><c:out value="${menuTitle}" escapeXml="false"/></h2>
					<!-- sns -->
					<c:import url="/WEB-INF/views/dpcms/layout/common/commonSns.jsp" />
					<!-- //sns -->
				</div>

				<div class="subContent">
					<!-- contents -->
						<c:import url="tab.jsp"/>
						<c:import url="/WEB-INF/views/${content}"/>
						<!-- 자료관리자 -->
<%--						<c:import url="/WEB-INF/jsp/nfu/ap/dt/dtaView.jsp" />--%>
<%--						<!--// 자료관리자 -->--%>
<%--						<!-- 만족도평가 -->--%>
<%--						<c:import url="/WEB-INF/jsp/nfu/ap/cs/csnstView.jsp"/>--%>
						<!-- 만족도평가 -->
					<!-- contents -->
				</div>
			</div>
			<!-- //서브 영역 -->
		</div>
	</div>

	<c:import url="footer.jsp"></c:import>

</div>
	<!-- menuForm -->
	<c:import url="/WEB-INF/views/dpcms/layout/common/menuForm.jsp" />
	<!-- /menuForm -->
</body>
</html>

