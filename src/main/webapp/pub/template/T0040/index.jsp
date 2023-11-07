<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0040" />
<c:set var="layoutType" value="main" />
<c:set var="schoolName" value="세종초등학교" />

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
                <div class="MVisual0040 visual">
                    <div class="slider" id="visualSlide">
                        <p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="생각이 바르고 실력을 갖춘 자랑스러운 어린이. 우리 학교에 오신 것을 환영합니다."></p>
                        <p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="생각이 바르고 실력을 갖춘 자랑스러운 어린이. 우리 학교에 오신 것을 환영합니다."></p>
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
				<div class="M_link0040">
					<ul>
						<li>
						    <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0040_link01.png" alt=""></p>
                                <p class="txt">교육방향</p>
						    </a>
						  </li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0040_link02.png" alt=""></p>
                                <p class="txt">각종양식</p>
                            </a>
						</li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0040_link03.png" alt=""></p>
                                <p class="txt">방과후학교</p>
                            </a>
						</li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0040_link04.png" alt=""></p>
                                <p class="txt">학교알리미</p>
                            </a>
						</li>
					</ul>
				</div>
				<!-- //바로가기1 -->
			</div>
		</div>
		
		<div class="MC_wrap2 container">
            <div class="MC_box3">			
                <!-- 식단 -->
                <div class="meal_menu0040">
                    <div class="tit_wrap">
                        <h2 class="heading">오늘의 식단</h2>
                        <a href="" class="btn_more_01" title="오늘의 식단 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
                    </div>
                    <div class="inner">
                        <ul tabindex="0">
                            <li>
                                <dl>
                                    <dt class="kcal">점심 <span>984Kcal</span></dt>
                                    <dd class="meal_list">혼합잡곡밥, 감자고추장찌개, 콩나물무침, 꽁치구이, 배추김치, 탕수육. 탕수육소스(칠리). 후식(수제요거트)</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="kcal">저녁 <span>1,216Kcal</span></dt>
                                    <dd class="meal_list">혼합잡곡밥, 감자고추장찌개, 콩나물무침, 꽁치구이, 배추김치, 탕수육. 탕수육소스(칠리). 후식(수제요거트) </dd>
                                </dl>
                            </li>
                            <!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                            <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                        </ul>
                        <img src="/images/template/${templateType}/main/0040_meal_chr.png" alt="">
                    </div>
                </div>
                <!-- //식단 -->
            </div>
            <div class="MC_box4">
                <!-- 게시판 -->
                <div class="notice0040">
                    <div class="titTab">
                        <ul>
                            <li><a href="#notice1" class="current"><span class="dot"></span><span class="txt">공지사항공지사항</span></a></li>
                            <li><a href="#notice2" class=""><span class="dot"></span><span class="txt">가정통신문</span></a></li>
                            <li><a href="#notice3" class=""><span class="dot"></span><span class="txt">자유게시판</span></a></li>
                        </ul>
                    </div>
                    <div class="tabWrap">
                        <div class="list_box on" id="notice1">
                            <ul>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        <p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>학부모위원 당선자 확정 공고문</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more_01" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                        <div class="list_box" id="notice2">
                            <ul>
                                <li>
                                    <a href="">
                                        <p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>학부모위원 당선자 확정 공고문</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more_01" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                        <div class="list_box" id="notice3">
                            <ul>
                                <li>
                                    <a href="">
                                        <p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>학부모위원 당선자 확정 공고문</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
                                        <span><i class="xi-time-o" aria-hidden="true"></i> 2022-07-25</span>
                                    </a>
                                </li>
                                <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more_01" title="자유게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                    </div>
                </div>
                <!-- //게시판 -->
            </div>
            <div class="MC_box5">
                <!-- 캘린더 -->
                <div class="pop_schedule0040">
                    <div class="tit_wrap">
                        <h2 class="heading">행사일정</h2>
                        <p class="month">2022 <em>07</em></p>
                        <a href="" class="btn_more_01"><span class="hid">행사일정 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
                    </div>
                    <div class="sche_wrap">							
                        <div class="sche_list">
                            <a href="" class="prev"><span class="hid">이전달</span><i class="xi-angle-left" aria-hidden="true"></i></a>
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
                            <a href="" class="next"><span class="hid">다음달</span><i class="xi-angle-right" aria-hidden="true"></i></a>
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
            <div class="MC_box6">	
                <!-- 갤러리 -->
                <div class="gallery0040">
                    <div class="tit_wrap">
                        <h2 class="heading">포토갤러리</h2>
                        <a href="" class="btn_more_01" title="포토갤러리 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                    </div>
                    <div class="list_box">
                        <ul>
                            <li>
                                <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0040_thumb01.jpg" alt=""></p>
                                    <strong>이달의 독서왕 친구를 소개합니다.</strong>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0040_thumb02.jpg" alt=""></p>
                                    <strong>방과후 활동 모습</strong>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0040_thumb03.jpg" alt=""></p>
                                    <strong>사이좋은 어린이</strong>
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
			<div class="MC_box7">
				<!-- 팝업존 -->
				<div class="pop0040 popupZone">
					<h2 class="heading">팝업존</h2>
					<div class="pop_img" id="popupSlide">
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0040_popup.jpg" alt="우리 학교 홈페이지에 오신 것을 환영합니다."></a></p>
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0040_popup.jpg" alt="우리 학교 홈페이지에 오신 것을 환영합니다."></a></p>
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0040_popup.jpg" alt="우리 학교 홈페이지에 오신 것을 환영합니다."></a></p>
					</div>
					<div class="control arwShow">
						<p class="page"><strong>1</strong><span>3</span></p>
						<div class="btn_box">
                            <a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
                            <a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
                            <a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
                            <a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
						</div>
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