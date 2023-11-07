<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
<jsp:include page="header.jsp">
	<jsp:param name="templateType" value="T3001" />
	<jsp:param name="schoolName" value="T3001" />
	<jsp:param name="layoutType" value="sub" />
</jsp:include>
<%
	/* templateType : 템플릿 타입 설정 */
	/* schoolName : 학교명 설정 */
	/* layoutType : 레이아웃 타입 설정 */
	/* code : 메뉴코드 */
%>
--%>

<!doctype html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title><c:out value="${htmlTitle}"/></title>
		<!-- css -->
		<link rel="stylesheet" href="/00_common/css/basic.css" media="all">
		<link rel="stylesheet" href="/00_common/css/template/T3001_layout.css" media="all">

		<!-- sub css -->
		<link href="/css/template/01001/con_com.css" rel="stylesheet">
		<link rel="stylesheet" href="/00_common/css/con_com.css" media="all">
		<link rel="stylesheet" href="/css/T3001/sub.css" media="all">
		<link href="/css/web/common/sub.css" rel="stylesheet"> <!-- 회원가입 -->
		<!-- //sub css -->

		<link rel="stylesheet" href="/css/T3001/layout_cnt.css" media="all">
		<!-- //css -->

		<!-- js -->
		<script src="/00_common/js/jquery.min.js"></script>
		<script src="/00_common/js/jquery.bxslider.js"></script>
		<script src="/00_common/js/common.js"></script>

		<script src="/00_common/js/con_com.js"></script>
		<script src="/js/T3001/sub.js"></script>
		<!-- //js -->

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
	<body>
		<!-- 바로가기 -->
		<div id="skipArea">
			<a href="#container">본문으로 바로가기</a><a href="#gnb">메인메뉴 바로가기</a>
		</div>
		<!-- //바로가기 -->
		<div id="wrap">

			<!-- 헤더-->
			<c:import url="header.jsp"/>
			<!-- //헤더 -->

			<!-- container -->
			<div id="container">

				<!-- [P] 서브페이지인 경우에만 생성되는 조건식 -->
				<div class="box_mot_1">
					<!-- 컨테이너 -->
					<div id="sub_container">
						<!-- 서브 비주얼 -->
						<c:import url="subVisual.jsp" />
						<!-- //서브 비주얼 -->
						<div class="sub_content">
							<!-- 왼쪽메뉴 시작 -->
							<c:import url="left.jsp"/>
							<!-- //왼쪽메뉴 끝 -->

							<!-- sub Content -->
							<section id="subContent">
								<%-- <c:import url="navi.jsp" /> --%>
								<!-- 서브 페이지 내용 -->
								<div class="subContent_body">
									<%-- <c:import url="sns.jsp"/> --%>
									<h2 id="pageTitle"><c:out value="${menuTitle}" escapeXml="false"/></h2>

									<!-- 페이지뷰 -->
									<div>
										<c:import url="tab.jsp"/>
										<c:import url="/WEB-INF/jsp/${content}"/>
									</div>
									<!-- //페이지뷰 -->
								</div>
								<!-- //서브 페이지 내용 끝 -->
								<!-- 자료관리자 -->
								<c:import url="/WEB-INF/jsp/nfu/ap/dt/dtaView.jsp" />
								<!--// 자료관리자 -->
	                        	<!-- 만족도평가 -->
			                   	<c:import url="/WEB-INF/jsp/nfu/ap/cs/csnstView.jsp"/>
	                        	<!-- 만족도평가 -->
							</section>
							<!-- //sub Content 끝 -->
						</div>
					</div>
					<!-- //컨테이너 -->
				</div>
			</div>
			<!-- //container -->

			<!-- footer -->
			<c:import url="footer.jsp"/>
			<!-- // footer -->
		</div>

        <script type="text/javascript" src="/js/common-scroll.js"></script>
        <script type="text/javascript" src="/js/common.js"></script>
		<!-- menuForm -->
        <c:import url="/WEB-INF/views/dpcms/layout/common/menuForm.jsp" />
        <!-- /menuForm -->
	</body>
</html>
