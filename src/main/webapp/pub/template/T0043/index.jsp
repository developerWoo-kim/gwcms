<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0043" />
<c:set var="layoutType" value="main" />
<c:set var="schoolName" value="세종유치원" />

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
			<div class="MC_cont">
				<div class="MC_box1">
					<!-- 메인비주얼 -->
					<div class="MVisual0043 visual">
						<div class="slider" id="visualSlide">
							<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="나의 친구를 사랑하고 배려와 나눔을 아는 어린이"></p>
							<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="나의 친구를 사랑하고 배려와 나눔을 아는 어린이"></p>
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
					<!-- 바로가기1 -->
					<div class="M_link0043">
						<ul>
							<li>
								<a href="">
									<p><img src="/images/template/${templateType}/main/0043_ico01_link01.png" alt=""></p>
									<span>학습자료실 학습자료실</span>
								</a>
							</li>
							<li>
								<a href="">
									<p><img src="/images/template/${templateType}/main/0043_ico01_link02.png" alt=""></p>
									<span>방과후학교</span>
								</a>
							</li>
							<li>
								<a href="">
									<p><img src="/images/template/${templateType}/main/0043_ico01_link03.png" alt=""></p>
									<span>정보공개</span>
								</a>
							</li>
							<li>
								<a href="">
									<p><img src="/images/template/${templateType}/main/0043_ico01_link04.png" alt=""></p>
									<span>사이버도서관</span>
								</a>
							</li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
			</div>

			<div class="container">
				<div class="MC_box3">
					<!-- 식단 -->
					<div class="meal_menu0043">
						<h2>오늘의 식단</h2>
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><span>점심</span> <em>984 Kcal</em></dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal"><span>저녁</span> <em>684 Kcal</em></dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<img src="/images/template/${templateType}/main/0043_img_meal.png" alt="">
						<a href="" class="btn_more"><span class="hid">오늘의 식단더보기</span><i class="xi-plus" aria-hidden="true"></i></a> 
					</div>
					<!-- //식단 -->
				</div>
	
				<div class="MC_box4">						
					<!-- 게시판 -->
					<div class="notice0043">
						<h2 class="hid">공지사항</h2>
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2"><span>가정통신문</span></a></li>
								<li><a href="#notice3"><span>게시판게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<li class="new"><a href=""><!-- 새글 a 'new' class 추가-->
										<strong>학생봉사활동 안내 자료 및 각종 서식</strong>
										<p>자세한 사항을 붙임 파일을 참고해주세요</p>
										<span>2022.02.20</span>
									</a></li>
									<li><a href="">
										<strong>신학기 등교를 대비한 건강상대 자가진단 방법 안내</strong>
										<p>신학기 등교를 대비한 건강 상태 자가진단 참여방법과 코로나 감염 방지 안내</p>
										<span>2022.02.20</span>
									</a></li>
									<li><a href="">
										<strong>공지사항</strong>
										<p>신학기 등교를 대비한 건강 상태 자가진단 참여방법과 코로나 감염 방지 안내</p>
										<span>2022.02.20</span>
									</a></li>
									<li><a href="">
										<strong>신학기 등교를 대비한 건강상대 자가진단 방법 안내</strong>
										<p>신학기 등교를 대비한 건강 상태 자가진단 참여방법과 코로나 감염 방지 안내</p>
										<span>2022.02.20</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">공지사항 더보기</span><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice2">
								<ul>
									<li><a href="">
										<strong>학생봉사활동 안내 자료 및 각종 서식</strong>
										<p>자세한 사항을 붙임 파일을 참고해주세요</p>
										<span>2022.02.20</span>
									</a></li>
									<li><a href="">
										<strong>신학기 등교를 대비한 건강상대 자가진단 방법 안내</strong>
										<p>신학기 등교를 대비한 건강 상태 자가진단 참여방법과 코로나 감염 방지 안내</p>
										<span>2022.02.20</span>
									</a></li>
									<li><a href="">
										<strong>가정통신문 가정통신문</strong>
										<p>신학기 등교를 대비한 건강 상태 자가진단 참여방법과 코로나 감염 방지 안내</p>
										<span>2022.02.20</span>
									</a></li>
									<li><a href="">
										<strong>신학기 등교를 대비한 건강상대 자가진단 방법 안내</strong>
										<p>신학기 등교를 대비한 건강 상태 자가진단 참여방법과 코로나 감염 방지 안내</p>
										<span>2022.02.20</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">가정통신문 더보기</span><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<li><a href="">
										<strong>학생봉사활동 안내 자료 및 각종 서식</strong>
										<p>자세한 사항을 붙임 파일을 참고해주세요</p>
										<span>2022.02.20</span>
									</a></li>
									<li><a href="">
										<strong>신학기 등교를 대비한 건강상대 자가진단 방법 안내</strong>
										<p>신학기 등교를 대비한 건강 상태 자가진단 참여방법과 코로나 감염 방지 안내</p>
										<span>2022.02.20</span>
									</a></li>
									<li><a href="">
										<strong>게시판 게시판</strong>
										<p>게시판</p>
										<span>2022.02.20</span>
									</a></li>
									<li><a href="">
										<strong>신학기 등교를 대비한 건강상대 자가진단 방법 안내</strong>
										<p>신학기 등교를 대비한 건강 상태 자가진단 참여방법과 코로나 감염 방지 안내</p>
										<span>2022.02.20</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">게시판 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>  
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>
			</div>
		</div>
		
		<div class="MC_box5">
			<!-- 갤러리 -->
			<div class="gallery0043">
				<div class="tit_wrap">
					<h2>포토갤러리</h2>
				</div>
				<div class="list_box">
					<ul>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0043_thumb_01.png" alt=""></p>
								<span>창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이</span>
							</a>
						</li>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0043_thumb_02.png" alt=""></p>
								<span>교외 현장 체험학습</span>
							</a>
						</li>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0043_thumb_03.png" alt=""></p>
								<span>교외 현장 체험학습</span>
							</a>
						</li>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0043_thumb_04.png" alt=""></p>
								<span>교외 현장 체험학습</span>
							</a>
						</li>
						<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
						<li class="no_data" style="display:none;">
							<p>데이터가 없습니다</p>
						</li>
					</ul>							
				</div>
				<a href="" class="btn_more" title="갤러리 더보기">more</a>
			</div>
			<!-- //갤러리 -->
		</div>
		
		<div class="MC_wrap2 container">

			<div class="MC_box6">
				<!-- 캘린더 -->
				<div class="pop_schedule0043">
					<h2>이달의 행사</h2>
					<div class="sche_wrap">
						<p class="month">
							<span>2022<em>03</em></span>
						</p>
						<div class="sche_date">			
							<a href="" class="prev"><span class="hid">이전달</span><i class="xi-arrow-left" aria-hidden="true"></i></a>
							<ul>
								<li><span class="today">월<em>01</em></span></li><!-- [p] 오늘날짜 : today -->
								<li><span>화<em>02</em></span></li>
								<li><span>수<em>03</em></span></li>
								<li><span>목<em>04</em></span></li>
								<li><span class="sat">금<em>05</em></span></li><!-- [p] 토요일 : sat -->
								<li><span class="sun">토<em>06</em></span></li><!-- [p] 일요일 : sun -->
								<li><span>월<em>07</em></span></li>
								<li><span>화<em>08</em></span></li>
								<li><a href="" class="event">수<em>09</em></a></li><!-- [p] 행사 : event -->
								<li><span>목<em>10</em></span></li>
								<li><span class="sat">금<em>11</em></span></li>
								<li><span class="sun event">토<em>12</em></span></li><!-- [p] 행사 : event -->
								<li><span>월<em>13</em></span></li>
								<li><span>화<em>14</em></span></li>
								<li><span>수<em>15</em></span></li>
								<li><span>목<em>16</em></span></li>
								<li><span>금<em>17</em></span></li>
								<li><span>토<em>18</em></span></li>
								<li><span>일<em>19</em></span></li>
								<li><span>월<em>20</em></span></li>
								<li><span>화<em>21</em></span></li>
								<li><span>수<em>22</em></span></li>
								<li><span>목<em>23</em></span></li>
								<li><span>금<em>24</em></span></li>
								<li><span>토<em>25</em></span></li>
								<li><span>일<em>26</em></span></li>
								<li><span>월<em>27</em></span></li>
								<li><span>화<em>28</em></span></li>
								<li><span>수<em>29</em></span></li>
								<li><span>목<em>30</em></span></li>
								<li><span>금<em>31</em></span></li>
							</ul>
							<a href="" class="next"><span class="hid">다음달</span><i class="xi-arrow-right" aria-hidden="true"></i></a>
						</div>
					</div>
						
					<div class="lst">
						<ul>
							<li><a href=""><span>01</span>직업체험활동 직업체험활동</a></li>
							<li><a href=""><span>09</span>소방안전교육의 날 소방안전교육의 날</a></li>
							<li><a href=""><span>10</span>특별활동의 날 특별활동의 날</a></li>
							<li><a href=""><span>23</span>특별활동의 날 특별활동의 날</a></li>
							<li><a href=""><span>24</span>특별활동의 날 특별활동의 날</a></li>
							<li><a href=""><span>25</span>특별활동의 날 특별활동의 날</a></li>
							<li><a href=""><span>25</span>특별활동의 날 특별활동의 날</a></li>
							<li class="no_data" style="display: none;">데이터가 없습니다.</li>
						</ul>
					</div>
					<a href="" class="btn_more"><span class="hid">일정 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
				</div>
				<!-- //캘린더 -->
			</div>
	
			<div class="MC_box7">		
				<!-- 팝업존 -->
				<div class="pop0043 popupZone">
					<h2>팝업존</h2>
					<div class="control arwShow">
						<p class="page"><strong>1</strong><span>3</span></p>
						<a href="" class="prev" title="팝업존 이전"><i class="xi-angle-left" aria-hidden="true"></i></a>
						<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
						<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
						<a href="" class="next" title="팝업존 다음"><i class="xi-angle-right" aria-hidden="true"></i></a>
					</div>
					<div class="pop_img" id="popupSlide">
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지 방문을 환영합니다."></a></p>
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup02.png" alt="홈페이지 방문을 환영합니다."></a></p>
					</div>
				</div>
				<!-- //팝업존 -->
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