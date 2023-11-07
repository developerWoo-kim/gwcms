<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0060" />
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
		
		<div class="MC_wrap1">
		
			<div class="container">
			
				<div class="MC_box1">
					<!-- 메인비주얼 -->
					<div class="MVisual0060 visual">
						<div class="slider" id="visualSlide">
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="면학·성실·봉사 사랑과 존경이 가득한 배움의 학교 | 우리학교 홈페이지 방문을 환영합니다."> 
							</p>
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="면학·성실·봉사 사랑과 존경이 가득한 배움의 학교 | 우리학교 홈페이지 방문을 환영합니다."> 
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
				
				<div class="MC_box2">
					<!-- 게시판 -->
					<div class="notice0060">
						<h2 class="hid">공지사항</h2>
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항</span></a></li>
								<li><a href="#notice2"><span>가정통신문가정통신문가정통신문가정통신문 </span></a></li>
								<li><a href="#notice3"><span>게시판게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<li class="new"><a href=""><!-- 새글 li 'new' class 추가-->
										<strong>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</strong>
										<p>내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다</p>
										<span>2022.03.30</span>
									</a></li>
									<li><a href="">
										<strong>2022학년도 신입생 온라인 예비 소집안내</strong>
										<p>2022학년도 신입생 온라인 예비 소집안내</p>
										<span>2022.03.30</span>
									</a></li>
									<li><a href="">
										<strong>2022학년도 비대면 수업시 유의사항</strong>
										<p>2022학년도 비대면 수업시 유의사항을 안내해드립니다</p>
										<span>2022.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice2">
								<ul>
									<li><a href="">
										<strong>2222유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</strong>
										<p>내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다</p>
										<span>2022.03.30</span>
									</a></li>
									<li><a href="">
										<strong>2022학년도 신입생 온라인 예비 소집안내</strong>
										<p>2022학년도 신입생 온라인 예비 소집안내</p>
										<span>2022.03.30</span>
									</a></li>
									<li><a href="">
										<strong>2022학년도 비대면 수업시 유의사항</strong>
										<p>2022학년도 비대면 수업시 유의사항을 안내해드립니다</p>
										<span>2022.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<li><a href="">
										<strong>33333유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</strong>
										<p>내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다</p>
										<span>2022.03.30</span>
									</a></li>
									<li><a href="">
										<strong>2022학년도 신입생 온라인 예비 소집안내</strong>
										<p>2022학년도 신입생 온라인 예비 소집안내</p>
										<span>2022.03.30</span>
									</a></li>
									<li><a href="">
										<strong>2022학년도 비대면 수업시 유의사항</strong>
										<p>2022학년도 비대면 수업시 유의사항을 안내해드립니다</p>
										<span>2022.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>
			</div>			
		</div> 
		
		<div class="MC_wrap2">  
			<div class="container">
				
				<div class="MC_box3">						
					<!-- 식단 -->
					<div class="meal_menu0060">  
						<div class="tit_wrap">
							<h2>오늘의 식단</h2> 
						</div>
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal">점심 <em>984 Kcal</em></dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal">저녁 <em>684 Kcal</em></dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div> 
						<img src="/images/template/${templateType}/main/0060_img_meal.png" alt="">			
						<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><em class="hid">오늘의 식단 더보기</em></a>			
					</div>
					<!-- //식단 -->
				</div>
				
				<div class="MC_box4">
					<!-- 캘린더 -->
					<div class="pop_schedule0060">
						<h2>행사일정</h2>
						<div class="sche_wrap">
							<p class="month">
								<span>2022<em>04</em></span>
							</p>
							<div class="sche_date">			
								<a href="" class="prev"><span class="hid">이전달</span></a>
								<ul>
									<li><span class="sun">일<em>3</em></span></li><!-- [p] 일요일 : sun -->
									<li><span><a href="" class="event">월<em>4</em></a></span></li><!-- [p] 행사 : event -->
									<li><span class="today">화<em>5</em></span></li><!-- [p] 오늘날짜 : today -->
									<li><span><a href="" class="event">수<em>6</em></a></span></li>
									<li><span><a href="" class="event">목<em>7</em></a></span></li>
									<li><span>금<em>8</em></span></li>
									<li><span class="sat">토<em>9</em></span></li><!-- [p] 토요일 : sat -->
									<li><span class="sun">일<em>10</em></span></li>
									<li><span><a href="" class="event">월<em>09</em></a></span></li><!-- [p] 행사 : event -->
									<li><span>화<em>10</em></span></li>
									<li><span>수<em>11</em></span></li>
									<li><span>목<em>12</em></span></li>
									<li><span>금<em>13</em></span></li>
									<li><span>토<em>14</em></span></li>
									<li><span>일<em>15</em></span></li>
									<li><span>월<em>16</em></span></li>
									<li><span>화<em>17</em></span></li>
									<li><span>수<em>18</em></span></li>
									<li><span>목<em>19</em></span></li>
									<li><span>금<em>20</em></span></li>
									<li><span>토<em>21</em></span></li>
									<li><span>일<em>22</em></span></li>
									<li><span>월<em>23</em></span></li>
									<li><span>화<em>24</em></span></li>
									<li><span>수<em>25</em></span></li>
									<li><span>목<em>26</em></span></li>
									<li><span>금<em>27</em></span></li>
									<li><span>토<em>28</em></span></li>
									<li><span>일<em>29</em></span></li>
									<li><span>월<em>30</em></span></li>
									<li><span>화<em>31</em></span></li>
								</ul>
								<a href="" class="next"><span class="hid">다음달</span></a>
							</div>

							<div class="lst">
								<ul>
									<li><a href=""><span>1</span>직업체험활동 직업체험활동</a></li>
									<li><a href=""><span>9</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>10</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>23</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>24</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>25</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>25</span>특별활동의 날 특별활동의 날</a></li>
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
						</div>
						<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><span class="hid">일정 더보기</span></a> 
					</div>
					<!-- //캘린더 -->
				</div>   

				<div class="MC_box5">
					<!-- 바로가기1 -->
					<div class="M_link0060">
						<h2 class="hid">바로가기</h2>
						<ul>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0060_ico01_link01.png" alt=""></span>
									<p><span>방과후학교 방과후학교</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0060_ico01_link02.png" alt=""></span>
									<p><span>디지털도서관</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0060_ico01_link03.png" alt=""></span>
									<p><span>학교알리미</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0060_ico01_link04.png" alt=""></span>
									<p><span>학부모서비스</span></p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0060_ico01_link05.png" alt=""></span>
									<p><span>학급홈페이지</span></p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0060_ico01_link06.png" alt=""></span>
									<p><span>에듀넷</span></p>
								</a>
							</li> 
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
			</div>
		</div>
		
		<div class="MC_wrap3">
			<div class="container">
				<div class="MC_box6">		
					<!-- 갤러리 -->
					<div class="gallery0060">
						<div class="tit_wrap">
							<h2>학교앨범</h2>
						</div>
						
						<div class="list_box">  
							<ul>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0060_thumb_01.png" alt=""></div>
									<div class="txt">
										<p>서로 도와가며 공부하는 자율학습 시간</p>
									</div>
								</a></li>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0060_thumb_02.png" alt=""></div> 
									<div class="txt">
										<p>가족과 함께 떠나는 현장체험학습 즐거운 모습</p>
									</div>
								</a></li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">
									<p>데이터가 없습니다</p>
								</li>
							</ul>
						</div> 
						<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><em class="hid">포토갤러리 더보기</em></a>
					</div>
					<!-- //갤러리 -->
				</div> 

				<div class="MC_box7">
					<!-- 팝업존 -->
					<div class="pop0060 popupZone"> 
						<div class="tit_wrap">
							<h2>팝업존</h2>  
							<p class="page"><strong>1</strong><span>3</span></p>
							<a href="" class="btn_more"><em class="hid">팝업존 더보기</em></a>
						</div>
						
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
						</div>
						<div class="nss_pg arwShow">
							<a href="" class="prev"><span class="hid">팝업존 이전</span></a>
							<a href="" class="stop"><i class="xi-pause" aria-hidden="true"></i><span class="hid">팝업존 정지</span></a>
							<a href="" class="play"><i class="xi-play" aria-hidden="true"></i><span class="hid">팝업존 재생</span></a>
							<a href="" class="next"><span class="hid">팝업존 다음</span></a>
						</div>
					</div>
					<!-- //팝업존 -->
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