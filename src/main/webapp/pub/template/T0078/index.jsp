<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0078" />
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
					<div class="MVisual0078 visual">
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
				<div class="MC_box2">
					<!-- 게시판 -->
					<div class="notice0078">
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2"><span>가정통신문</span></a></li>
								<li><a href="#notice3"><span>게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<!-- 새글 a 'new' class 추가-->
									<li>
										<a href="" class="new">
											<p class="tit">학교급식품 견적서제출 공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출 공고 및 파일첨부</p>
											<p class="txt">학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">학교급식품 견적서제출 공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출 공고 및 파일첨부</p>
											<p class="txt">학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">학교급식품 견적서제출 공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출 공고 및 파일첨부</p>
											<p class="txt">학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공</p>
											<span>2022.03.24</span>
										</a>
									</li>
								</ul>
								<a href="" class="btn_more btnTy1"><span class="hid">공지사항 더보기</span><em></em><em></em><em></em><em></em></a>
							</div>
							<div class="list_box" id="notice2">
								<ul>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data">
										<p>데이터가 없습니다</p>
									</li>
								</ul>
								<a href="" class="btn_more btnTy1"><span class="hid">가정통신문 더보기</span><em></em><em></em><em></em><em></em></a>
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<li>
										<a href="">
											<p class="tit">학교급식품 견적서제출 공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출 공고 및 파일첨부</p>
											<p class="txt">학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">학교급식품 견적서제출 공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출 공고 및 파일첨부</p>
											<p class="txt">학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">학교급식품 견적서제출 공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출 공고 및 파일첨부</p>
											<p class="txt">학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공</p>
											<span>2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">학교급식품 견적서제출 공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출  공고 및 파일첨부학교급식품 견적서제출 공고 및 파일첨부</p>
											<p class="txt">학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공학교급식품 구매 소액수의   견적제출 공고문입니다. 공</p>
											<span>2022.03.24</span>
										</a>
									</li>
								</ul>
								<a href="" class="btn_more btnTy1"><span class="hid">자유게시판 더보기</span><em></em><em></em><em></em><em></em></a>
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>

				<div class="MC_box3">
					<!-- 팝업존 -->
					<div class="pop0078 popupZone">
						<h2 class="heading">팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존</h2>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원홈페이지를 방문을 환영합니다." /></a></p>
							<p class="item"><a href="" title="새창"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원홈페이지를 방문을 환영합니다." /></a></p>
						</div>

						<div class="nss_pg">
							<p class="page"><strong></strong><span></span></p>
							<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left-min" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
							<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right-min" aria-hidden="true"></i></a>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>
			</div>
		</div>

		<div class="MC_wrap2">
			<div class="container">
				<div class="MC_box4">
					<!-- 바로가기1 -->
					<div class="M_link0078">
						<ul>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0078_ico01_link01.png" alt=""></p>
									<span>교육방향교육방향교육방향교육방향교육방향</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0078_ico01_link02.png" alt=""></p>
									<span>각종양식</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0078_ico01_link03.png" alt=""></p>
									<span>방과후 학교</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0078_ico01_link04.png" alt=""></p>
									<span>학교알리미</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0078_ico01_link05.png" alt=""></p>
									<span>에듀넷</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0078_ico01_link06.png" alt=""></p>
									<span>정보공개</span>
								</a>
							</li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
				<div class="MC_box5">
					<!-- 식단 -->
					<div class="meal_menu0078">
						<h2 class="heading"><span>오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단</span></h2>
						<div class="inner" tabindex="0">
							<ul>
							   <li>
								   <dl>
									   <dt class="kcal">점심 <strong>727</strong>Kcal</dt>
									   <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기 </dd>
								   </dl>
							   </li>
							   <li>
								   <dl>
									<dt class="kcal">점심 <strong>727</strong>Kcal</dt>
									   <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
								   </dl>
							   </li>
							   <!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
							   <li class="no_data" style="display:none;">데이터가 없습니다.</li>
						   </ul>
						</div>
						<p class="img"><img src="/images/template/${templateType}/main/0078_img_meal.png" alt=""></p>
						<a href="" class="btn_more btnTy2"><span class="hid">식단 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
					</div>
					<!-- //식단 -->
				</div>
				 <div class="MC_box6">
					<!-- 캘린더 -->
					<div class="pop_schedule0078">
						<h2 class="hid">행사일정</h2>
						<div class="sche_wrap">
							<p class="month">2022.<em>03</em></p>
							<div class="sche_list">
								<a href="" class="prev"><span class="hid">이전달</span><i class="xi-angle-left-min" aria-hidden="true"></i></a>
								<ul>
									<li><span class="sat">1</span></li>
									<li><a href="" class="event sun">2</a></li>
									<li><a href="" class="today">3</a></li>
									<li><span>4</span></li>
									<li><a href="" class="event">5</a></li>
									<li><span>6</span></li>
									<li><a href="" class="event">7</a></li>
									<li><span class="sat">8</span></li>
									<li><span class="sun">9</span></li>
									<li><span>10</span></li>
									<li><a href="" class="event">11</a></li>
									<li><span>12</span></li>
									<li><a href="" class="event">13</a></li>
									<li><a href="" class="event">14</a></li>
									<li><span class="sat">15</span></li>
									<li><span class="sun">16</span></li>
									<li><span>17</span></li>
									<li><span>18</span></li>
									<li><span>19</span></li>
									<li><a href="" class="event">20</a></li>
									<li><span>21</span></li>
									<li><span class="sat">22</span></li>
									<li><a href="" class="event sun">23</a></li>
									<li><span>24</span></li>
									<li><a href="" class="event">25</a></li>
									<li><span>26</span></li>
									<li><span>27</span></li>
									<li><span>28</span></li>
									<li><span class="sat">29</span></li>
									<li><span class="sun">30</span></li>
									<li><a href="" class="event">31</a></li>
								</ul>
								<a href="" class="next"><span class="hid">다음달</span><i class="xi-angle-right-min" aria-hidden="true"></i></a>
							</div>
						</div>
						<div class="lst">
							<ul>
								<li><a href=""><span>03.02</span>직업체험활동 직업체험활동</a></li>
								<li><a href=""><span>03.15</span>소방안전교육의 날 소방안전교육의 날</a></li>
								<li><a href=""><span>03.19</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.20</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.20</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.20</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.20</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.20</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.20</span>특별활동의 날 특별활동의 날</a></li>
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more btnTy2"><span class="hid">식단 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
					</div>
					<!-- //캘린더 -->
				</div>

				<div class="MC_box7">
					<!-- 갤러리 -->
					<div class="gallery0078">
						<h2 class="heading">포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0078_thumb_01.png" alt=""></p>
										<span class="txt">제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이</span>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0078_thumb_02.png" alt=""></p>
										<span class="txt">자연과 함께하는 현장학습</span>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0078_thumb_03.png" alt=""></p>
										<span class="txt">조별과제 시간</span>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0078_thumb_04.png" alt=""></p>
										<span class="txt">조별과제 시간</span>
									</a>
								</li>
								<!-- 갤러리 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more btnTy1"><span class="hid">갤러리 더보기</span><em></em><em></em><em></em><em></em></a>
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