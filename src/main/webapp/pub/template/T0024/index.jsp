<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0024" />
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
			<div class="MC_box1">
				<!-- 메인비주얼 -->
				<div class="MVisual0024 visual">
					<div class="slider" id="visualSlide">
						<p class="item">
							<img src="/images/template/${templateType}/main/m_visual.png" alt="꿈을 키우며 미래를 준비하는 밝은 우리들">
						</p>
						<p class="item">
							<img src="/images/template/${templateType}/main/m_visual.png" alt="꿈을 키우며 미래를 준비하는 밝은 우리들">
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
                <!-- 식단 -->
                <div class="meal_menu0024">
                    <div class="tit_wrap">
                        <h2 class="heading">오늘의 식단</h2>
                        <a href="" class="btn_more"><span class="hid">오늘의 식단 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
                    </div>
                    <div class="inner">
                        <ul tabindex="0">
                            <li>
                                <dl>
                                    <dt class="kcal"><em>점심 685</em>kcal</dt>
                                    <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="kcal"><em>저녁 680</em>kcal</dt>
                                    <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                </dl>
                            </li>
                            <!-- 식단 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                            <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                        </ul>
                        <img src="/images/template/${templateType}/main/0024_img_meal.png" alt="">
                    </div>
                </div>
                <!-- //식단 -->
            </div>
            <div class="MC_box3">
                <!-- 게시판 -->
                <div class="notice0024">
                    <h2 class="hid">공지사항</h2>
                    <div class="titTab">
                        <ul>
                            <li><a href="#notice1" class="current">공지사항공지사항</a></li>
                            <li><a href="#notice2" class="">가정통신문</a></li>
                            <li><a href="#notice3" class="">자유게시판</a></li>
                        </ul>
                    </div>
                    <div class="tabWrap">
                        <div class="list_box on" id="notice1">
						    <a href="" class="topList">
								<dl class="new"><!-- 새글 dl 'new' class 추가 -->
									<dt>아동학대 예방 홍보 및 신고의무 제도 안내 아동학대 예방 홍보 및 신고의무 제도 안내</dt>
									<dd>
									    <p>코로나 19 장기화로 인한 온라인 수업 기간동안 학습권 보장 및 코로나 19 장기화로 인한 온라인 수업 기간동안 학습권 보장 및 코로나 19 장기화로 인한 온라인 수업 기간동안 학습권 보장 및</p>
									    <span class="date"><em>22.03</em> 13</span>
								    </dd>
								</dl>
								<dl class="no_data" style="display: none;"><!-- 데이터가 없을 시, dl 'no_data' class 추가 -->
									<dt>데이터가 없습니다</dt>
									<dd>
									    <span class="date">-</span>
								    </dd>
								</dl>
							</a>
                            <ul>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        코로나19 대응을 위한 원격수업 Q&amp;A(학부모용)
                                        <span class="date">2022.03.09</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        2022학년도 상반기 학부모 정책 모니터단 모집 안내 2022학년도 상반기 학부모 정책 모니터단 모집 안내
                                        <span class="date">2022.03.06</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        2022학년도 안전사고예방 유치원안전계획
                                        <span class="date">2022.02.31</span>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more"><em class="hid">공지사항 더보기</em><i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>

                        <div class="list_box" id="notice2">
						    <a href="" class="topList">
								<dl>
									<dt>아동학대 예방 홍보 및 신고의무 제도 안내 아동학대 예방 홍보 및 신고의무 제도 안내</dt>
									<dd>
									    <p>코로나 19 장기화로 인한 온라인 수업 기간동안 학습권 보장 및 코로나 19 장기화로 인한 온라인 수업 기간동안 학습권 보장 및 코로나 19 장기화로 인한 온라인 수업 기간동안 학습권 보장 및</p>
									    <span class="date"><em>22.03</em> 13</span>
								    </dd>
								</dl>
								<dl class="no_data" style="display: none;"><!-- 새글 dl 'new' class 추가 -->
									<dt>데이터가 없습니다</dt>
									<dd>
									    <span class="date">-</span>
								    </dd>
								</dl>
							</a>
                            <ul>
                                <li>
                                    <a href="">
                                        가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문
                                        <span class="date">2022.01.24</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        코로나19 유치원 내 차단을 위한 등원
                                        <span class="date">2022.01.20</span>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more"><em class="hid">자유게시판 더보기</em><i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>

                        <div class="list_box" id="notice3">
						    <a href="" class="topList">
								<dl>
									<dt>아동학대 예방 홍보 및 신고의무 제도 안내 아동학대 예방 홍보 및 신고의무 제도 안내</dt>
									<dd>
									    <p>코로나 19 장기화로 인한 온라인 수업 기간동안 학습권 보장 및 코로나 19 장기화로 인한 온라인 수업 기간동안 학습권 보장 및 코로나 19 장기화로 인한 온라인 수업 기간동안 학습권 보장 및</p>
									    <span class="date"><em>22.03</em> 13</span>
								    </dd>
								</dl>
								<dl class="no_data" style="display: none;"><!-- 새글 dl 'new' class 추가 -->
									<dt>데이터가 없습니다</dt>
									<dd>
									    <span class="date">-</span>
								    </dd>
								</dl>
							</a>
                            <ul>
                                <li>
                                    <a href="">
                                        자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판
                                        <span class="date">2022.01.24</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        코로나19 유치원 내 차단을 위한 등원
                                        <span class="date">2022.01.20</span>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more"><em class="hid">게시판 더보기</em><i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                    </div>
                </div>
                <!-- //게시판1 -->
            </div>
            <div class="MC_box4">
                <!-- 바로가기1 -->
                <div class="M_link0024">
                    <ul>
                        <li>
                            <a href="">
                                <div class="img"><img src="/images/template/${templateType}/main/0024_ico01_link01.png" alt=""></div>
                                <div class="txt"><span>교육목표교육목표교육목표교육목표교육목표교육목표</span></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img"><img src="/images/template/${templateType}/main/0024_ico01_link02.png" alt=""></div>
                                <div class="txt"><span>교육과정</span></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img"><img src="/images/template/${templateType}/main/0024_ico01_link03.png" alt=""></div>
                                <div class="txt"><span>사이버도서관</span></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img"><img src="/images/template/${templateType}/main/0024_ico01_link04.png" alt=""></div>
                                <div class="txt"><span>학습자료실</span></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img"><img src="/images/template/${templateType}/main/0024_ico01_link05.png" alt=""></div>
                                <div class="txt"><span>유치원알리미</span></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img"><img src="/images/template/${templateType}/main/0024_ico01_link06.png" alt=""></div>
                                <div class="txt"><span>운영위원회</span></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img"><img src="/images/template/${templateType}/main/0024_ico01_link07.png" alt=""></div>
                                <div class="txt"><span>정보공개</span></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img"><img src="/images/template/${templateType}/main/0024_ico01_link08.png" alt=""></div>
                                <div class="txt"><span>각종양식</span></div>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- //바로가기1 -->
            </div>
		</div>
        
        <div class="MC_wrap2">
            <div class="MC_box5">
                <!-- 팝업존 -->
                <div class="pop0024 popupZone">
                    <div class="tit_wrap">
                        <h2 class="heading">팝업존</h2>
                        <div class="control arwShow">
                            <p class="page"><strong></strong><span></span></p>
                            <div class="btn_box">
                                <a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
                                <a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
                                <a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
                                <a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="pop_img" id="popupSlide">
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.jpg" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.jpg" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.jpg" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.jpg" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
                    </div>
                </div>
                <!-- //팝업존 -->
            </div>
            <div class="MC_box6">
                <!-- 캘린더 -->
                <div class="pop_schedule0024">
                    <div class="tit_wrap">
                        <h2 class="heading">행사일정</h2>
                        <p class="month">2022.<em>07</em></p>
                        <a href="" class="btn_more"><span class="hid">행사일정 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
                    </div>
                    <div class="sche_wrap">							
                        <div class="sche_list">
                            <a href="" class="prev"><span class="hid">이전달</span></a>
                            <ul>
                                <li><span class="today"><a href="">01</a></span></li><!-- [p] 오늘날짜 : today -->
                                <li><span>02</span></li>
                                <li><span>03</span></li>
                                <li><span class="sat">04</span></li><!-- [p] 토요일 : sat -->
                                <li><span class="sun">05</span></li><!-- [p] 일요일 : sun -->
                                <li><span>06</span></li>
                                <li><span>07</span></li>
                                <li><span>08</span></li>
                                <li><span class="event"><a href="">09</a></span></li><!-- [p] 행사 : event -->
                                <li><span>10</span></li>
                                <li><span class="sat">11</span></li>
                                <li><span class="sun event"><a href="">12</a></span></li><!-- [p] 행사 : event -->
                                <li><span>13</span></li>
                                <li><span>14</span></li>
                                <li><span>15</span></li>
                                <li><span>16</span></li>
                                <li><span>17</span></li>
                                <li><span class="sat">18</span></li>
                                <li><span class="sun">19</span></li>
                                <li><span>20</span></li>
                                <li><span>21</span></li>
                                <li><span>22</span></li>
                                <li><span>23</span></li>
                                <li><span>24</span></li>
                                <li><span class="sat">25</span></li>
                                <li><span class="sun">26</span></li>
                                <li><span>27</span></li>
                                <li><span>28</span></li>
                                <li><span>29</span></li>
                                <li><span>30</span></li>
                                <li><span>31</span></li>
                            </ul>
                            <a href="" class="next"><span class="hid">다음달</span></a>
                        </div>
                        <div class="lst">
                            <ul>
                                <li><a href=""><span class="dt">2022.07.05</span><span class="dsc">직업체험활동</span></a></li>
                                <li><a href=""><span class="dt">2022.07.15</span><span class="dsc">소방안전교육의 날</span></a></li>
                                <li><a href=""><span class="dt">2022.07.19</span><span class="dsc">특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">2022.07.20</span><span class="dsc">특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">2022.07.20</span><span class="dsc">특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">2022.07.20</span><span class="dsc">특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">2022.07.20</span><span class="dsc">특별활동의 날 특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">2022.07.20</span><span class="dsc">특별활동의 날 특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">2022.07.20</span><span class="dsc">특별활동의 날 특별활동의 날</span></a></li>
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- //캘린더 -->
            </div>		
        </div>
		
		<div class="MC_wrap3">
            <div class="MC_box7">
                <!-- 갤러리 -->
                <div class="gallery0024">
                    <div class="tit_wrap">
                        <h2 class="heading">포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리</h2>
                        <a href="" class="btn_more"><span class="hid">포토갤러리 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
                    </div>
                    <div class="list_box">
                        <ul>
                            <li>
                                <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0024_thumb_01.jpg" alt=""></p>
                                    <p class="txt"><span>자율수업학습자율수업학습자율수업학습자율수업학습자율수업학습자율수업학습자율수업학습자율수업학습자율수업학습</span></p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0024_thumb_02.jpg" alt=""></p>
                                    <p class="txt"><span>신나는 미술교실</span></p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0024_thumb_03.jpg" alt=""></p>
                                    <p class="txt"><span>엄마와 함께하는 신나는 역사공부</span></p>
                                </a>
                            </li>
                            <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                            <li class="no_data" style="display:none;">
                                <p>데이터가 없습니다.</p>
                            </li>
                        </ul>							
                    </div>
                </div>
                <!-- //갤러리 -->
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