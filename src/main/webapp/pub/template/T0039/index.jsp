<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0039" />
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
		
		<div class="MC_box1">
			<!-- 메인비주얼 -->
			<div class="MVisual0039 visual">
				<div class="slider" id="visualSlide">
					<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="바른 생각, 밝은 마음. 함께 성장하는 우리. 우리 학교에 오신 것을 환영합니다."></p>
					<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="바른 생각, 밝은 마음. 함께 성장하는 우리. 우리 학교에 오신 것을 환영합니다."></p>
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
		
		<div class="MC_wrap1 container">
			<div class="MC_box2">		
				<!-- 바로가기1 -->
				<div class="M_link0039">
					<ul>
						<li>
						    <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0039_link01.png" alt=""></p>
                                <p class="txt"><span>교육목표</span></p>
						    </a>
						  </li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0039_link02.png" alt=""></p>
                                <p class="txt"><span>방과후학교</span></p>
                            </a>
						</li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0039_link03.png" alt=""></p>
                                <p class="txt"><span>학교알리미</span></p>
                            </a>
						</li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0039_link04.png" alt=""></p>
                                <p class="txt"><span>학습자료실</span></p>
                            </a>
						</li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0039_link05.png" alt=""></p>
                                <p class="txt"><span>정보공개</span></p>
                            </a>
						</li>
						<li>
                            <a href="">
                                <p class="img"><img src="/images/template/${templateType}/main/0039_link06.png" alt=""></p>
                                <p class="txt"><span>사이버도서관</span></p>
                            </a>
						</li>
					</ul>
				</div>
				<!-- //바로가기1 -->
			</div>
            <div class="MC_box3">
                <!-- 게시판1 -->
                <div class="notice0039  notice003901">
                    <div class="titTab">
                        <ul>
                            <li><a href="#notice1" class="current"><span>공지사항공지사항</span></a></li>
                            <li><a href="#notice2" class=""><span>자유게시판</span></a></li>
                            <li><a href="#notice3" class=""><span>자유게시판</span></a></li>
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
                                        <span class="date"><em>23</em>2022.03</span>
                                    </dd>
                                </dl>
                            </a>
                            <ul>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        학부모위원 당선자 확정 공고문
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        자율보호 가정확인서, 가능 내 건강관리 기록지
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more_01" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                        </div>
                        <div class="list_box" id="notice2">
                            <!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
                            <div class="topList">
                                <dl class="no_data">
                                    <dt>데이터가 없습니다</dt>
                                    <dd>
                                        <span class="date">-</span>
                                    </dd>
                                </dl>
                            </div>
                            <a href="" class="btn_more_01" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                        <div class="list_box" id="notice3">
                            <a href="" class="topList">
                                <dl>
                                    <dt>2222학부모위원 당선자 확정 공문</dt>
                                    <dd>
                                        <p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
                                        학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
                                        <span class="date"><em>23</em>2022.03</span>
                                    </dd>
                                </dl>
                            </a>
                            <ul>
                                <li>
                                    <a href="">
                                        유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        학부모위원 당선자 확정 공고문
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        자율보호 가정확인서, 가능 내 건강관리 기록지
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more_01" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                    </div>
                </div>
                <!-- //게시판1 -->
            </div>
            <div class="MC_box4">
                <!-- 게시판2 -->
                <div class="notice0039  notice003902">
                    <div class="titTab">
                        <ul>
                            <li><a href="#notice4" class="current"><span>공지사항공지사항</span></a></li>
                            <li><a href="#notice5" class=""><span>자유게시판</span></a></li>
                            <li><a href="#notice6" class=""><span>자유게시판</span></a></li>
                        </ul>
                    </div>
                    <div class="tabWrap">
                        <div class="list_box on" id="notice4">
                            <a href="" class="topList">
                                <dl class="new"><!-- 새글 dl 'new' class 추가-->
                                    <dt>2222학부모위원 당선자 확정 공문</dt>
                                    <dd>
                                        <p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
                                        학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
                                        <span class="date"><em>23</em>2022.03</span>
                                    </dd>
                                </dl>
                            </a>
                            <ul>
                                <li>
                                    <a href="" class="new"><!-- 새글 a 'new' class 추가-->
                                        유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        학부모위원 당선자 확정 공고문
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        자율보호 가정확인서, 가능 내 건강관리 기록지
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항
                                        <span>20.03.30</span>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more_01" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                        </div>
                        <div class="list_box" id="notice5">
                            <!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
                            <div class="topList">
                                <dl class="no_data">
                                    <dt>데이터가 없습니다</dt>
                                    <dd>
                                        <span class="date">-</span>
                                    </dd>
                                </dl>
                            </div>
                            <a href="" class="btn_more_01" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                        <div class="list_box" id="notice6">
                            <a href="" class="topList">
                                <dl>
                                    <dt>2222학부모위원 당선자 확정 공문</dt>
                                    <dd>
                                        <p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
                                        학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
                                        <span class="date"><em>23</em>2022.03</span>
                                    </dd>
                                </dl>
                            </a>
                            <ul>
                                <li>
                                    <a href="">
                                        유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림
                                        <span>2020-03-30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        학부모위원 당선자 확정 공고문
                                        <span>2020-03-30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        자율보호 가정확인서, 가능 내 건강관리 기록지
                                        <span>2020-03-30</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항
                                        <span>2020-03-30</span>
                                    </a>
                                </li>
                                <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                            <a href="" class="btn_more_01" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
                        </div>
                    </div>
                </div>
                <!-- //게시판2 -->
            </div>
            <div class="MC_box5">			
                <!-- 식단 -->
                <div class="meal_menu0039">
                    <div class="tit_wrap">
                        <h2 class="heading"><span>오늘의 식단</span></h2>
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
                            <!-- 식단 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                            <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                        </ul>
                        <img src="/images/template/${templateType}/main/0039_meal.png" alt="">
                    </div>
                </div>
                <!-- //식단 -->
            </div>
			<div class="MC_box6">
				<!-- 팝업존 -->
				<div class="pop0039 popupZone">
					<h2 class="heading">팝업존</h2>
					<div class="pop_img" id="popupSlide">
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0039_popup.jpg" alt="홈페이지를 새롭게 리뉴얼하였습니다."></a></p>
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0039_popup.jpg" alt="홈페이지를 새롭게 리뉴얼하였습니다."></a></p>
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0039_popup.jpg" alt="홈페이지를 새롭게 리뉴얼하였습니다."></a></p>
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
		</div>
		
		<div class="MC_wrap2">
			<div class="container">
                <div class="MC_box7">	
                    <!-- 갤러리 -->
                    <div class="gallery0039">
                        <div class="tit_wrap">
                            <h2>포토갤러리</h2>
                            <p>
                                사진으로 보는<br>
                                우리들의 이야기 공간
                            </p>
                            <a href="" class="btn_more" title="포토갤러리 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                        </div>
                        <div class="list_box">
                            <ul>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0039_gall_thumb01.jpg" alt=""></p>
                                        <strong>학부모 참관수업의 날</strong>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0039_gall_thumb02.jpg" alt=""></p>
                                        <strong>사랑의 빵 만들기</strong>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0039_gall_thumb03.jpg" alt=""></p>
                                        <strong>방과후 학교 수업현장</strong>
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
				<div class="MC_box8">	
					<!-- 캘린더 -->
					<div class="pop_schedule0039">
						<h2>학교일정</h2>
						<div class="sche_wrap">							
							<div class="sche_list">
								<a href="" class="prev"><span class="hid">이전달</span></a>
								<p class="month">2022. <em>02.</em></p>	
								<a href="" class="next"><span class="hid">다음달</span></a>
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
						<a href="" class="btn_more"><em class="hid">학교일정</em>더보기 <i class="xi-plus" aria-hidden="true"></i></a>
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