<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0090" />
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
					<div class="MVisual0090 visual">
						<div class="slider" id="visualSlide">
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="꿈과 비전을 창조하는 유치원">
							</p>
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="꿈과 비전을 창조하는 유치원">
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
				<div class="MC_cont">
					<div class="MC_box2">
						<!-- 게시판 -->
						<div class="notice0090">
						   <div class="titTab">
							   <ul>
								   <li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</span></a></li>
								   <li><a href="#notice2"><span>가정통신문</span></a></li>
								   <li><a href="#notice3"><span>게시판게시판</span></a></li>
							   </ul>
						   </div>
						   <div class="tabWrap">
							   <div class="list_box on" id="notice1">
								   <a href="" class="topList">
									   <dl class="new">
										   <!-- 새글 dl 'new' class 추가-->
										   <dt>교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내</dt>
										   <dd>
											   <p>교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을
												   안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고</p>
											   <span class="date">2022<em>03.16</em></span>
										   </dd>
									   </dl>
   
									   <!-- 데이터가 없을 시, dl 'no_data' class 추가(데이타가 없는경우 아래의 내용만 출력해주세요!)-->
									   <dl class="no_data" style="display: none;">
										   <dt>데이터가 없습니다</dt>
									   </dl>
									   <!-- //데이터가 없을 시, dl 'no_data' class 추가(데이타가 없는경우 아래의 내용만 출력해주세요!)-->
								   </a>
								   <ul>
									   <li>
										   <a href="">
											   <p>11창의인성레터 1호 안내</p>
											   <span>2022.03.24</span>
										   </a>
									   </li>
									   <li>
										   <a href="" class="new">
											   <p>제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 ㅍ</p>
											   <span>2022.03.24</span>
										   </a>
									   </li>
									   <li>
										   <a href="">
											   <p>상반기 재능 장학생 선발 공고지</p>
											   <span>2022.03.24</span>
										   </a>
									   </li>
								   </ul>
								   <a href="" class="btn_more"><img src="/images/template/T0090/main/0090_btn_more1.png" alt="더보기 버튼"><span class="hid">공지사항 더보기</span></a>
							   </div>
							   <div class="list_box" id="notice2"> 
                                   <div href="" class="topList">
                                        <!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
                                        <dl class="no_data">
                                            <dt>데이터가 없습니다</dt>
                                        </dl>
                                   </div>  
								   <a href="" class="btn_more"><img src="/images/template/T0090/main/0090_btn_more1.png" alt="더보기 버튼"><span class="hid">가정통신문 더보기</span></a>
							   </div>
							   <div class="list_box" id="notice3">
								   <a href="" class="topList">
									   <dl class="new">
										   <!-- 새글 dl 'new' class 추가-->
										   <dt>교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내</dt>
										   <dd>
											   <p>교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을
												   안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고</p>
											   <span class="date">2022<em>03.16</em></span>
										   </dd>
									   </dl> 
								   </a>
								   <ul>
									   <li>
										   <a href="">
											   <p>11창의인성레터 1호 안내</p>
											   <span>2022.03.24</span>
										   </a>
									   </li>
									   <li>
										   <a href="">
											   <p>제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 ㅍ</p>
											   <span>2022.03.24</span>
										   </a>
									   </li>
									   <li>
										   <a href="">
											   <p>상반기 재능 장학생 선발 공고지</p>
											   <span>2022.03.24</span>
										   </a>
									   </li>
								   </ul>
								   <a href="" class="btn_more"><img src="/images/template/T0090/main/0090_btn_more1.png" alt="더보기 버튼"><span class="hid">게시판 더보기</span></a>
							   </div>
						   </div>
					   </div>
					   <!-- //게시판 -->
					</div>	
					<div class="MC_box3">
						<!-- 팝업존 -->
						<div class="pop0090 popupZone"> 
							<h2 class="hid">팝업존</h2>
							<div class="control arwShow">
								<p class="page"><strong></strong><span></span></p>
								<a href="" class="prev"><i class="xi-arrow-left" aria-hidden="true"></i><em class="hid">팝업존 다음</em></a>
								<a href="" class="stop"><i class="xi-pause" aria-hidden="true"></i><em class="hid">팝업존 정지</em></a>
								<a href="" class="play"><i class="xi-play" aria-hidden="true"></i><em class="hid">팝업존 재생</em></a>
								<a href="" class="next"><i class="xi-arrow-right" aria-hidden="true"></i><em class="hid">팝업존 이전</em></a>
							</div> 
							<div class="pop_img" id="popupSlide">
								<p class="item">
									<a href="" target="_blank" title="새창">
										<img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신 것을 환영합니다." />
									</a>
								</p>
								<p class="item">
									<a href="" target="_blank" title="새창">
										<img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신 것을 환영합니다." />
									</a>
								</p>
							</div>
						</div>
						<!-- //팝업존 -->
					</div> 
					<div class="MC_box4">						
						<!-- 식단 -->
						<div class="meal_menu0090">
							<h2 class="heading">오늘의 식단</h2> 
							<div class="inner">
								<ul tabindex="0">
									<li>
										<dl>
											<dt class="kcal"><span>점심 670kcal</span></dt>
											<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt class="kcal"><span>저녁 670kcal</spa></dt>
											<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
										</dl>
									</li>
									<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display:none;">데이터가 없습니다.</li>
								</ul>
							</div>
							<p class="img"><img src="/images/template/T0090/main/0090_img_meal.png" alt=""></p>
							<a href="" class="btn_more"><img src="/images/template/T0090/main/0090_btn_more2.png" alt="더보기 버튼"><span class="hid">식단 더보기</span></a>
						</div>
						<!-- //식단 -->
					</div> 
				</div>
            </div>
				 
		</div>
		
		<div class="MC_wrap2"> 
			<div class="container"> 
				<div class="MC_box5">
					<!-- 갤러리 -->
					<div class="gallery0090">
						<h2 class="heading">포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0090_thumb_01.png" alt=""></p>
									<p class="txt">친구와 함께하는 수학교실</p>
									<span class="date">2022.03.14</span>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0090_thumb_02.png" alt=""></p>
									<p class="txt">온라인 수업</p>
									<span class="date">2022.03.10</span>
								</a></li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;"><p>데이터가 없습니다.</p></li>
							</ul>
							<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><span class="hid">포토갤러리 더보기</span></a>
						</div>
					</div>
					<!-- //갤러리 -->
				</div> 		

				<div class="MC_box6">	
					<!-- 캘린더 -->
					<div class="pop_schedule0090">
						<h2 class="heading">행사일정</h2>
						<div class="sche_wrap">
							<p class="month">
								<a href="" class="prev"><i class="xi-angle-left-min" aria-hidden="true"></i><span class="hid">이전달</span></a>
								<span>2022.<em>02</em></span>
								<a href="" class="next"><i class="xi-angle-right-min" aria-hidden="true"></i><span class="hid">다음달</span></a>
							</p>
							<div class="lst">
								<ul>
									<li><a href=""><span>03.01</span>직업체험활동 직업체험활동</a></li>
									<li><a href=""><span>03.02</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>03.07</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>03.09</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>03.22</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>03.28</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>03.28</span>특별활동의 날 특별활동의 날</a></li>
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
						</div>
						<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><span class="hid">행사일정 더보기</span></a>
					</div>
					<!-- //캘린더 -->	
				</div>

				<div class="MC_box7">
					<!-- 바로가기 -->
					<div class="M_link0090">
						<h2 class="hid">바로가기</h2>
							<ul>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0090_link01_1.png" alt=""></p>
										<p class="txt"><span><em>방과후학교 방과후학교 방과후학교</em></span></p>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0090_link01_2.png" alt=""></p>
										<p class="txt"><span><em>학교알리미</em></span></p>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0090_link01_3.png" alt=""></p>
										<p class="txt"><span><em>학급홈페이지</em></span></p>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0090_link01_4.png" alt=""></p>
										<p class="txt"><span><em>독서교육 지원시스템</em></span></p>
									</a>
								</li>
							</ul>
					</div>
					<!-- //바로가기 -->
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