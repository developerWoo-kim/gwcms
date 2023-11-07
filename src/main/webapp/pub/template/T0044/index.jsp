<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0044" />
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
                <div class="MVisual0044 visual">
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
		</div>
		
		<div class="MC_wrap2 container">
            <div class="MC_box2">
                <!-- 게시판 -->
                <div class="notice0044">
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
                                <dl class="new"><!-- 새글 dl 'new' class 추가-->
                                    <dt>학부모위원 당선자 확정 공문</dt>
                                    <dd>
                                        <p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
                                        학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
                                        <span class="date">2022.03.23</span>
                                    </dd>
                                </dl>
                            </a>
                            <ul>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        <p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                        <span>2022.07.25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>학부모위원 당선자 확정 공고문</p>
                                        <span>2022.07.25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
                                        <span>2022.07.25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
                                        <span>2022.07.25</span>
                                    </a>
                                </li>
                                <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more_01" title="공지사항 더보기">더보기 <span class="cross"></span></a> 
                        </div>
                        <div class="list_box" id="notice2">
                            <div href="" class="topList">
                                <!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
                                <dl class="no_data">
                                    <dt>데이터가 없습니다</dt>
                                    <dd><div class="date"><p> - </p></div></dd>
                                </dl>
                            </div>
                            <a href="" class="btn_more_01" title="가정통신문 더보기">더보기 <span class="cross"></span></a> 
                        </div>
                        <div class="list_box" id="notice3">
                            <a href="" class="topList">
                                <dl>
                                    <dt>학부모위원 당선자 확정 공문</dt>
                                    <dd>
                                        <p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
                                        학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
                                        <span class="date">2022.03.23</span>
                                    </dd>
                                </dl>
                            </a>
                            <ul>
                                <li>
                                    <a href="">
                                        <p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                        <span>2022.07.25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>학부모위원 당선자 확정 공고문</p>
                                        <span>2022.07.25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
                                        <span>2022.07.25</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
                                        <span>2022.07.25</span>
                                    </a>
                                </li>
                                <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more_01" title="자유게시판 더보기">더보기 <span class="cross"></span></a> 
                        </div>
                    </div>
                </div>
                <!-- //게시판 -->
            </div>
			<div class="MC_box3">
				<!-- 팝업존 -->
				<div class="pop0044 popupZone">
					<h2 class="heading">팝업존</h2>
					<div class="pop_img" id="popupSlide">
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0044_popup.jpg" alt="우리 학교 홈페이지에 오신 것을 환영합니다."></a></p>
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0044_popup.jpg" alt="우리 학교 홈페이지에 오신 것을 환영합니다."></a></p>
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0044_popup.jpg" alt="우리 학교 홈페이지에 오신 것을 환영합니다."></a></p>
					</div>
					<div class="control arwShow">
						<p class="page"><strong>1</strong><span>3</span></p>
						<div class="btn_box">
                            <a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
                            <a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
                            <a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
                            <a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
				<!-- //팝업존 -->
			</div>
            <div class="MC_box4">			
                <!-- 식단 -->
                <div class="meal_menu0044">
                    <h2 class="heading">오늘의식단</h2>
                    <div class="inner">
                        <ul tabindex="0">
                            <li>
                                <dl>
                                    <dt class="kcal">점심 984 Kcal</dt>
                                    <dd class="meal_list">혼합잡곡밥, 감자고추장찌개, 콩나물무침, 꽁치구이, 배추김치, 탕수육. 탕수육소스(칠리). 후식(수제요거트)</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="kcal">저녁 1,216 Kcal</dt>
                                    <dd class="meal_list">혼합잡곡밥, 감자고추장찌개, 콩나물무침, 꽁치구이, 배추김치, 탕수육. 탕수육소스(칠리). 후식(수제요거트) </dd>
                                </dl>
                            </li>
                            <!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                            <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                        </ul>
                    </div>
                    <p class="img"><img src="/images/template/${templateType}/main/0044_meal.png" alt=""></p>
                </div>
                <!-- //식단 -->
            </div>
		</div>
		<div class="MC_wrap3">
            <div class="container">
                <div class="MC_box5">	
                    <!-- 갤러리 -->
                    <div class="gallery0044">
                        <div class="tit_wrap">
                            <h2 class="heading">포토갤러리</h2>
                            <a href="" class="btn_more_01" title="포토갤러리 더보기">더보기 <span class="cross"></span></a>
                        </div>
                        <div class="list_box">
                            <ul>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0044_thumb01.jpg" alt=""></p>
                                        <strong>엄마와 함께하는 신나는 수업시간 엄마와 함께하는 신나는 수업시간</strong>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0044_thumb02.jpg" alt=""></p>
                                        <strong>사랑의 빵 만들기</strong>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0044_thumb03.jpg" alt=""></p>
                                        <strong>독서를 통한 마음의 교양 쌓기</strong>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0044_thumb04.jpg" alt=""></p>
                                        <strong>즐거운 체험시간</strong>
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
		</div>
		<div class="MC_wrap4">
		    <div class="container">
            <div class="MC_box6">
                <!-- 캘린더 -->
                <div class="pop_schedule0044">
                    <div class="tit_wrap">
                        <h2 class="heading">행사일정</h2>
                        <a href="" class="btn_more_02"><span class="hid">행사일정 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
                    </div>
                    <div class="sche_wrap">							
                        <div class="sche_list">
                            <p class="month">
                                <a href="" class="prev"><span class="hid">이전달</span></a>
                                <span>2022. <em>07</em></span>
                                <a href="" class="next"><span class="hid">다음달</span></a>
                            </p>
                            <div class="sche_table">
								<table>
									<caption>캘린더 : 월, 화, 수, 목, 금, 토, 일</caption>
									<colgroup>
									    <col style="width:14.285%" span="7">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="sun">일</th>
											<th scope="col">월</th>
											<th scope="col">화</th>
											<th scope="col">수</th>
											<th scope="col">목</th>
											<th scope="col">금</th>
											<th scope="col" class="sat">토</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span class="sun">&nbsp;</span></td>
											<td><span>&nbsp;</span></td>
											<td><a href="" class="today">1</a></td>
											<td><span>2</span></td>
											<td><span>3</span></td>
											<td><span>4</span></td>
											<td><span class="sat">5</span></td>
										</tr>
										<tr>
											<td><span class="sun">6</span></td>
											<td><span>7</span></td>
											<td><span>8</span></td>
											<td><a href="" class="event">9</a></td>
											<td><a href="" class="event">10</a></td>
											<td><span>11</span></td>
											<td><span class="sat">12</span></td>
										</tr>
										<tr>
											<td><span class="sun">13</span></td>
											<td><span>14</span></td>
											<td><span>15</span></td>
											<td><span>16</span></td>
											<td><span>17</span></td>
											<td><span>18</span></td>
											<td><span class="sat">19</span></td>
										</tr>
										<tr>
											<td><span class="sun">20</span></td>
											<td><span>21</span></td>
											<td><span>22</span></td>
											<td><a href="" class="event">23</a></td>
											<td><a href="" class="event">24</a></td>
											<td><a href="" class="event">25</a></td>
											<td><span class="sat">26</span></td>
										</tr>
										<tr>
											<td><span class="sun">20</span></td>
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
                        </div>
                        <div class="lst">
                            <ul>
                                <li><a href=""><span class="dt">05</span><span class="dsc">직업체험활동직업체험활동직업체험활동직업체험활동직업체험활동직업체험활동</span></a></li>
                                <li><a href=""><span class="dt">15</span><span class="dsc">소방안전교육의 날</span></a></li>
                                <li><a href=""><span class="dt">19</span><span class="dsc">특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">20</span><span class="dsc">특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">20</span><span class="dsc">특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">20</span><span class="dsc">특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">20</span><span class="dsc">특별활동의 날 특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">20</span><span class="dsc">특별활동의 날 특별활동의 날</span></a></li>
                                <li><a href=""><span class="dt">20</span><span class="dsc">특별활동의 날 특별활동의 날</span></a></li>
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- //캘린더 -->
            </div>
			<div class="MC_box7">		
				<!-- 바로가기1 -->
				<div class="M_link0044">
					<ul>
						<li>
						    <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0044_link01_icn01.png" alt=""></p>
                                <p class="txt">방과후학교방과후학교방과후학교방과후학교방과후학교방과후학교</p>
						    </a>
						  </li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0044_link01_icn02.png" alt=""></p>
                                <p class="txt">교육목표</p>
                            </a>
						</li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0044_link01_icn03.png" alt=""></p>
                                <p class="txt">학교알리미</p>
                            </a>
						</li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0044_link01_icn04.png" alt=""></p>
                                <p class="txt">학습자료</p>
                            </a>
						</li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0044_link01_icn05.png" alt=""></p>
                                <p class="txt">운영위원회</p>
                            </a>
						</li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0044_link01_icn06.png" alt=""></p>
                                <p class="txt">학부모서비스</p>
                            </a>
						</li>
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