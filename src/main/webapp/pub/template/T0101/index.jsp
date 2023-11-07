<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0101" />
<c:set var="layoutType" value="main" />
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
<div id="wrap" class="openPop"> <!--[D] 팝업이 있을때 #wrap에 클래스 openPop 추가-->

	<c:if test="${layoutType == 'main'}">
		<c:import url="../popup.jsp"></c:import>
	</c:if>
	<div class="temp0101_wrap">
		<c:import url="main_header.jsp">
			<c:param name="templateType" value="${templateType}"/> 
			<c:param name="layoutType" value="${layoutType}"/> 
		</c:import>
		
		<!-- 컨테이너 -->
		<div id="container">	  
			<div class="MC_wrap1 container"> 
				<div class="MC_box1">
					<!-- 메인비주얼 -->
					<div class="MVisual0101 visual">
						<div class="slider" id="visualSlide">
							<p class="item">
								<span class="text_box">
									<em class="text_sub">아름다움을 지향하는 세종예술고등학교</em>
									<em class="text_tit">SEJONG ARTS HIGH SCHOOL</em>
									<em class="text_sub2">새로운 도전으로 꿈의 향해 도약하는 세종예술고등학교</em>
									<a href="">학교소개 바로가기</a>
								</span>
								<img src="/images/template/${templateType}/main/m_visual01.png" alt="학교소개">
							</p>
							<p class="item">
								<span class="text_box">
									<em class="text_sub">아름다움을 지향하는 세종예술고등학교</em>
									<em class="text_tit">DEPARTMENT OF MUSIC</em>
									<em class="text_sub2">다양한 음악활동을 통하여 음악성을 계발하고 창의적인 표현능력과 감상능력을 키워 조화롭고 원만한 인격을 지닌 글로벌 예술인을 육성한다.</em>
									<a href="">음악과 바로가기</a>
								</span>
								<img src="/images/template/${templateType}/main/m_visual02.png" alt="음악과">
							</p>
							<p class="item">
								<span class="text_box">
									<em class="text_sub">아름다움을 지향하는 세종예술고등학교</em>
									<em class="text_tit">DEPARTMENT OF ART</em>
									<em class="text_sub2">한국화, 서양화, 조소, 디자인의 4개 전공을 중심으로 다양한 표현활동을 통한 실기력 향상과 창의력을 신장하고 전인적인 예술인을 육성하며 미래지향적 융합적 사고력의 미술인재를 양성한다.</em>
									<a href="">미술과 바로가기</a>
								</span>
								<img src="/images/template/${templateType}/main/m_visual03.png" alt="미술과">
							</p>
							<p class="item">
								<span class="text_box">
									<em class="text_sub">아름다움을 지향하는 세종예술고등학교</em>
									<em class="text_tit">DEPARTMENT OF APPLIED MUSIC</em>
									<em class="text_sub2">인성을 기반으로 높은 실력을 갖춘 문화예술인을 양성하는 것을 목적으로 창의적 표현능력을 지닌 차세대 실용음악의 리더를 육성한다.</em>
									<a href="">실용음악과 바로가기</a>
								</span>
								<img src="/images/template/${templateType}/main/m_visual04.png" alt="실용음악과">
							</p>
							<p class="item">
								<span class="text_box">
									<em class="text_sub">아름다움을 지향하는 세종예술고등학교</em>
									<em class="text_tit">DEPARTMENT OF PERFORMING ART</em>
									<em class="text_sub2">종합예술인 연극, 뮤지컬, 영화, 드라마 등 다양한 장르의 분야에 필요한 연기, 노래, 춤 등을 체계적으로 실습할 뿐 아니라 심도 있는 이론공부를 통해 보다 전문적인 연기자를 양성한다.</em>
									<a href="">공연예술과 바로가기</a>
								</span>
								<img src="/images/template/${templateType}/main/m_visual05.png" alt="공연예술과">
							</p>
						</div>
						<div class="control">
							<a href="" class="prev"><span class="hid">비주얼 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">비주얼 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play"><span class="hid">비주얼 재생</span><i class="xi-play" aria-hidden="true"></i></a>
							<a href="" class="next"><span class="hid">비주얼 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
						</div>
					</div>
					<!-- //메인비주얼 -->
				</div>
			</div>
			<div class="MC_wrap2">  
				<div class="container">
					<div class="MC_box2">
						<!-- 바로가기 -->
						<div class="M_link0101">
							<h2 class="hid">바로가기</h2>
							<ul>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0101_link01_01.png" alt=""></p>
										<p class="txt first">
											<span class="tit">
												<em>DEPARTMENT OF MUSIC</em>
												음악
											</span>
											<span class="more">MORE</span>
										</p>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0101_link01_02.png" alt=""></p>
										<p class="txt first">
											<span class="tit">
												<em>DEPARTMENT OF ART</em>
												미술
											</span>
											<span class="more">MORE</span>
										</p>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0101_link01_03.png" alt=""></p>
										<p class="txt">
											<span class="tit">
												<em>DEPARTMENT OF APPLIED MUSIC</em>
												실용음악
											</span>
											<span class="more">MORE</span>
										</p>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0101_link01_04.png" alt=""></p>
										<p class="txt">
											<span class="tit">
												<em>DEPARTMENT OF PERFOMING ART</em>
												공연예술
											</span>
											<span class="more">MORE</span>
										</p>
									</a>
								</li> 
							</ul>
						</div>
						<!-- //바로가기 -->
					</div> 

					<div class="MC_box3">
						<!-- 게시판 -->
						<div class="notice0101"> 
							<div class="titTab">
								<ul>
									<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항</span></a></li>
									<li><a href="#notice2" class=""><span>가정통신문</span></a></li>
									<li><a href="#notice3" class=""><span>행복배움나눔터</span></a></li>
								</ul>
							</div> 
							<div class="tabWrap">
								<div class="list_box on" id="notice1"> 
									<ul>
										<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
											<p>학교운영위원회 (2022학년도 4회) 회의 진행학교운영위원회 (2022학년도 4회) 회의 진행학교운영위원회 (2022학년도 4회) 회의 진행학교운영위원회 (2022학년도 4회) 회의 진행학교운영위원회 (2022학년도 4회) 회의 진행</p>
											<span class="date">2022.03.23</span>
										</a></li> 
										<li><a href="" >
											<p>2022학년도 세입 세출 본예산서 2022학년도 세입 세출 본예산서</p>
											<span class="date">2022.03.23</span>
										</a></li>
										<li><a href="" >
											<p>2022학년도 세입 세출 본예산서 2022학년도 세입 세출 본예산서</p>
											<span class="date">2022.03.23</span>
										</a></li>
										<li><a href="" >
											<p>2022학년도 세입 세출 본예산서 2022학년도 세입 세출 본예산서</p>
											<span class="date">2022.03.23</span>
										</a></li>
										<li><a href="" >
											<p>2022학년도 세입 세출 본예산서 2022학년도 세입 세출 본예산서</p>
											<span class="date">2022.03.23</span>
										</a></li>
										<li><a href="" >
											<p>2022학년도 세입 세출 본예산서 2022학년도 세입 세출 본예산서</p>
											<span class="date">2022.03.23</span>
										</a></li>
										<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
										<li class="no_data" style="display: none;">데이터가 없습니다.</li>
									</ul>
									<a href="" class="btn_more"><i class="xi-long-arrow-right" aria-hidden="true"></i><em class="hid">공지사항 더보기</em></a> 
								</div>
								<div class="list_box" id="notice2"> 
									<ul>
										<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
											<p>학교운영위원회</p>
											<span class="date">2022.03.23</span>
										</a></li> 
										<li><a href="" >
											<p>2022학년도 세입 세출 본예산서 2022학년도 세입 세출 본예산서</p>
											<span class="date">2022.03.23</span>
										</a></li>
										<li><a href="" >
											<p>2022학년도 세입 세출 본예산서 2022학년도 세입 세출 본예산서</p>
											<span class="date">2022.03.23</span>
										</a></li>
										<li><a href="" >
											<p>2022학년도 세입 세출 본예산서 2022학년도 세입 세출 본예산서</p>
											<span class="date">2022.03.23</span>
										</a></li>
										<li><a href="" >
											<p>2022학년도 세입 세출 본예산서 2022학년도 세입 세출 본예산서</p>
											<span class="date">2022.03.23</span>
										</a></li>
										<li><a href="" >
											<p>2022학년도 세입 세출 본예산서 2022학년도 세입 세출 본예산서</p>
											<span class="date">2022.03.23</span>
										</a></li>
										<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
										<li class="no_data" style="display: none;">데이터가 없습니다.</li>
									</ul>
									<a href="" class="btn_more"><i class="xi-long-arrow-right" aria-hidden="true"></i><em class="hid">가정통신문 더보기</em></a> 
								</div>
								<div class="list_box" id="notice3"> 
									<ul>
										<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
										<li class="no_data">데이터가 없습니다.</li>
									</ul>
									<a href="" class="btn_more"><i class="xi-long-arrow-right" aria-hidden="true"></i><em class="hid">자유게시판 더보기</em></a> 
								</div>
							</div>
						</div>
						<!-- //게시판 -->
					</div>   

					<div class="MC_box4">
						<!-- 바로가기2-->
						<div class="M_link0101_02">
							<h2 class="hid">바로가기2</h2>
							<ul>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0101_link02_01.png" alt="예다움 학교 사회적 협동 조합 밴드 바로가기"></p>
										<span class="hid">예다움 학교 사회적 협동 조합 밴드 바로가기</span>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0101_link02_02.png" alt="세종예술고 유튜브채널 바로가기"></p>
										<span class="hid">세종예술고 유튜브채널 바로가기</span>
									</a>
								</li> 
							</ul>
						</div>
						<!-- //바로가기2 -->
					</div> 
				</div>              
			</div>
			<!-- 배너존 -->
			<!-- 배너존 학교측에서 요청시에 활성화 되어야함 : 기능은 추가해주세요! -->
			<!-- <div class="banner_zone">
				<div class="container">
					<h2>배너모음</h2>
					<p class="btn arwShow">
						<a href="#bannerPrev" class="prev" title="배너 이전"><i class="xi-angle-left" aria-hidden="true"></i></a>
						<a href="#bannerStop" class="stop" title="배너 정지"><i class="xi-pause" aria-hidden="true"></i></a>
						<a href="#bannerStop" class="play" title="배너 재생"><i class="xi-play" aria-hidden="true"></i></a>
						<a href="#bannerNext" class="next" title="배너 다음"><i class="xi-angle-right" aria-hidden="true"></i></a>
						<a href="#bannerList" class="list dialogAllBannerList" title="배너 리스트"><i class="xi-bars" aria-hidden="true"></i></a>
					</p>
					<div class="bnWrap" id="bnSlider">
						<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_01.gif" alt=""></a></p>
						<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_02.gif" alt=""></a></p>
						<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_03.gif" alt=""></a></p>
						<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_04.gif" alt=""></a></p>
						<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_05.gif" alt=""></a></p>
						<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_03.gif" alt=""></a></p>
					</div>
				</div>
			</div> -->
			<!--// 배너존 --> 
		</div>
		<!-- // 컨테이너 --> 
		
		<c:import url="footer.jsp"></c:import>
	</div>
</div>
</body>
</html>