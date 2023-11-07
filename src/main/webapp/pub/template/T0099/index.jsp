<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0099" />
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
            <div class="MC_box1">
                <!-- 메인비주얼 -->
                <div class="MVisual0099 visual">
                    <div class="slider" id="visualSlide">
                        <p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="생각이 바르고 실력을 갖춘 자랑스러운 학생"></p>
                        <p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="생각이 바르고 실력을 갖춘 자랑스러운 학생"></p>
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
					<!-- 게시판 -->
					<div class="notice0099">
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항</span></a></li>
								<li><a href="#notice2" class=""><span>자유게시판 </span></a></li>
								<li><a href="#notice3" class=""><span>게시판게시판</span></a></li>
							</ul>
						</div>
						
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>자율학교 우선전보 교사 임용 계획 공고</dt>
										<dd>
											<p>자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고</p>
											<span class="date"><i class="xi-time-o"></i>2022.03.23</span>
										</dd>
									</dl>
									<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
									<dl class="no_data" style="display: none;">
										<dt>데이터가 없습니다</dt>
										<dd><span class="date">-</span></dd>
									</dl>
								</a>
								<ul>
									<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020.03.30</span>
									</a></li>
								</ul>
								<a href="" class="btn_more" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
							<div class="list_box" id="notice2">
								<div class="topList">
									<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
									<dl class="no_data">
										<dt>데이터가 없습니다</dt>
										<dd><span class="date">-</span></dd>
									</dl>
								</div>
								<a href="" class="btn_more" title="자유게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
							<div class="list_box" id="notice3">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>11111학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
											학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
											<span class="date"><i class="xi-time-o"></i>2022.03.23</span>
										</dd>
									</dl>
									<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
									<dl class="no_data" style="display: none;">
										<dt>데이터가 없습니다</dt>
										<dd><span class="date">-</span></dd>
									</dl>
								</a>
								<ul>
									<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="자유게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<!-- //게시판1 -->
				</div>
	
				<div class="MC_box3">	
					<!-- 팝업존 -->
					<div class="pop0099 popupZone">
						<h2 class="heading">팝업존</h2>
						<div class="control arwShow">
							<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-long-arrow-left" aria-hidden="true"></i></a>
							<p class="page"><strong>1</strong> / <span> 3</span></p>
							<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-long-arrow-right" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a> 
						</div>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>

				<div class="MC_box4">
					<!-- 캘린더 -->
					<div class="pop_schedule0099">
						<div class="tit_wrap">
							<h2><span>행사일정</span></h2>
							<p class="month">2022. <em>02</em></p>	
						</div>
						<div class="inBox">
							<div class="sche_list">
								<a href="" class="prev"><span class="hid">이전달</span><i class="xi-arrow-left" aria-hidden="true"></i></a>
								<ul>
									<li><a href="" class="today">01</a></li><!-- [p] 오늘날짜 : today -->
									<li><span>02</span></li>
									<li><span>03</span></li>
									<li><span>04</span></li>
									<li><span class="sat">05</span></li><!-- [p] 토요일 : sat -->
									<li><span class="sun">06</span></li><!-- [p] 일요일 : sun -->
									<li><span>07</span></li>
									<li><span>08</span></li>
									<li><a href="" class="event">09</a></li><!-- [p] 행사 : event -->
									<li><span>10</span></li>
									<li><span>11</span></li>
									<li><a href="" class="event">12</a></li><!-- [p] 행사 : event -->
									<li><span>13</span></li>
									<li><span>14</span></li>
									<li><span>15</span></li>
									<li><span>16</span></li>
									<li><span>17</span></li>
									<li><span>18</span></li>
									<li><span>19</span></li>
									<li><span>20</span></li>
									<li><span>21</span></li>
									<li><span>22</span></li>
									<li><span>23</span></li>
									<li><span>24</span></li>
									<li><span>25</span></li>
									<li><span>26</span></li>
									<li><span>27</span></li>
									<li><span>28</span></li>
									<li><span>29</span></li>
									<li><span>30</span></li>
									<li><span>31</span></li>
								</ul>
								<a href="" class="next"><span class="hid">다음달</span><i class="xi-arrow-right" aria-hidden="true"></i></a>
							</div>
							<div class="lst">
								<ul>
									<li><a href=""><span>10</span>직업체험활동 직업체험활동</a></li>
									<li><a href=""><span>15</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>19</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>20</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>20</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>20</span>특별활동의 날 특별활동의 날</a></li>
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
						</div>
						
						<a href="" class="btn_more" title="행사일정 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
					</div>
					<!-- //캘린더 -->
				</div>
			</div>
		</div>

		<div class="MC_wrap3">
			<div class="container">
                <div class="MC_box5">				
					<!-- 식단 -->
					<div class="meal_menu0099">
						<h2 class="heading">오늘의 식단</h2>
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><em>중식</em> <span>984</span> Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal"><em>석식</em> <span>1,216</span> Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<img src="/images/template/${templateType}/main/0099_img_meal.png" alt="">
						<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><span class="hid">오늘의 식단 더보기</span></a>
					</div>
					<!-- //식단 -->
				</div>
				<div class="MC_box6">		
					<!-- 갤러리 -->
					<div class="gallery0099">
						<h2 class="heading">포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0099_thumb_01.png" alt=""></p>
									<p class="txt">3월의 독서왕 선정3월의 독서왕 선정3월의 독서왕 선정3월의 독서왕 선정</p>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0099_thumb_02.png" alt=""></p>
									<p class="txt">친구사랑 캠페인</p>
								</a></li>
                                <li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0099_thumb_03.png" alt=""></p>
									<p class="txt">재미있는 과학시간</p>
								</a></li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">
									<p>데이터가 없습니다</p>
								</li>
							</ul>							
						</div>
						<a href="" class="btn_more"><span class="hid">포토갤러리</span>  <i class="xi-plus" aria-hidden="true"></i></a>
					</div>
					<!-- //갤러리 -->	
				</div>		
				<div class="MC_box7">
					<!-- 바로가기1 -->
					<div class="M_link0099">
						<ul>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0099_ico01_link01.png" alt=""></p>
								<span>교육방향교육방향교육방향교육방향교육방향교육방향</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0099_ico01_link02.png" alt=""></p>
								<span>각종양식</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0099_ico01_link03.png" alt=""></p>
								<span>방과후학교</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0099_ico01_link04.png" alt=""></p>
								<span>학교알리미</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0099_ico01_link05.png" alt=""></p>
								<span>에듀넷</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0099_ico01_link06.png" alt=""></p>
								<span>홍보동영상</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0099_ico01_link07.png" alt=""></p>
								<span>사이버스쿨</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0099_ico01_link08.png" alt=""></p>
								<span>교수학습지원센터</span>
							</a></li>
						</ul>
					</div>
					<!-- //바로가기1 -->
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