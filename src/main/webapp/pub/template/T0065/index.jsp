<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0065" />
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
				<div class="MVisual0065 visual">
					<div class="slider" id="visualSlide">
						<p class="item">
							<img src="/images/template/${templateType}/main/m_visual.png" alt="올바른 인성과 소질을 가꾸는 창의적어린이">
						</p>
						<p class="item">
							<img src="/images/template/${templateType}/main/m_visual.png" alt="올바른 인성과 소질을 가꾸는 창의적어린이">
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
                <div class="notice0065 notice006501">
                    <div class="titTab">
                        <ul>
                            <li><a href="#notice1" class="current"><span>공지사항공지사항</span></a></li>
                            <li><a href="#notice2" class=""><span>자유게시판 </span></a></li>
                            <li><a href="#notice3" class=""><span>게시판게시판</span></a></li>
                        </ul>
                    </div>

                    <div class="tabWrap">
                        <div class="list_box on" id="notice1">
                            <ul>
                                <li>
                                    <a href="" class="new">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><em class="hid">공지사항 더보기</em></a>
                        </div>

                        <div class="list_box" id="notice2">
                            <ul>
                                <li>
                                    <a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><em class="hid">자유게시판 더보기</em></a>
                        </div>

                        <div class="list_box" id="notice3">
                            <ul>
                            <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                            <li class="no_data">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><em class="hid">게시판 더보기</em></a>
                        </div>
                    </div>
                </div>
                <!-- //게시판 -->
            </div>

            <div class="MC_box3">
                <!-- 게시판 -->
                <div class="notice0065 notice006502">
                    <div class="titTab">
                        <ul>
                            <li><a href="#notice4" class="current"><span>공지사항공지사항</span></a></li>
                            <li><a href="#notice5" class=""><span>자유게시판 </span></a></li>
                            <li><a href="#notice6" class=""><span>게시판게시판</span></a></li>
                        </ul>
                    </div>

                    <div class="tabWrap">
                        <div class="list_box on" id="notice4">
                            <ul>
                                <li>
                                    <a href="" class="new">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><em class="hid">공지사항 더보기</em></a>
                        </div>

                        <div class="list_box" id="notice5">
                            <ul>
                                <li>
                                    <a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
                                        <span><i class="xi-time-o" aria-hidden="true"></i>2022-01-11</span>
                                    </a>
                                </li>
                                <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><em class="hid">자유게시판 더보기</em></a>
                        </div>

                        <div class="list_box" id="notice6">
                            <ul>
                            <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                            <li class="no_data">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><em class="hid">게시판 더보기</em></a>
                        </div>
                    </div>
                </div>
                <!-- //게시판 -->
            </div>
			<div class="con_wrap">



				<div class="MC_box4">
					<!-- 팝업존 -->
					<div class="pop0065 popupZone">
						<h2 class="heading">팝업존</h2>
						<div class="pop_img" id="popupSlide">
							<p class="item">
								<a href="" target="_blank" title="새창">
									<img src="/images/template/${templateType}/main/img_popup01.png" alt="">
								</a>
							</p>
							<p class="item">
								<a href="" target="_blank" title="새창">
									<img src="/images/template/${templateType}/main/img_popup01.png" alt="">
								</a>
							</p>
						</div>
						<div class="control arwShow">
							<p class="page"><strong>1</strong><span>4</span></p>
							<a href="" class="prev"><img src="/images/template/${templateType}/main/0065_btn_pop_prev.png" alt=""><span class="hid">팝업존 이전</span></a>
							<a href="" class="next"><img src="/images/template/${templateType}/main/0065_btn_pop_next.png" alt=""><span class="hid">팝업존 다음</span></a>
							<a href="" class="stop"><i class="xi-pause" aria-hidden="true"></i><span class="hid">팝업존 정지</span></a>
							<a href="" class="play"><i class="xi-play" aria-hidden="true"></i><span class="hid">팝업존 재생</span></a>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>

                <div class="MC_box5">
					<!-- 바로가기1 -->
					<div class="M_link0065">
						<h2 class="hid">바로가기</h2>
						<ul>
							<li>
								<a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0065_link01_1.png" alt=""></p>
									<p class="txt"><span><em>방과후학교 방과후학교 방과후학교</em></span></p>
								</a>
							</li>
							<li>
								<a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0065_link01_2.png" alt=""></p>
									<p class="txt"><span><em>학교알리미</em></span></p>
								</a>
							</li>
							<li>
								<a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0065_link01_3.png" alt=""></p>
									<p class="txt"><span><em>학급홈페이지</em></span></p>
								</a>
							</li>
							<li>
								<a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0065_link01_4.png" alt=""></p>
									<p class="txt"><span><em>독서교육 지원시스템</em></span></p>
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
				<div class="MC_box6">
					<!-- 갤러리 -->
					<div class="gallery0065">
						<h2 class="heading">포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0065_thumb_01.png" alt=""></div>
									<p class="tit">화단을 가꾸는 교직원화단을 가꾸는 교직원화단을 가꾸는 교직원</p>
									<p class="txt">저희 교직원들은 코로나19로 지친 학생 여러분들을 위해저희 교직원들은 코로나19로 지친 학생 여러분들을 위해</p>
								</a></li>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0065_thumb_02.png" alt=""></div>
									<p class="tit">화단을 가꾸는 교직원</p>
									<p class="txt">새학기를 맞아 가정에서도 영어 수업을 복습 할수 있도록 온라인</p>
								</a></li>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0065_thumb_03.png" alt=""></div>
									<p class="tit">화단을 가꾸는 교직원</p>
									<p class="txt">새학기를 맞아 가정에서도 영어 수업을 복습 할수 있도록 온라인</p>
								</a></li>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0065_thumb_04.png" alt=""></div>
									<p class="tit">화단을 가꾸는 교직원</p>
									<p class="txt">새학기를 맞아 가정에서도 영어 수업을 복습 할수 있도록 온라인</p>
								</a></li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more btnTy"><i class="xi-arrow-right" aria-hidden="true"></i><em class="hid">포토갤러리 더보기</em></a>
					</div>
					<!-- //갤러리 -->
				</div>
			</div>
		</div>

		<div class="MC_wrap3">
			<div class="container">
				<div class="MC_box7">
						<!-- 식단 -->
						<div class="meal_menu0065">
							<h2 class="heading">오늘의 식단</h2>
							<div class="inner">
								<ul tabindex="0">
									<li>
										<dl>
											<dt class="kcal"><span>점심 </span>984 Kcal</dt>
											<dd class="meal_list">기장밥, 바지락조개탕, 포기김치, 소시지볶음, 시금치 나물, 사과주스</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt class="kcal"><span>저녁 </span>684 Kcal</dt>
											<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
										</dl>
									</li>
									<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
							<p class="img"><img src="/images/template/${templateType}/main/0065_img_meal.png" alt=""></p>
							<a href="" class="btnTy" title="식단 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
						</div>
						<!-- //식단 -->
				</div>
				<div class="MC_box8">
						<!-- 캘린더 -->
						<div class="pop_schedule0065">
							<h2 class="heading">행사일정</h2>
							<div class="inBox">
							<p class="month">
								<span>2022<em>02</em></span>
							</p>
								<div class="sche_list">
									<a href="" class="prev"><i class="xi-angle-left" aria-hidden="true"></i><em class="hid">이전달</em></a>
									<ul>
										<li><span>일<em>01</em></span></li>
										<li class="event"><span><a href="">월<em>02</em></a></span></li>
										<li class="today"><span><a href="">화<em>03</em></a></span></li>
										<li><span>수<em>04</em></span></li>
										<li class="event"><span><a href="">목<em>05</em></a></span></li>
										<li><span>금<em>06</em></span></li>
										<li class="event"><span><a href="">토<em>07</em></a></span></li>
										<li><span>일<em>08</em></span></li>
										<li><span>월<em>09</em></span></li>
										<li><span>화<em>10</em></span></li>
										<li class="event"><span><a href="">수<em>11</em></a></span></li>
										<li><span>목<em>12</em></span></li>
										<li class="event"><span><a href="">금<em>13</em></a></span></li>
										<li class="event"><span><a href="">토<em>14</em></a></span></li>
										<li><span>일<em>15</em></span></li>
										<li class="event"><a>월<em>16</em></a></span></li>
										<li><span>화<em>17</em></span></li>
										<li><span>수<em>18</em></span></li>
										<li><span>목<em>19</em></span></li>
										<li class="event"><span><a href="">금<em>20</em></a></span></li>
										<li class="sat"><span><a href="">토<em>21</em></a></span></li>
										<li><span>일<em>22</em></span></li>
										<li class="event"><span><a href="">월<em>23</em></a></span></li>
										<li><span>화<em>24</em></span></li>
										<li class="event"><span><a href="">수<em>25</em></a></span></li>
										<li><span>목<em>26</em></span></li>
										<li><span>금<em>27</em></span></li>
										<li><span>토<em>28</em></span></li>
										<li><span>일<em>29</em></span></li>
										<li><span>월<em>30</em></span></li>
										<li class="event"><span><a href="">화<em>31</em></a></span></li>
									</ul>
									<a href="" class="next"><i class="xi-angle-right" aria-hidden="true"></i><em class="hid">다음달</em></a>
								</div>
							</div>
							<ul class="lst">
								<li>
									<a href=""><span>22.03.15</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>22.03.15</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>22.03.15</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li>
									<a href=""><span>22.03.15</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
								</li>
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
							<a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><em class="hid">더보기</em></a>

						</div>
						<!-- //캘린더 -->
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