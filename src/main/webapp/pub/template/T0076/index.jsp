<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0076" />
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
	
	<c:import url="header.jsp">
		<c:param name="templateType" value="${templateType}"/> 
		<c:param name="layoutType" value="${layoutType}"/> 
	</c:import>
	
	<!-- 컨테이너 -->
	<div id="container">
	
		<div class="MC_wrap1">
			<div class="container"> 
				<div class="MC_box1">
					<!-- 메인비주얼 -->
					<div class="MVisual0076 visual">
						<div class="slider" id="visualSlide">
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="함께 배우며 꿈을 키우는 행복한 배움터. 우리학교에 오신 것을 환영합니다."> 
							</p>
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="함께 배우며 꿈을 키우는 행복한 배움터. 우리학교에 오신 것을 환영합니다."> 
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
		</div>  

		<div class="MC_wrap2">
			<div class="container">
				<div class="MC_box3">
					<!-- 게시판 -->
					<div class="notice0076">
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항</span></a></li>
								<li><a href="#notice2" class=""><span>가정통신문</span></a></li>
								<li><a href="#notice3" class=""><span>자유게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on" id="notice1"> 
								<ul> 
									<li>
										<a href="" class="new">
											<span class="date">03.11</span>
											<p class="tit">2022학년도 학부모회 개최 및 임원 목록 확인 2022학년도 학부모회 개최 및 임원 목록 확인 2022학년도 학부모회 개최 및 임원 목록 확인 2022학년도 학부모회 개최 및 임원 목록 확인</p>
											<p class="txt">붙임 파일을 확인하시기 바랍니다 붙임 파일을 확인하시기 바랍니다 붙임 파일을 확인하시기 바랍니다 붙임 파일을 확인하시기 바랍니다 붙임 파일을 확인하시기 바랍니다 붙임 파일을 확인하시기 바랍니다</p>
										</a>
									</li>
									<li>
										<a href="">
											<span class="date">03.11</span>
											<p class="tit">2022학년도 학부모회 개최 및 임원 목록...</p>
											<p class="txt">붙임 파일을 확인하시기 바랍니다 학부모회 개최 및 임원 목록 파일을 확인하시고 다음 회의 기간...</p>
										</a>
									</li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy1"><em>더보기</em><img src="/images/template/T0076/main/0076_btn_more.png" alt=""><em class="hid">더보기</em></a> 
							</div>
							<div class="list_box" id="notice2"> 
								<ul> 
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy1"><em>더보기</em><img src="/images/template/T0076/main/0076_btn_more.png" alt=""><em class="hid">더보기</em></a> 
							</div>
							<div class="list_box" id="notice3"> 
								<ul> 
									<li>
										<a href="">
											<span class="date">03.11</span>
											<p class="tit">자유게시판자유게시판자유게시판자유게시판</p>
											<p class="txt">붙임 파일을 확인하시기 바랍니다 학부모회 개최 및 임원 목록 파일을 확인하시고 다음 회의 기간...</p>
										</a>
									</li>
									<li>
										<a href="">
											<span class="date">03.11</span>
											<p class="tit">2022학년도 학부모회 개최 및 임원 목록...</p>
											<p class="txt">붙임 파일을 확인하시기 바랍니다 학부모회 개최 및 임원 목록 파일을 확인하시고 다음 회의 기간...</p>
										</a>
									</li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy1"><em>더보기</em><img src="/images/template/T0076/main/0076_btn_more.png" alt=""><em class="hid">더보기</em></a> 
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>

				<div class="MC_box4">		
					<!-- 팝업존 -->
					<div class="pop0076 popupZone"> 
						<h2>팝업존</h2>  
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0076_popup.jpg" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0076_popup.jpg" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
						</div>
						<div class="nss_pg arwShow">
							<p class="page"><strong>1</strong><span>3</span></p>
							<a href="" class="prev"><i class="xi-arrow-left" aria-hidden="true"></i><span class="hid">팝업존 이전</span></a>
							<a href="" class="stop"><i class="xi-pause" aria-hidden="true"></i><span class="hid">팝업존 정지</span></a>
							<a href="" class="play"><i class="xi-play" aria-hidden="true"></i><span class="hid">팝업존 재생</span></a>
							<a href="" class="next"><i class="xi-arrow-right" aria-hidden="true"></i><span class="hid">팝업존 다음</span></a>
						</div>
					</div>
					<!-- //팝업존 -->
				</div> 

				<div class="MC_box5">
					<!-- 캘린더 -->
					<div class="pop_schedule0076">
						<div class="tit_wrap">
							<h2>학교행사</h2>
							<span class="date">2022.<em>02</em></span>
						</div>
						
						<div class="sche_wrap">
							<div class="sche_list">
								<a href="" class="prev"><i class="xi-arrow-left" aria-hidden="true"></i><em class="hid">이전달</em></a>
								<ul>
									<li><span>1</span></li>
									<li><a href="" class="event">2</a></li>
									<li><a href="" class="today">3</a></li>
									<li><span>4</span></li>
									<li><a href="" class="event">5</a></li>
									<li><span>6</span></li>
									<li><a href="" class="event">7</a></li>
									<li><span>8</span></li>
									<li><span>9</span></li>
									<li><span>10</span></li>
									<li><a href="" class="event">11</a></li>
									<li><span>12</span></li>
									<li><a href="" class="event">13</a></li>
									<li><a href="" class="event">14</a></li>
									<li><span>15</span></li>
									<li><span>16</span></li>
									<li><span>17</span></li>
									<li><span>18</span></li>
									<li><span>19</span></li>
									<li><a href="" class="event">20</a></li>
									<li><span>21</span></li>
									<li><span>22</span></li>
									<li><a href="" class="event">23</a></li>
									<li><span>24</span></li>
									<li><a href="" class="event">25</a></li>
									<li><span>26</span></li>
									<li><span>27</span></li>
									<li><span>28</span></li>
									<li><span>29</span></li>
									<li><span>30</span></li>
									<li><a href="" class="event">31</a></li>
								</ul>
								<a href="" class="next"><i class="xi-arrow-right" aria-hidden="true"></i><em class="hid">다음달</em></a>
							</div>
							<ul class="lst">
								<li>
									<a href=""><span>03.15</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>03.15</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>03.16</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>03.17</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>03.17</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>03.17</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>03.17</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more btnTy2"><em class="hid">일정 더보기</em></a>
					</div>
					<!-- //캘린더 -->
				</div>
			</div>
		</div>
			
		<div class="MC_wrap3">  
			<div class="container">
				<div class="MC_box2">
					<!-- 바로가기1 -->
					<div class="M_link0076">
						<h2 class="hid">바로가기</h2>
						<ul>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0076_link01_icn01.png" alt=""></span>
									<p><span>방과후학교 방과후학교</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0076_link01_icn02.png" alt=""></span>
									<p><span>디지털도서관</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0076_link01_icn03.png" alt=""></span>
									<p><span>학교알리미</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0076_link01_icn04.png" alt=""></span>
									<p><span>학부모서비스</span></p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0076_link01_icn05.png" alt=""></span>
									<p><span>학급홈페이지</span></p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0076_link01_icn06.png" alt=""></span>
									<p><span>에듀넷</span></p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0076_link01_icn07.png" alt=""></span>
									<p><span>에듀넷</span></p>
								</a>
							</li> 
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
				
				<div class="MC_box6">
					<!-- 갤러리 -->
					<div class="gallery0076">
						<h2>학교앨범</h2>						
						<div class="list_box">  
							<ul>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0076_thumb01.jpg" alt=""></div>
									<p class="txt">즐겁게 등교하는 학생들 즐겁게 등교하는 학생들 즐겁게 등교하는 학생들</p>
								</a></li>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0076_thumb02.jpg" alt=""></div> 
									<p class="txt">방과후학교 수업현장</p>
								</a></li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">
									<p>데이터가 없습니다</p>
								</li>
							</ul>
						</div> 
						<a href="" class="btn_more btnTy1"><em>더보기</em><img src="/images/template/T0076/main/0076_btn_more.png" alt=""><em class="hid">포토갤러리 더보기</em></a>
					</div>
					<!-- //갤러리 -->
				</div>  

				<div class="MC_box7">						
					<!-- 식단 -->
					<div class="meal_menu0076">  
						<h2>오늘의 식단</h2> 
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><em>점심</em> 984Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal"><em>저녁</em> 984Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
							<img src="/images/template/${templateType}/main/0076_meal.png" alt="">
						</div> 
						<a href="" class="btn_more btnTy2"><em class="hid">오늘의 식단 더보기</em></a>
					</div>
					<!-- //식단 -->
				</div>
			</div>
		</div>
		
		<!-- 배너존 -->
		<div class="banner_zone">
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
					<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_01.gif" alt="교육기부 바로가기"></a></p>
					<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_02.gif" alt="온라인행정심판 바로가기"></a></p>
					<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_03.gif" alt="사랑티켓 바로가기"></a></p>
					<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_04.gif" alt="학부모On누리 바로가기"></a></p>
					<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_05.gif" alt="EBSi 바로가기"></a></p>
					<p class="item"><a href=""><img src="/images/template/${templateType}/main/ban_03.gif" alt="사랑티켓 바로가기"></a></p>
				</div>
			</div>
		</div>
		<!--// 배너존 --> 
	</div>
	<!-- // 컨테이너 --> 
	
	<c:import url="footer.jsp"></c:import>
	
</div>
</body>
</html>