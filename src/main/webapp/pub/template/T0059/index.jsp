<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0059" />
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
			<div class="MC_box1">
				<!-- 메인비주얼 -->
				<div class="MVisual0059 visual">
					<div class="slider" id="visualSlide">
						<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="나의 친구를 사랑하고 배려와 나눔을 아는 어린이."></p>
						<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="나의 친구를 사랑하고 배려와 나눔을 아는 어린이."></p>
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
			<div class="container">
				<div class="MC_box2">
					<!-- 팝업존 -->
					<div class="pop0059 popupZone">
						<div class="tit_wrap">
							<h2>팝업존</h2>
							<div class="control arwShow">
								<p class="page"><strong>1</strong> / <span>3</span></p>
								<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
								<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
								<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
								<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
							</div>
						</div>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>
				<div class="MC_box3">
					<!-- 캘린더 -->
					<div class="pop_schedule0059">
						<div class="tit_wrap">
							<h2>행사일정</h2>
						</div>
						<div class="inBox">
						<p class="month">
							<span>2022년도<em>02월</em></span>
						</p>
							<div class="sche_list">
								<a href="" class="prev"><i class="xi-long-arrow-left" aria-hidden="true"></i><em class="hid">이전달</em></a>
								<ul>
									<li class="sun"><span>일<em>01</em></span></li>
									<li class="event"><a href="">월<em>02</em></a></li>
									<li class="today"><a href="">화<em>03</em></a></li>
									<li><span>수<em>04</em></span></li>
									<li class="event"><a href="">목<em>05</em></a></li>
									<li><span>금<em>06</em></span></li>
									<li class="sat event"><a href="">토<em>07</em></a></li>
									<li class="sun"><span>일<em>08</em></span></li>
									<li><span>월<em>09</em></span></li>
									<li><span>화<em>10</em></span></li>
									<li class="event"><a href="">수<em>11</em></a></li>
									<li><span>목<em>12</em></span></li>
									<li class="event"><a href="">금<em>13</em></a></li>
									<li class="event sat"><a href="">토<em>14</em></a></li>
									<li class="sun"><span>일<em>15</em></span></li>
									<li class="event"><a href="">월<em>16</em></a></li>
									<li><span>화<em>17</em></span></li>
									<li><span>수<em>18</em></span></li>
									<li><span>목<em>19</em></span></li>
									<li class="event"><a href="">금<em>20</em></a></li>
									<li class="sat"><span>토<em>21</em></span></li>
									<li class="sun"><span>일<em>22</em></span></li>
									<li class="event"><a href="">월<em>23</em></a></li>
									<li><span>화<em>24</em></span></li>
									<li class="event"><a href="">수<em>25</em></a></li>
									<li><span>목<em>26</em></span></li>
									<li><span>금<em>27</em></span></li>
									<li class="sat"><span>토<em>28</em></span></li>
									<li class="sun"><span>일<em>29</em></span></li>
									<li><span>월<em>30</em></span></li>
									<li class="event"><a href="">화<em>31</em></a></li>
								</ul>
								<a href="" class="next"><i class="xi-long-arrow-right" aria-hidden="true"></i><em class="hid">다음달</em></a>
							</div>
						</div>
						<div class="lst">
							<a href="" class="scheCtrl prev"><span class="hid">일정 이전</span></a>
							<ul>
								<li>
									<a href=""><span>15</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>15</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>16-17</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>17-18</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="scheCtrl next"><span class="hid">일정 다음</span></a>
						<a href="" class="btn_more"><i class="xi-plus-thin" aria-hidden="true"></i><em class="hid">행사일정 더보기</em></a>
					</div>
					<!-- //캘린더 -->
				</div>
			</div>

		</div>

		<div class="MC_box4 container">
			<!-- 바로가기1 -->
			<div class="M_link0059">
				<ul>
					<li>
						<a href="">
							<p><img src="/images/template/${templateType}/main/0059_ico01_link01.png" alt=""></p>
							<span>방과후학교방과후학교방과후학교방과후학교</span>
						</a>
					</li>
					<li>
						<a href="">
							<p><img src="/images/template/${templateType}/main/0059_ico01_link02.png" alt=""></p>
							<span>사이버도서관</span>
						</a>
					</li>
					<li>
						<a href="">
							<p><img src="/images/template/${templateType}/main/0059_ico01_link03.png" alt=""></p>
							<span>학습자료실</span>
						</a>
					</li>
					<li>
						<a href="">
							<p><img src="/images/template/${templateType}/main/0059_ico01_link04.png" alt=""></p>
							<span>학교알리미</span>
						</a>
					</li>
					<li>
						<a href="">
							<p><img src="/images/template/${templateType}/main/0059_ico01_link05.png" alt=""></p>
							<span>각종양식</span>
						</a>
					</li>
					<li>
						<a href="">
							<p><img src="/images/template/${templateType}/main/0059_ico01_link06.png" alt=""></p>
							<span>교육목표</span>
						</a>
					</li>
				</ul>
			</div>
			<!-- //바로가기1 -->
		</div>

		<div class="MC_wrap2">
			<div class="container">

				<div class="MC_box5">
					<!-- 포토갤러리 -->
					<div class="gallery0059">
						<div class="tit_wrap">
							<h2>포토갤러리</h2>
						</div>
						<div class="list_box">
							<ul>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0059_thumb_01.png" alt=""></p>
									<p class="txt">책과 친해지는 즐거운 독서시간</p>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0059_thumb_02.png" alt=""></p>
									<p class="txt">교내 겨울방학 창의융합교육</p>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0059_thumb_03.png" alt=""></p>
									<p class="txt">창의력이 쑥쑥!! 즐거운 미술시간</p>
								</a></li>
								<!-- 갤러리 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more"><span>view</span>More<em class="hid">포토갤러리 더보기</em></a>
					</div>
					<!-- //포토갤러리 -->
				</div>

				<div class="MC_box6">
					<!-- 식단 -->
					<div class="meal_menu0059">
						<div class="tit_wrap">
							<h2>오늘의 식단</h2>
						</div>
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><em>점심</em> <span>984</span>Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal"><em>저녁</em> <span>111</span>Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<p class="img"><img src="/images/template/${templateType}/main/0059_img_meal.png" alt=""></p>
						<a href="" class="btn_more"><span>view</span>More<em class="hid">오늘의식단 더보기</em></a>
					</div>
					<!-- //식단 -->
				</div>
			</div>
		</div>

		<div class="MC_wrap3">
			<div class="container">
				<div class="MC_box7">
					<!-- 게시판 -->
					<div class="notice0059">
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
									<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
										<p class="tit">&lt;세계 물의 날&gt; 금강 영상 공모전 안내&lt;세계 물의 날&gt; 금강 영상 공모전 안내&lt;세계 물의 날&gt; 금강 영상 공모전 안내</p>
										<p class="txt">세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여</p>
										<span><i class="xi-alarm" aria-hidden="true"></i>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p class="tit">봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서</p>
										<p class="txt">봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서 제출관련해 안내봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서 제출관련해 안내</p>
										<span><i class="xi-alarm" aria-hidden="true"></i>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p class="tit">영어캠프(D.E.C.) 참가 학생 모집 안내</p>
										<p class="txt">영어캠프의 참가학생을 아래와 같이 모집하니 참가 희망 학생은 첨부파일.영어캠프의 참가학생을 아래와 같이 모집하니 참가 희망 학생은 첨부파일.</p>
										<span><i class="xi-alarm" aria-hidden="true"></i>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p class="tit">대한민국창의력 챔피언 대회 대전예선대회 개최 안내</p>
										<p class="txt">대한민국창의력챔피언대회 대전예선 대회를 다음과 같이 개최하오니</p>
										<span><i class="xi-alarm" aria-hidden="true"></i>2020-03-30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span>view</span>More<em class="hid">공지사항 더보기</em></a>
							</div>
							<div class="list_box" id="notice2">
								<ul>
									<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
										<p class="tit">&lt;세계 물의 날&gt; 금강 영상 공모전 안내&lt;세계 물의 날&gt; 금강 영상 공모전 안내&lt;세계 물의 날&gt; 금강 영상 공모전 안내</p>
										<p class="txt">세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여</p>
										<span><i class="xi-alarm" aria-hidden="true"></i>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p class="tit">봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서</p>
										<p class="txt">봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서 제출관련해 안내봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서 제출관련해 안내</p>
										<span><i class="xi-alarm" aria-hidden="true"></i>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p class="tit">영어캠프(D.E.C.) 참가 학생 모집 안내</p>
										<p class="txt">영어캠프의 참가학생을 아래와 같이 모집하니 참가 희망 학생은 첨부파일.영어캠프의 참가학생을 아래와 같이 모집하니 참가 희망 학생은 첨부파일.</p>
										<span><i class="xi-alarm" aria-hidden="true"></i>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p class="tit">대한민국창의력 챔피언 대회 대전예선대회 개최 안내</p>
										<p class="txt">대한민국창의력챔피언대회 대전예선 대회를 다음과 같이 개최하오니</p>
										<span><i class="xi-alarm" aria-hidden="true"></i>2020-03-30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span>view</span>More<em class="hid">가정통신문 더보기</em></a>
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span>view</span>More<em class="hid">게시판 더보기</em></a>
							</div>
						</div>
					</div>
					<!-- //게시판 -->
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