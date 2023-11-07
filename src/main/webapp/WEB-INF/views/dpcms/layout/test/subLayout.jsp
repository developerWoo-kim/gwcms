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
        <meta name="keywords" content="${htmlTitle }">
		<meta name="description" content="${htmlTitle } 홈페이지에 오신 것을 환영합니다. ">
        <link href="/css/template/01001/basic.css" rel="stylesheet">
        <link href="/css/template/01001/con_com.css" rel="stylesheet">
        <!-- <link href="/css/web/apple/board.css" rel="stylesheet"> -->
        <link href="/css/template/01001/layout.css" rel="stylesheet">
        <link href="/css/template/01001/sub.css" rel="stylesheet">
        <link href="/css/web/common/sub.css" rel="stylesheet"> <!-- 회원가입 -->
		<link href="/css/co/na/ntt.css" rel="stylesheet">
		<link rel="stylesheet" href="/css/web/apple/board.css" media="all"> <!-- 게시판 디자인 -->
		<link rel="stylesheet" href="/00_common/css/con_com.css" media="all">

		<!-- 충돌 -->		
		<script type="text/javascript" src="/js/jquery.min.js"></script>
		<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
		<script type="text/javascript" src="/js/template/01001/common.js"></script>
		<!-- 충돌 -->

		<link rel="stylesheet" href="/css/com/calendar/jquery-ui.css" type="text/css"><!-- 게시글 달력 2021/06/02추가 -->
        <script type="text/javascript" src="/js/html5shiv.js"></script>
		<script type="text/javascript" src="/js/template/01001/jquery.bxslider.js"></script>
		<!--비주얼 롤링 -->
		<script type="text/javascript" src="/js/template/01001/slick-1.8.1/slick/slick.js"></script>
		<script type="text/javascript" src="/js/template/01001/sub.js"></script>
		<!--비주얼 롤링 & 팝업레이어 -->
		
        <script type="text/javascript" src="/js/jquery.form.min.js"></script>
		<script type="text/javascript" src="/js/jquery.bpopup.min.js"></script>
	</head>
    <body>
    	<!-- 바로가기 -->
        <div id="skipArea">
            <a href="#gnb">메인메뉴 바로가기</a> 
            <a href="#container">본문으로 바로가기</a>
        </div>
        <!-- //바로가기 -->
        <div id="wrap">
        	<!-- header  -->
            <c:import url="header.jsp" />   
            <!-- //header  --> 
            <div class="box_mot_1"> 
	            <!-- container -->
	            <div id="sub_container">
	            	<!-- 서브 비주얼 -->
	            	<c:import url="subVisual.jsp" />
                    <!-- //서브비주얼 -->
					<div class="sub_content" style="z-index: 0">
						<!-- 왼쪽메뉴 시작 -->
		                <c:import url="left.jsp" />   
		                <!-- //왼쪽메뉴 끝 --> 
	                	<!-- sub Content -->
                		<section id="subContent">
                			<c:import url="navi.jsp" /> 
	                		<!-- 서브 페이지 내용 -->
	                		<div class="subContent_body"> 
	                			<c:import url="sns.jsp" />
	                			<div>
                                	<!-- 서브콘텐츠 -->
                                	<c:import url="tab.jsp" />
									<c:import url="/WEB-INF/jsp/${content}" />
									<!-- //서브콘텐츠 -->
                                </div>
	                     	</div>			
		                    <!-- //서브 페이지 내용 끝 -->
		                   	<c:import url="/WEB-INF/jsp/nfu/ap/dt/dtaView.jsp" />
		                   	
                        	<!-- 만족도평가 -->
		                   	<c:import url="/WEB-INF/jsp/nfu/ap/cs/csnstView.jsp"/>
                        	<!-- 만족도평가 -->
                        	
	                 	</section>		
	                 	<!-- //sub Content 끝 -->		
					</div>
					<footer id="footer">
						<!-- footer -->
			            <c:import url="footer.jsp" />   
			            <!-- // footer -->
		            </footer>
				</div>	
	            <!-- //container -->
	    	</div>
        </div>
        <script type="text/javascript" src="/js/common-scroll.js"></script>
        <script type="text/javascript" src="/js/common.js"></script>
        
        <!-- menuForm -->
        <c:import url="/WEB-INF/views/dpcms/layout/common/menuForm.jsp" />
        <!-- /menuForm -->
        
    </body>
</html>



