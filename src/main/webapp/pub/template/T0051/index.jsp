<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0051" />
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
			<div class="container">			
				<div class="MC_box1">
					<!-- 메인비주얼 -->
					<div class="MVisual0051 visual">
						<div class="slider" id="visualSlide">
							<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="슬기롭게 생각하며 꿈을 펼치는 인재"></p>
							<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="슬기롭게 생각하며 꿈을 펼치는 인재"></p>
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

				<div class="con_wrap">
					<div class="MC_box2">						
						<!-- 식단 -->
						<div class="meal_menu0051">
							<h2 class="heading"><span>오늘의 식단</span></h2>
							<div class="inner">
								<ul tabindex="0">
									<li>
										<dl>
											<dt class="kcal"><span>점심 <em>984 Kcal</em></span></dt>
											<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt class="kcal"><span>저녁 <em>684 Kcal</em></span></dt>
											<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
										</dl>
									</li>
									<!-- 식단 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
							<img src="/images/template/${templateType}/main/0051_img_meal.png" alt="">
							<a href="" class="btn_more"><span class="hid">오늘의 식단더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
						</div>
						<!-- //식단 -->
					</div>

					<div class="MC_box3">
						<!-- 캘린더 -->
						<div class="pop_schedule0051">
							<h2 class="heading"><span>행사일정</span></h2>
							<p class="month">
								<a href="" class="prev"><span class="hid">이전달</span><i class="xi-angle-left-thin" aria-hidden="true"></i></a>
								<span>2022. <em>02</em></span>
								<a href="" class="next"><span class="hid">다음달</span><i class="xi-angle-right-thin" aria-hidden="true"></i></a>
							</p>
							<div class="sche_wrap">
								<div class="lst">
									<ul>
										<li><a href=""><span>01.08</span><em>직업체험활동 직업체험활동</em></a></li>
										<li><a href=""><span>01.09</span><em>소방안전교육의 날 소방안전교육의 날 소방안전교육의 날 소방안전교육의 날</em></a></li>
										<li><a href=""><span>01.14</span><em>특별활동의 날 특별활동의 날</em></a></li>
										<li><a href=""><span>01.14</span><em>특별활동의 날 특별활동의 날</em></a></li>
										<li><a href=""><span>01.14</span><em>특별활동의 날 특별활동의 날</em></a></li>
										<li><a href=""><span>01.14</span><em>특별활동의 날 특별활동의 날</em></a></li>
								        <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
										<li class="no_data" style="display: none;">데이터가 없습니다.</li>
									</ul>
								</div>
							</div>
							<a href="" class="btn_more"><span class="hid">행사일정 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a>
						</div>
						<!-- //캘린더 -->
					</div>
				</div>			
			</div>
		</div>

		<div class="MC_wrap2">
			<div class="container">

				<div class="MC_box4">
					<!-- 게시판 -->
					<div class="notice0051 notice005101">
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
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
											학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
											<span class="date">2022-04-05</span>
										</dd>
									</dl>
	
									<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
									<dl class="no_data" style="display: none;">
										<dt>데이터가 없습니다</dt>
										<dd><span class="date">-</span></dd>
									</dl>
								</a>
								<ul>
									<li><a href="">
										공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
										<span>2020-03-30</span>
									</a></li>
								</ul>
								<a href="" class="btn_more"><span class="hid">공지사항 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice2">
								<div class="topList">
									<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
									<dl class="no_data">
										<dt>데이터가 없습니다</dt>
										<dd><div class="date"><p> - </p></div></dd>
									</dl>
								</div>
								<a href="" class="btn_more"><span class="hid">가정통신문 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice3">
								<a href="" class="topList">
									<dl>
										<dt>학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 </p>
											<span class="date">2022-04-05</span>
										</dd>
									</dl>
									<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
									<dl class="no_data" style="display: none;">
										<dt>데이터가 없습니다</dt>
										<dd><span class="date">-</span></dd>
									</dl>
								</a>
								<ul>
									<li>
										<a href="">
											<strong>게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 </strong>
											<span>2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<strong>게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 </strong>
											<span>2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<strong>게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 </strong>
											<span>2020-03-30</span>
										</a>
									</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">게시판 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>
	
				<div class="MC_box5">
					<!-- 게시판 -->
					<div class="notice0051 notice005102">
						<h2 class="hid">공지사항</h2>
						<div class="titTab">
							<ul>
								<li><a href="#notice4" class="current"><span>공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice5"><span>가정통신문</span></a></li>
								<li><a href="#notice6"><span>게시판게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on" id="notice4">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
											학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
											<span class="date">2022-04-05</span>
										</dd>
									</dl>
									<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
									<dl class="no_data" style="display: none;">
										<dt>데이터가 없습니다</dt>
										<dd><span class="date">-</span></dd>
									</dl>
								</a>
								<ul>
									<li><a href="">
										공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
										<span>2020-03-30</span>
									</a></li>
								</ul>
								<a href="" class="btn_more"><span class="hid">공지사항 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice5">
								<div class="topList">
									<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
									<dl class="no_data">
										<dt>데이터가 없습니다</dt>
										<dd><div class="date"><p> - </p></div></dd>
									</dl>
								</div>
								<a href="" class="btn_more"><span class="hid">가정통신문 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice6">
								<a href="" class="topList">
									<dl>
										<dt>학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 </p>
											<span class="date">2022-04-05</span>
										</dd>
									</dl>
									<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
									<dl class="no_data" style="display: none;">
										<dt>데이터가 없습니다</dt>
										<dd><span class="date">-</span></dd>
									</dl>
								</a>
								<ul>
									<li>
										<a href="">
											<strong>게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 </strong>
											<span>2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<strong>게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 </strong>
											<span>2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<strong>게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 게시판 </strong>
											<span>2020-03-30</span>
										</a>
									</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">게시판 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>
	
				<div class="MC_box6">
					<!-- 바로가기1 -->
					<div class="M_link0051">
						<ul>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0051_link01_1.png" alt=""></p>
								<span>교육목표</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0051_link01_2.png" alt=""></p>
								<span>학교알리미</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0051_link01_3.png" alt=""></p>
								<span>사이버 도서관</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0051_link01_4.png" alt=""></p>
								<span>방과후 학교</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0051_link01_5.png" alt=""></p>
								<span>운영위원회</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0051_link01_6.png" alt=""></p>
								<span>정보공개</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0051_link01_7.png" alt=""></p>
								<span>학습자료실</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0051_link01_8.png" alt=""></p>
								<span>각종양식</span>
							</a></li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
			</div>			
		</div>

		<div class="MC_wrap3">
			<div class="container">
				<div class="MC_box7">		
					<!-- 팝업존 -->
					<div class="pop0051 popupZone">
						<h2 class="heading">팝업존</h2>
						<div class="control arwShow">
							<p class="page"><strong></strong><span></span></p>
							<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left-min" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
							<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right-min" aria-hidden="true"></i></a>
						</div>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>	
	
				<div class="MC_box8">
					<!-- 갤러리 -->
					<div class="gallery0051">
						<h2 class="heading">포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0051_thumb_01.png" alt=""></p>
									<p class="txt">
										창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이
									</p>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0051_thumb_02.png" alt=""></p>
									<p class="txt">
										창의력을 높이는 블럭놀이
									</p>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0051_thumb_03.png" alt=""></p>
									<p class="txt">
										창의력을 높이는 블럭놀이
									</p>
								</a></li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">
									<p>데이터가 없습니다</p>
								</li>
							</ul>
						</div>
						<a href="" class="btn_more"><span class="hid">포토갤러리 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a>
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