<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0053" />
<c:set var="layoutType" value="main" />
<c:set var="schoolName" value="세종중학교" />

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

		<div class="MC_box1">
			<!-- 메인비주얼 -->
			<div class="MVisual0053 visual">
				<div class="slider" id="visualSlide">
					<p class="item">
						<img src="/images/template/${templateType}/main/m_visual.png" alt="생각이 바르고 실력을 갖춘 자랑스러운 학생">
					</p>
					<p class="item">
						<img src="/images/template/${templateType}/main/m_visual.png" alt="생각이 바르고 실력을 갖춘 자랑스러운 학생">
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
		
		 <div class="MC_wrap1">
			<div class="container">
				<div class="MC_box2">
					<!-- 바로가기1 -->
					<div class="M_link0053">
						<ul>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0053_ico01_link01.png" alt=""></p>
									<span><em>교육방향교육방향교육방향교육방향교육방향</em></span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0053_ico01_link02.png" alt=""></p>
									<span><em>각종양식</em></span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0053_ico01_link03.png" alt=""></p>
									<span><em>방과후 학교</em></span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0053_ico01_link04.png" alt=""></p>
									<span><em>학교알리미</em></span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0053_ico01_link05.png" alt=""></p>
									<span><em>에듀넷</em></span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0053_ico01_link06.png" alt=""></p>
									<span><em>홍보동영상</em></span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0053_ico01_link07.png" alt=""></p>
									<span><em>사이버스쿨</em></span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0053_ico01_link08.png" alt=""></p>
									<span><em>학습센터</em></span>
								</a>
							</li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
			</div>
		</div>
		
		<div class="MC_wrap2">
			<div class="container">
				<div class="MC_box3">
					<!-- 게시판 -->
					<div class="notice0053">
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2"><span>가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문 </span></a></li>
								<li><a href="#notice3"><span>게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<!-- 새글 li 'new' class 추가-->
									<li class="new">
										<a href="">
											<p>11창의인성레터 1호 안내</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p>제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 ㅍ</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p>상반기 재능 장학생 선발 공고지</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p>학생회장단 선거 계획</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p>학생회장단 선거 계획</p>
											<span>2022.03.24</span>
										</a>
									</li>
								</ul>
								<a href="" class="btn_more1"><span class="hid">공지사항 더보기</span><em>더보기</em><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
							<div class="list_box" id="notice2">
								<ul>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data">
										<p>데이터가 없습니다</p>
									</li>
								</ul>
								<a href="" class="btn_more1"><span class="hid">가정통신문 더보기</span><em>더보기</em><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<li>
										<a href="">
											<p>33창의인성레터 1호 안내</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p>제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 ㅍ</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p>상반기 재능 장학생 선발 공고지</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p>학생회장단 선거 계획</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p>학생회장단 선거 계획</p>
											<span>2022.03.24</span>
										</a>
									</li>
								</ul>
								<a href="" class="btn_more1"><span class="hid">게시판 더보기</span><em>더보기</em><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>
				
				 <div class="MC_box4">
					<!-- 캘린더 -->
					<div class="pop_schedule0053">
						<h2 class="heading">행사일정</h2>
						<div class="sche_wrap">	
							<p class="month"><span>2022.<em>03</em></span></p>							
							<div class="sche_list">
								<a href="" class="prev"><span class="hid">이전달</span></a>
								<ul>
									<li><span class="today"><a href="">01</a></span></li><!-- [p] 오늘날짜 : today -->
									<li><span>02</span></li>
									<li><span>03</span></li>
									<li><span>04</span></li>
									<li><span class="sat"><a href="">05</a></span></li><!-- [p] 토요일 : sat -->
									<li><span class="sun"><a href="">06</a></span></li><!-- [p] 일요일 : sun -->
									<li><span>07</span></li>
									<li><span>08</span></li>
									<li><span>08</span></li>
									<li><span class="event"><a href="">09</a></span></li><!-- [p] 행사 : event -->
									<li><span>10</span></li>
									<li><span class="sat"><a href="">11</a></span></li>
									<li><span class="sun event"><a href="">12</a></span></li><!-- [p] 행사 : event -->
									<li><span>13</span></li>
									<li><span>14</span></li>
									<li><span>15</span></li>
									<li><span>16</span></li>
									<li><span>17</span></li>
									<li><span class="sat"><a href="">18</a></span></li>
									<li><span class="sun"><a href="">19</a></span></li>
									<li><span>20</span></li>
									<li><span>21</span></li>
									<li><span>22</span></li>
									<li><span>23</span></li>
									<li><span>24</span></li>
									<li><span class="sat"><a href="">25</a></span></li>
									<li><span class="sun"><a href="">26</a></span></li>
									<li><span>27</span></li>
									<li><span>28</span></li>
									<li><span>29</span></li>
									<li><span>30</span></li>
									<li><span>31</span></li>
								</ul>
								<a href="" class="next"><span class="hid">다음달</span></a>
							</div>
						</div>
						<div class="lst">
							<span class="img"><img src="/images/template/${templateType}/main/0053_img_cal.png" alt=""></span>
							<ul>
								<li><a href=""><span>02</span>직업체험활동 직업체험활동</a></li>
								<li><a href=""><span>15</span>소방안전교육의 날 소방안전교육의 날</a></li>
								<li><a href=""><span>19</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>20</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>20</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>20</span>특별활동의 날 특별활동의 날</a></li>
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more2"><i class="xi-plus" aria-hidden="true"></i><em class="hid">행사일정 더보기</em></a>
					</div>
					<!-- //캘린더 -->
				</div>
				
			</div>
		</div>
		
		<div class="MC_wrap3">
			<div class="container">
				<div class="MC_box5">
					<!-- 식단 -->
					<div class="meal_menu0053">
						<h2 class="heading"><span>오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단</span></h2>
						<div class="inner" tabindex="0">
							<ul>
							   <li>
								   <dl>
									   <dt class="kcal"><span><em>점심</em> 984 Kcal</span></dt>
									   <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기,홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기 </dd>
								   </dl>
							   </li>
							   <li>
								   <dl>
									   <dt class="kcal"><span><em>저녁</em> 984 Kcal</span></dt>
									   <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
								   </dl>
							   </li>
							   <!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
							   <li class="no_data" style="display:none;">데이터가 없습니다.</li>
						   </ul>
						</div>
						<p class="img"><img src="/images/template/${templateType}/main/0053_img_meal.png" alt=""></p>
						<a href="" class="btn_more2"><span class="hid">오늘의 식단 더보기</span><i class="xi-plus" aria-hidden="true"></i></a> 
					</div>
					<!-- //식단 -->
				</div>
				
				<div class="MC_box6">
					<!-- 팝업존 -->
					<div class="pop0053 popupZone">
						<h2 class="heading">팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존</h2>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원홈페이지를 방문을 환영합니다." /></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원홈페이지를 방문을 환영합니다." /></a></p>
						</div>

						<div class="control">
							<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-long-arrow-left" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
							<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-long-arrow-right" aria-hidden="true"></i></a>
							<p class="page"><strong></strong><span></span></p>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>
				
				<div class="MC_box7">
					<!-- 갤러리 -->
					<div class="gallery0053">
						<h2 class="heading">포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li>
									<a href="">
										<p class="img">
											<img src="/images/template/${templateType}/main/0053_thumb_01.png" alt="">
										</p>
										<span class="txt">제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이</span>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img">
											<img src="/images/template/${templateType}/main/0053_thumb_02.png" alt="">
										</p>
										<span class="txt">자연과 함께하는 현장학습</span>
									</a>
								</li>
								<li class="no_data" style="display: none;">
									<p>데이터가 없습니다.</p>
								</li>
							</ul>
						</div>
						<a href="" class="btn_more1"><span class="hid">갤러리 더보기</span><em>more</em><i class="xi-plus" aria-hidden="true"></i></a>
					</div>
					<!-- //갤러리 -->
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