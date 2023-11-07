<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
		<title><c:out value="${htmlTitle }" /></title>
        <meta name="keywords" content="<c:out value="${htmlTitle }" />">
        <meta name="description" content="<c:out value="${htmlTitle }" />">		
		<!-- <link rel="stylesheet" href="/css/00_common/layout/A_01.css" media="all"> --><!-- A-01 box CSS-->
		<!-- <link rel="stylesheet" href="/css/00_common/layout/A_01_wiget.css" media="all"> --><!-- A-01 wiget CSS-->
		<!-- <link rel="stylesheet" href="/css/00_common/layout/A_layout.css" media="all"> --><!-- A layout CSS-->
		<!-- <link rel="stylesheet" href="/css/00_common/layout/A_01_wiget.css" media="all"> --><!-- A Widget CSS-->
		<!-- <link rel="stylesheet" href="/css/00_common/layout/common_v1.css" media="all"> --><!-- 대표, 템플릿 전체 공통 css -->
		
		<!-- <link rel="stylesheet" href="/css/00_common/layout/webfont.css" media="all"> -->
		<!-- <link rel="stylesheet" href="/css/web/smaplesiteA01/main_cnt.css" media="all"> -->
		
		<link rel="stylesheet" href="/css/template/01001/basic.css" media="all">
		<link rel="stylesheet" href="/css/template/01001/layout.css" media="all">
		<link rel="stylesheet" href="/css/template/01001/main.css" media="all">
		<link rel="stylesheet" href="/css/template/01001/main_widget.css" media="all">

		<!-- 충돌 -->
		<script type="text/javascript" src="/js/template/01001/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="/js/template/01001/common.js"></script>
		<!-- 충돌 -->

		
		<script type="text/javascript" src="/js/template/01001/jquery.bxslider.js"></script>
		<!--비주얼 롤링 -->
		<script type="text/javascript" src="/js/template/01001/slick-1.8.1/slick/slick.js"></script>
		<script type="text/javascript" src="/js/template/01001/main.js"></script>
		<!--비주얼 롤링 & 팝업레이어 -->
		

		<!-- <script type="text/javascript" src="/js/00_common/layout/jquery.min.1.11.0.js"></script>
		<script type="text/javascript" src="/js/00_common/layout/A01_main.js"></script>
		<script type="text/javascript" src="/js/00_common/layout/A_common.js"></script>
		<script type="text/javascript" src="/js/00_common/layout/html5shiv.js"></script>

		<script type='text/javascript' src="/js/00_common/layout/jquery.cookie.js"></script>  
        <script type="text/javascript" src="/js/00_common/layout/modernizr-2.6.2.min.js"></script>
		<script type="text/javascript" src="/js/00_common/layout/slick.min.js"></script> -->
		
		<!-- 개발자 추가 -->
		<link rel="stylesheet" href="/css/00_common/layout/con_com.css" media="all"><!-- 버튼디자인  -->	
		<link rel="stylesheet" href="/css/co/lo/common.css" media="all"><!-- 위젯 -->
		<link rel="stylesheet" href="/css/web/common/main.css" media="all"><!-- 팝업리스트  -->
		
		<!-- 위젯 002  -->
	    <script type="text/javascript" src="/js/common.js"></script> <!-- 팝업  -->
	    <link rel="stylesheet" href="/css/com/jquery/jquery-ui.min.css"/> <!-- 팝업  -->
	    <script type="text/javascript" src="/js/jquery-ui.min.js"></script> <!-- 팝업  -->
	    <script type="text/javascript" src="/js/jquery.form.min.js"></script><!-- ajaxSubmit function 사용-->
	    <script type="text/javascript" src="/js/jquery.bpopup.min.js"></script><!-- .bPopup({}) function 사용 -->
	    <!-- //위젯 002  -->
		<!-- //개발자 추가 -->
		
	    <!-- 리스트 팝업 헤더 -->
	    <c:import url="/WEB-INF/views/dpcms/layout/common/popHeader.jsp" /> 
	    <!-- //리스트 팝업 헤더 -->

	</head>
    <body>
	       
    	<!-- 바로가기 -->
        <div id="skipArea">
            <a href="#gnb">메인메뉴 바로가기</a> 
            <a href="#container">본문으로 바로가기</a>
        </div>
        <!-- //바로가기 -->
        <div id="wrap">
        	<!-- header -->
			<c:import url="header.jsp" />   
            <!-- //header  -->
            
            <!-- container -->
            <a href="#" name="container" title="메인콘텐츠 바로가기" class="hid"></a>
            <div id="container"> 
				<c:import url="main.jsp" />   
			</div>
            <!-- //container -->
            
            <footer id="footer">
	            <!-- footer -->
	            <c:import url="footer.jsp" />   
	            <!-- // footer -->
            </footer>
        </div>
        
		<!-- 위젯 001 -->
		<%--		<c:import url="/WEB-INF/jsp/nfu/ap/wm/widgForm.jsp" />--%>
		<!-- //위젯 001 -->
    </body>
</html>



