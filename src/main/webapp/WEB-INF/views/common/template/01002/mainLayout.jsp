<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
<jsp:include page="header.jsp">	
	<jsp:param name="templateType" value="T3001" />
	<jsp:param name="schoolName" value="T3001" />
	<jsp:param name="layoutType" value="main" /> 
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
		
		<!-- main css -->
		<link rel="stylesheet" href="/00_common/css/template/T3001.css" media="all"> 
		<link rel="stylesheet" href="/00_common/css/template/T3001_widget.css" media="all">
		<link rel="stylesheet" href="/css/T3001/main_cnt.css" media="all"> 
		<!-- //main css -->
		
		<link rel="stylesheet" href="/css/T3001/layout_cnt.css" media="all"> 
		<!-- //css -->

		<!-- js -->
		<script src="/00_common/js/jquery.min.js"></script> 
		<script src="/00_common/js/jquery.bxslider.js"></script> 
		<script src="/00_common/js/common.js"></script> 
		
		<script src="/js/T3001/main.js"></script> <!-- 메인비주얼 bxSlider, 팝업존, 배너존 -->
		<!-- //js -->
		
		<!-- [위젯 002]  -->
	    <script type="text/javascript" src="/js/common.js"></script> <!-- 팝업  -->
	    <link rel="stylesheet" href="/css/com/jquery/jquery-ui.min.css"/> <!-- 팝업  -->
	    <script type="text/javascript" src="/js/jquery-ui.min.js"></script> <!-- 팝업  -->
	    <script type="text/javascript" src="/js/jquery.form.min.js"></script><!-- ajaxSubmit function 사용-->
	    <script type="text/javascript" src="/js/jquery.bpopup.min.js"></script><!-- .bPopup({}) function 사용 -->
	    <!-- //[위젯 002]  -->
	    
	    <!-- 개발자 추가 -->		
	    <script type="text/javascript" src="/js/co/js_developer.js"></script><!-- 개발자 js -->
	    <!-- //개발자 추가 -->
	    
	    <!-- 리스트 팝업 헤더 -->
	    <c:import url="/WEB-INF/views/dpcms/layout/common/popHeader.jsp" /> 
	    <link rel="stylesheet" href="/css/web/common/main.css" media="all"><!-- 팝업리스트 디자인  -->
	    <!-- //리스트 팝업 헤더 -->
	</head> 
	<body>
		<!-- 바로가기 -->
		<div id="skipArea"> 
			<a href="#container">본문으로 바로가기</a><a href="#gnb">메인메뉴 바로가기</a>
		</div>
		<!-- //바로가기 -->
		
		<div id="wrap">
			
			<!-- [P] 메인페이지인 경우에만 생성되는 조건식 -->
			
			<!-- 헤더-->
			<c:import url="header.jsp"/>
			<!-- //헤더 -->
			
			<!-- container -->
			<div id="container">			
				<c:import url="main.jsp"/>
			</div>
			<!-- //container --> 				

			<!-- footer -->
			<c:import url="footer.jsp"/>
			<!-- //footer -->
		</div>
		
		<!-- [위젯 001] -->
		<%--		<c:import url="/WEB-INF/jsp/nfu/ap/wm/widgForm.jsp" />--%>
		<!-- //[위젯 001] -->
	</body>
</html>		
