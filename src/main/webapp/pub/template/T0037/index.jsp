<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0037" />
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
		
		<div class="MC_wrap1 container">
			<div class="MC_box1">
				<!-- 메인비주얼 -->
				<div class="MVisual0037 visual">
					<div class="slider" id="visualSlide">
						<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="꿈과 희망이 가득한 우리학교"></p>
						<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="꿈과 희망이 가득한 우리학교"></p>
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
                <!-- 캘린더 -->
                <div class="pop_schedule0037">
                    <div class="sche_wrap">
                        <p class="month">
                            <a href="" class="prev"><em class="hid">이전달</em><i class="xi-angle-left" aria-hidden="true"></i></a>
                            <span>2022.<em>2</em></span>
                            <a href="" class="next"><em class="hid">다음달</em><i class="xi-angle-right" aria-hidden="true"></i></a>
                        </p>
                        <div class="sche_table">
                            <table>
                                <caption>캘린더 : 월, 화, 수, 목, 금, 토, 일</caption>
                                <thead>
                                    <tr>
                                        <th scope="col">일</th>
                                        <th scope="col">월</th>
                                        <th scope="col">화</th>
                                        <th scope="col">수</th>
                                        <th scope="col">목</th>
                                        <th scope="col">금</th>
                                        <th scope="col">토</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span>&nbsp;</span></td>
                                        <td><span>&nbsp;</span></td>
                                        <td><a href="" class="today">1</a></td>
                                        <td><span>2</span></td>
                                        <td><span>3</span></td>
                                        <td><span>4</span></td>
                                        <td><span>5</span></td>
                                    </tr>
                                    <tr>
                                        <td><span>6</span></td>
                                        <td><span>7</span></td>
                                        <td><span>8</span></td>
                                        <td><a href="" class="event">9</a></td>
                                        <td><a href="" class="event">10</a></td>
                                        <td><span>11</span></td>
                                        <td><span>12</span></td>
                                    </tr>
                                    <tr>
                                        <td><span>13</span></td>
                                        <td><span>14</span></td>
                                        <td><span>15</span></td>
                                        <td><span>16</span></td>
                                        <td><span>17</span></td>
                                        <td><span>18</span></td>
                                        <td><span>19</span></td>
                                    </tr>
                                    <tr>
                                        <td><span>20</span></td>
                                        <td><span>21</span></td>
                                        <td><span>22</span></td>
                                        <td><a href="" class="event">23</a></td>
                                        <td><a href="" class="event">24</a></td>
                                        <td><a href="" class="event">25</a></td>
                                        <td><span>26</span></td>
                                    </tr>
                                    <tr>
                                        <td><span>20</span></td>
                                        <td><span>28</span></td>
                                        <td><span>29</span></td>
                                        <td><span>30</span></td>
                                        <td><span>31</span></td>
                                        <td><span>&nbsp;</span></td>
                                        <td><span>&nbsp;</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="lst">
                            <ul>
                                <li><a href=""><span>01</span>직업체험활동 직업체험활동</a></li>
                                <li><a href=""><span>09</span>소방안전교육의 날 소방안전교육의 날</a></li>
                                <li><a href=""><span>10</span>특별활동의 날 특별활동의 날 특별활동의 날 특별활동의 날</a></li>
                                <li><a href=""><span>23</span>특별활동의 날 특별활동의 날 특별활동의 날 특별활동의 날</a></li>
                                <li><a href=""><span>24</span>특별활동의 날 특별활동의 날</a></li>
                                <li><a href=""><span>25</span>특별활동의 날 특별활동의 날 특별활동의 날 특별활동의 날</a></li>
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                        </div>
                    </div>
                    <a href="" class="btn_more"><i class="xi-plus-thin"></i><em class="hid">캘린더 더보기</em></a>
                </div>
                <!-- //캘린더 -->
            </div>
            <div class="MC_box3">
                <!-- 바로가기1 -->
                <div class="M_link0037">
                    <ul>
                        <li>
                            <a href="">
                                <p><img src="/images/template/T0037/main/0037_link01.png" alt=""></p>
                                <span>우리반이야기</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <p><img src="/images/template/T0037/main/0037_link02.png" alt=""></p>
                                <span>연간교육계획</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- //바로가기1 -->
            </div>
		</div>	
		
		<div class="MC_wrap2 container">
            <div class="MC_box4">
                <!-- 게시판 -->
                <div class="notice0037">
                    <h2 class="hid">공지사항</h2>
                    <div class="titTab">
                        <ul>
                            <li><a href="#notice1" class="current"><span>공지사항공지사항공지사항</span></a></li>
                            <li><a href="#notice2"><span>가정통신문</span></a></li>
                            <li><a href="#notice3"><span>자유게시판</span></a></li>
                        </ul>
                    </div>
                    <div class="tabWrap">
                        <div class="list_box on" id="notice1">
                            <ul>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        <dl>
                                            <dt>방과후과정 혼합연령반 추가모집 안내</dt>
                                            <dd>
                                                <p>방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집 방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집</p>
                                                <span><i class="xi-time-o" aria-hidden="true"></i> 2020.03.18</span>
                                            </dd>
                                        </dl>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <dl>
                                            <dt>EBS 신년기획특집 유아교육 다큐멘터리 ‘놀이의 힘’</dt>
                                            <dd>
                                                <p>유아들의 놀 권리 보장을 통한 건강한 발달을 지원</p>
                                                <span><i class="xi-time-o" aria-hidden="true"></i> 2020.03.15</span>
                                            </dd>
                                        </dl>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <dl>
                                            <dt>학교회계 예산편성에 따른 학생, 학부모의 의견 수렴</dt>
                                            <dd>
                                                <p>학교회계 예산 편성에 따른 학생, 학부모 의견 수렴 안내문입니다.</p>
                                                <span><i class="xi-time-o" aria-hidden="true"></i> 2020.03.10</span>
                                            </dd>
                                        </dl>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more btn_more_01" title="공지사항 더보기">more <i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                        <div class="list_box" id="notice2">
                            <ul>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        <dl>
                                            <dt>방과후과정 혼합연령반 추가모집 안내</dt>
                                            <dd>
                                                <p>방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집 방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집</p>
                                                <span><i class="xi-time-o" aria-hidden="true"></i> 2020.03.18</span>
                                            </dd>
                                        </dl>
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        <dl>
                                            <dt>방과후과정 혼합연령반 추가모집 안내</dt>
                                            <dd>
                                                <p>방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집 방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집</p>
                                                <span><i class="xi-time-o" aria-hidden="true"></i> 2020.03.18</span>
                                            </dd>
                                        </dl>
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        <dl>
                                            <dt>방과후과정 혼합연령반 추가모집 안내</dt>
                                            <dd>
                                                <p>방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집 방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집</p>
                                                <span><i class="xi-time-o" aria-hidden="true"></i> 2020.03.18</span>
                                            </dd>
                                        </dl>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more btn_more_01" title="가정통신문 더보기">more <i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                        <div class="list_box" id="notice3">
                            <ul>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        <dl>
                                            <dt>방과후과정 혼합연령반 추가모집 안내</dt>
                                            <dd>
                                                <p>방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집 방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집</p>
                                                <span><i class="xi-time-o" aria-hidden="true"></i> 2020.03.18</span>
                                            </dd>
                                        </dl>
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        <dl>
                                            <dt>방과후과정 혼합연령반 추가모집 안내</dt>
                                            <dd>
                                                <p>방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집 방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집</p>
                                                <span><i class="xi-time-o" aria-hidden="true"></i> 2020.03.18</span>
                                            </dd>
                                        </dl>
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        <dl>
                                            <dt>방과후과정 혼합연령반 추가모집 안내</dt>
                                            <dd>
                                                <p>방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집 방과후과정 서비스 개선 계획에 따라 방과후 혼합연령반 추가 모집</p>
                                                <span><i class="xi-time-o" aria-hidden="true"></i> 2020.03.18</span>
                                            </dd>
                                        </dl>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more btn_more_01" title="가정통신문 더보기">more <i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                    </div>
                </div>
                <!-- //게시판 -->
            </div>
            <div class="MC_box5">
                <!-- 팝업존 -->
                <div class="pop0037 popupZone">
                    <div class="tit_wrap">
                        <h2 class="heading"><span>팝업존</span></h2>
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
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0037_popup.jpg" alt="우리 초등학교에 오신 것을 환영합니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0037_popup.jpg" alt="우리 초등학교에 오신 것을 환영합니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0037_popup.jpg" alt="우리 초등학교에 오신 것을 환영합니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0037_popup.jpg" alt="우리 초등학교에 오신 것을 환영합니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0037_popup.jpg" alt="우리 초등학교에 오신 것을 환영합니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0037_popup.jpg" alt="우리 초등학교에 오신 것을 환영합니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0037_popup.jpg" alt="우리 초등학교에 오신 것을 환영합니다."></a></p>
                    </div>
                </div>
                <!-- //팝업존 -->
            </div>
        </div>
		
		<div class="MC_wrap3">
            <div class="container">
                <div class="MC_box6">
                    <!-- 포토갤러리 -->
                    <div class="gallery0037">
                        <div class="tit_wrap">
                            <h2 class="heading"><span>포토갤러리</span></h2>
                            <a href="" class="btn_more btn_more_01" title="포토갤러리 더보기">more <i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                        <div class="list_box">
                            <ul>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0037_thumb01.jpg" alt=""></p>
                                        <p class="txt"><span>학년별 실내축구 대회</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0037_thumb02.jpg" alt=""></p>
                                        <p class="txt"><span>선생님과 함께 하는 야외활동</span></p>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display:none;">
                                    데이터가 없습니다.
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //포토갤러리 -->
                </div>
                <div class="MC_box7">						
                    <!-- 식단 -->
                    <div class="meal_menu0037">
                        <div class="tit_wrap">
                            <h2 class="heading"><span>오늘의 식단</span></h2>
                            <a href="" class="btn_more"><em class="hid">오늘의 식단 더보기</em></a>
                        </div>
                        <div class="inner">
                            <ul tabindex="0">
                                <li>
                                    <dl>
                                        <dt class="kcal">점심 <em>984kcal</em></dt>
                                        <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt class="kcal">저녁 <em>984kcal</em></dt>
                                        <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                    </dl>
                                </li>
                                <!-- 식단 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <img src="/images/template/${templateType}/main/0037_meal.png" alt="">
                        </div>
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