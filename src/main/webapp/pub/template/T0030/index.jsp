<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0030" />
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
				<div class="MVisual0030 visual">
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
		</div>	
		
		<div class="MC_wrap2 container">
            <div class="MC_box2">
                <!-- 캘린더 -->
                <div class="pop_schedule0030">
                   <div class="tit_wrap">
                        <h2 class="heading">행사일정</h2>
                        <a href="" class="btn_more btn_more_01"><em class="hid">행사일정</em>더보기<span class="arr"></span></a>
                    </div>
                    <div class="sche_wrap">
                        <p class="month">
                            <a href="" class="prev"><em class="hid">이전달</em></a>
                            <span>2022<em>02</em></span>
                            <a href="" class="next"><em class="hid">다음달</em></a>
                        </p>
                        <div class="lst">
                            <ul>
                                <li><a href=""><span>07.12</span>학교안전교육학교안전교육학교안전교육학교안전교육학교안전교육학교안전교육학교안전교육학교안전교육학교안전교육</a></li>
                                <li><a href=""><span>07.15</span>어린이 독서 대회</a></li>
                                <li><a href=""><span>07.27</span>교외 현장체험학습</a></li>
                                <li><a href=""><span>07.27</span>2022학년도 에너지 절약 캠페인</a></li>
                                <li><a href=""><span>07.29</span>방과후과정 특성화 프로그램</a></li>
                                <li><a href=""><span>07.29</span>방과후과정 특성화 프로그램</a></li>
                                <li><a href=""><span>07.29</span>방과후과정 특성화 프로그램</a></li>
                                <li><a href=""><span>07.29</span>방과후과정 특성화 프로그램</a></li>
                                <li><a href=""><span>07.29</span>방과후과정 특성화 프로그램</a></li>
                                <li><a href=""><span>07.29</span>방과후과정 특성화 프로그램</a></li>
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- //캘린더 -->
            </div>
            <div class="MC_box3">						
                <!-- 식단 -->
                <div class="meal_menu0030">
                    <div class="tit_wrap">
                        <h2 class="heading">오늘의식단</h2>
                        <a href="" class="btn_more btn_more_01"><em class="hid">오늘의식단</em>더보기<span class="arr"></span></a>
                    </div>
                    <div class="inner">
                        <ul tabindex="0">
                            <li>
                                <dl>
                                    <dt class="kcal">점심 984Kcal</dt>
                                    <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="kcal">저녁 984Kcal</dt>
                                    <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                </dl>
                            </li>
                            <!-- 식단 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                            <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                        </ul>
                        <img src="/images/template/${templateType}/main/0030_meal.png" alt="">
                    </div>
                </div>
                <!-- //식단 -->
            </div>
            <div class="MC_box4">
                <!-- 팝업존 -->
                <div class="pop0030 popupZone">
                    <h2 class="heading">팝업존</h2>
                    <div class="control arwShow">
                        <p class="page"><strong></strong><span></span></p>
                        <div class="btn_box">
                            <a href="" class="prev"><span class="hid">팝업존 이전</span></a>
                            <a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
                            <a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
                            <a href="" class="next"><span class="hid">팝업존 다음</span></a>
                        </div>
                    </div>
                    <div class="pop_img" id="popupSlide">
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0030_popup.jpg" alt="홈페이지 리뉴얼 많은 관심 부탁드립니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0030_popup.jpg" alt="홈페이지 리뉴얼 많은 관심 부탁드립니다."></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0030_popup.jpg" alt="홈페이지 리뉴얼 많은 관심 부탁드립니다."></a></p>
                    </div>
                </div>
                <!-- //팝업존 -->
            </div>
            <div class="MC_box5">						
                <!-- 바로가기1 -->
                <div class="M_link0030">
                    <ul>
                        <li>
                            <a href="">
                                <p><img src="/images/template/T0030/main/0030_link01.png" alt=""></p>
                                <span>교육목표</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <p><img src="/images/template/T0030/main/0030_link02.png" alt=""></p>
                                <span>방과후학교</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <p><img src="/images/template/T0030/main/0030_link03.png" alt=""></p>
                                <span>사이버도서관</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <p><img src="/images/template/T0030/main/0030_link04.png" alt=""></p>
                                <span>학습자료실</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <p><img src="/images/template/T0030/main/0030_link05.png" alt=""></p>
                                <span>학교알리미</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- //바로가기1 -->
            </div>
        </div>
        
        <div class="MC_wrap3">
            <div class="container">
				<div class="MC_box6">		
					<!-- 게시판 -->
					<div class="notice0030">
						<h2 class="hid">공지사항</h2>
						<div class="titTab">
							<ul>
								<li class="current"><a href="#notice1"><span>공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2"><span>가정통신문</span></a></li>
								<li><a href="#notice3"><span>게시판게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<li>
									    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                            <dl>
                                                <dt>제 17기 학부모위원 당선자 제 17기 학부모위원 당선자제 17기 학부모위원 당선자</dt>
                                                <dd>
                                                    <p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
								    </li>
									<li>
									    <a href="">
                                            <dl>
                                                <dt>다중이용 시설 이용 학생 및 교직원 대상 안내 공고문</dt>
                                                <dd>
                                                    <p>방역안전대책본부에서 코로나19 확진자가 방문하거나 이용한 다중이용시설에 한해</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
								    </li>
									<li>
									    <a href="">
                                            <dl>
                                                <dt>학부모정책 모니터단 모집 안내</dt>
                                                <dd>
                                                    <p>학부모정책 모니터단 모집을 안내합니다. 참여신청은 다음과 같이 해당되는 바이니 참고 바랍니다.</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
								    </li>
									<li>
									    <a href="">
                                            <dl>
                                                <dt>2022년 1차 도서 구입 예정 목록</dt>
                                                <dd>
                                                    <p>도서관에서는 2022학년도 1차 도서 구입 예정 목록을 첨부파일과 같이 안내하고 있습니다. 확인 바랍니다.</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
									   </li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btn_more_02" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice2">
								<ul>
									<li>
									    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                            <dl>
                                                <dt>2022년 1차 도서 구입 예정 목록</dt>
                                                <dd>
                                                    <p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
								    </li>
									<li>
									    <a href="">
                                            <dl>
                                                <dt>2022년 1차 도서 구입 예정 목록</dt>
                                                <dd>
                                                    <p>22222222222학부모위원 당선자 확정 공고문</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
								    </li>
									<li>
									    <a href="">
                                            <dl>
                                                <dt>2022년 1차 도서 구입 예정 목록</dt>
                                                <dd>
                                                    <p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
								    </li>
									<li>
									    <a href="">
                                            <dl>
                                                <dt>2022년 1차 도서 구입 예정 목록</dt>
                                                <dd>
                                                    <p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
								        </a>
								    </li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btn_more_02" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<li>
									    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                            <dl>
                                                <dt>2022년 1차 도서 구입 예정 목록</dt>
                                                <dd>
                                                    <p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
								    </li>
									<li>
									    <a href="">
                                            <dl>
                                                <dt>2022년 1차 도서 구입 예정 목록</dt>
                                                <dd>
                                                    <p>33333333333333333학부모위원 당선자 확정 공고문</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
								    </li>
									<li>
									    <a href="">
                                            <dl>
                                                <dt>2022년 1차 도서 구입 예정 목록</dt>
                                                <dd>
                                                    <p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
								    </li>
									<li>
									    <a href="">
                                            <dl>
                                                <dt>2022년 1차 도서 구입 예정 목록</dt>
                                                <dd>
                                                    <p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
                                                    <span><i class="xi-alarm-o" aria-hidden="true"></i>2020-03-30</span>
                                                </dd>
                                            </dl>
									    </a>
								    </li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btn_more_02" title="게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>
            </div>
		</div>
		
		<div class="MC_wrap4 container">
            <div class="MC_box7">
                <!-- 포토갤러리 -->
                <div class="gallery0030">
                    <div class="tit_wrap">
                        <h2 class="heading">포토갤러리</h2>
                        <p>우리 학교의 행복했던 추억들을 공유합니다.</p>
                        <a href="" class="btn_more btn_more_02" title="포토갤러리 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                        <img src="/images/template/T0030/main/0030_thumb_chr.png" alt="">
                    </div>
                    <div class="list_box">
                        <ul>
                            <li>
                                <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0030_thumb01.jpg" alt=""></p>
                                    <p class="txt"><span>학년별 실내축구 대회</span></p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0030_thumb02.jpg" alt=""></p>
                                    <p class="txt"><span>농촌체험학습 현장</span></p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0030_thumb03.jpg" alt=""></p>
                                    <p class="txt"><span>재미있는 수학시간</span></p>
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