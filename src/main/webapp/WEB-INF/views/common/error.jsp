<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%
response.setStatus(200);

// server info
String serverName = (String)request.getServerName();
// port info
int serverPort = request.getServerPort();
// domn info(scheme limit)
String serverNames = serverName;
if(serverPort > 80 && serverPort != 443){
	serverNames += ":"+serverPort;
}

request.setAttribute("sNm",serverNames);
%>

<c:choose>
	<c:when test="${fn:indexOf(sNm, 'smart-i.sje.go.kr') > -1}">
		<!doctype html>
		<html>
			<head>
				<meta charset="utf-8">
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
				<title>스마트아이 서비스 종료 안내</title>
				<link rel="stylesheet" href="/00_common/css/svcend.css" media="all">
			</head>

			<body>
				<!-- 팝업 -->
				<div id="wrap">
					<div class="pop_up">
						<h1><img src="/00_common/images/svcend/logo.png" alt="세종학교"></h1>
						<h2><strong>스마트아이</strong> 서비스 종료 안내</h2>
							<p>그동안 이용하셨던 스마트아이 서비스가 종료 되었음을 알려드립니다.</p>
							<ul>
								<li>종료날짜 : 2023. 2. 17.(금) 19:00</li>
								<li>그동안 저희 서비스를 이용해 주셔서 감사합니다.</li>
							</ul>
						<div class="srchBtn">
							<a href="https://schoolhp.sje.go.kr/schulSearch.jsp" class="btn_point">
								<strong>학교 검색 바로가기</strong>
								<span class="glan"></span>
							</a>
					    </div>

						<img src="/00_common/images/svcend/pop_img4.png" class="pop_img" alt="스마트아이 로고">
					</div>

					<div class="f_txt">
						<address>[우 30019] 세종특별자치시 조치원읍 내창천로 48 TEL:044-902-13000 FAX:044-902-1309</address>
						<p class="copyright">Copyrightⓒ 세종특별자치시교육청교육원. All Rights Reserved.</p>
					</div>
				</div>
				<!-- //팝업 -->
			</body>
		</html>
	</c:when>

	<c:otherwise>
		<!doctype html>
		<html>
			<head>
				<meta charset="utf-8">
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
				<title>디펍(주)</title>
				<link rel="stylesheet" href="/00_common/css/error.css" media="all">
			</head>

			<body>
			<!-- 팝업 -->
			<div id="wrap">
				<div class="error">
					<p><img src="/00_common/images/error/pop_img5.png" class="error_img" alt=""> </p>
					<h2>이용에 불편을 드려 죄송합니다.<br>요청하신 페이지를 찾을 수 없습니다.</h2>
					<p>찾고계시는 페이지가 존재하지 않거나 잘못된 링크를 사용하셨습니다.<br>다시한번 확인해 주시고 이용하여 주시기 바랍니다.<br>감사합니다.</p>
					<div class="srchBtn">
						<a href="javascript:history.back();" class="btn_blL">이전페이지</a>
				    </div>
				</div>
			</div>
			<!-- //팝업 -->
			</body>
		</html>
	</c:otherwise>
</c:choose>
