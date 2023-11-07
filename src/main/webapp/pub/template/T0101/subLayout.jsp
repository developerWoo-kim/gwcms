<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0101" />
<c:set var="layoutType" value="sub" />
<c:set var="schoolName" value="세종고등학교" />

<!DOCTYPE html>
<html lang="ko">
<c:import url="/pub/template/metaTag.jsp">
	<c:param name="templateType" value="${templateType}"/>
	<c:param name="layoutType" value="${layoutType}" /> 
	<c:param name="schoolName" value="${schoolName}" /> 
	<c:param name="code" value="1" />
</c:import>

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
	
	<c:import url="header.jsp">
		<c:param name="templateType" value="${templateType}"/> 
	</c:import>
	
	<!-- 컨테이너 -->
	<div id="sub_container">
		<!-- 서브 비주얼 -->
		<div class="subvisual"><img src="/images/template/${templateType}/sub/s_visual.png" alt="행복한 웃음을 찾아주는 교육의 장"></div>
		<!-- //서브 비주얼 -->

		<div class="subCntBody">
			<!-- 서브메뉴 -->
			<div id="lnb">
				<h2><span>메뉴명</span></h2>
				<nav>
					<ul class="dep01">
						<li><a href="" target="_self"><span>인사말</span></a></li>
						<li><a href="" target="_self"><span>연혁</span></a></li>
						<li class="active"><a href=""><span>교육방향</span></a> <!-- [P] 현재 메뉴 active 클래스 추가 -->
							<ul class="dep02">
								<li><a href="" target="_self"><span>교과활동</span></a></li>
								<li class="active"><a href="" target="_self"><span>교육목표</span></a></li> <!-- [P] 현재 메뉴 active 클래스 추가 -->
								<li><a href="" target="_blank" title="새창"><span>직업교육</span></a></li>
								<li><a href="" target="_self"><span>방과 후 교실</span></a>
									<ul class="dep03">
										<li><a href="" target="_self"><span>4차메뉴</span></a></li>
										<li><a href="" target="_self"><span>4차메뉴 4차메뉴 4차메뉴 4차메뉴</span></a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="" target="_self"><span>행정조직도</span></a></li>
						<li><a href="" target="_blank" title="새창"><span>행사소식안내</span></a></li>
						<li><a href="" target="_self"><span>게시판</span></a> 
							<ul class="dep02">
								<li><a href="" target="_self"><span>공지사항</span></a>
									<ul class="dep03">
										<li><a href="" target="_self"><span>4차메뉴</span></a></li>
										<li><a href="" target="_self"><span>4차메뉴 4차메뉴 4차메뉴 4차메뉴</span></a></li>
									</ul>
								</li>
								<li><a href="" target="_self"><span>가정통신문</span></a></li>
								<li><a href="" target="_self"><span>급식정보</span></a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
			<!-- //서브메뉴 -->

			<!-- 서브 영역 -->
			<div class="sub_container" id="subContent">
				<div class="subHeader">	
					<!-- location -->
					<div class="subLocation">
						<ul>
							<li><i class="xi-home" aria-hidden="true"></i>HOME</li>
							<li>학교소개</li>
							<li>교육방향</li>
						</ul>
					</div>
					<!-- //location -->

					<h2 id="pageTitle"><span>서브 메뉴명</span></h2>

					<!-- sns -->
					<div class="snsBox">
						<button type="button" class="btnShare"><i class="xi-share-alt-o"></i><em class="hid">SNS 공유영역 펼치기</em></button>
						<button type="button" class="btnPrint"><i class="xi-print"></i><em class="hid">인쇄</em></button>
						<div class="snsMore" id="snsMore">
							<p>
								<a href="" class="snsT" title="새창"><i class="xi-twitter"></i><em class="hid">트위터 공유</em></a>
								<a href="" class="snsK" title="새창"><i class="xi-kakaotalk"></i><em class="hid">카카오 공유</em></a>
								<a href="" class="snsF" title="새창"><i class="xi-facebook"></i><em class="hid">페이스북 공유</em></a>
								<a href="" class="snsIn" title="새창"><i class="xi-instagram"></i><em class="hid">인스타그램 공유</em></a>
								<a href="" class="snsClose"><i class="xi-close"></i><em class="hid">SNS 공유영역 닫기</em></a>
							</p>
						</div>
					</div>
					<!-- //sns -->
				</div>

				<div class="subContent">
					<!-- contents -->
						<c:import url="/pub/template/guide.jsp"></c:import>
					<!-- contents -->
				</div>
			</div>
			<!-- //서브 영역 -->
		</div>
	</div>
	
	<c:import url="footer.jsp"></c:import>
	
</div>
</body>
</html>
