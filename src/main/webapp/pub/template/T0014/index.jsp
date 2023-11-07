<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0014" />
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
				<div class="MVisual0014 visual">
					<div class="slider" id="visualSlide">
						<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="보람찬 유치원 나누며 성장하는 행복한 교육 우리 유치원에 오신것을 환영합니다."></p>
						<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="보람찬 유치원 나누며 성장하는 행복한 교육 우리 유치원에 오신것을 환영합니다."></p>
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
			
			<div class="container">
				<div class="MC_box2">
					<!-- 게시판 -->
					<div class="notice0014">
						<h2 class="hid">공지사항</h2>
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항</span></a></li>
								<li><a href="#notice2" class=""><span>가정통신문</span></a></li>
								<li><a href="#notice3" class=""><span>자유게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<li class="new"><!-- 새글 li 'new' class 추가-->
										<a href="">
											<p class="tit">유치원운영위원회 학부모위원 선출 공고</p>
											<p class="txt">유치원운영위원회 학부모위원 선출 공고유치원운영위원회 학부모위원 선출 공고유치원운영위원회 학부모위원 선출 공고유치원운영위원회 학부모위원 선출 공고유치원운영위원회 학부모위원 선출 공고유치원운영위원회 학부모위원 선출 공고</p>
											<span><i class="xi-time-o" aria-hidden="true"></i>2022.01.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">코로나19 유치원 내 차단을 위한 등원</p>
											<p class="txt">코로나19 유치원 내 차단을 위한 등원코로나19 유치원 내 차단을 위한 등원코로나19 유치원 내 차단을 위한 등원코로나19 유치원 내 차단을 위한 등원</p>
											<span><i class="xi-time-o" aria-hidden="true"></i>2022.01.20</span>
										</a>
									</li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">공지사항 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
							</div>
							
							<div class="list_box" id="notice2">
								<ul>
									<li>
										<a href="">
											<p class="tit">가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문</p>
											<p class="txt">가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문</p>
											<span><i class="xi-time-o" aria-hidden="true"></i>2022.01.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">코로나19 유치원 내 차단을 위한 등원</p>
											<p class="txt">코로나19 유치원 내 차단을 위한 등원코로나19 유치원 내 차단을 위한 등원코로나19 유치원 내 차단을 위한 등원코로나19 유치원 내 차단을 위한 등원</p>
											<span><i class="xi-time-o" aria-hidden="true"></i>2022.01.20</span>
										</a>
									</li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">자유게시판 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
							</div>
							
							<div class="list_box" id="notice3">
								<ul>
									<li>
										<a href="">
											<p class="tit">자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판</p>
											<p class="txt">자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판</p>
											<span><i class="xi-time-o" aria-hidden="true"></i>2022.01.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">코로나19 유치원 내 차단을 위한 등원</p>
											<p class="txt">코로나19 유치원 내 차단을 위한 등원코로나19 유치원 내 차단을 위한 등원코로나19 유치원 내 차단을 위한 등원코로나19 유치원 내 차단을 위한 등원</p>
											<span><i class="xi-time-o" aria-hidden="true"></i>2022.01.20</span>
										</a>
									</li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">게시판 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<!-- //게시판1 -->
				</div>
	
				<div class="MC_box3">
					<!-- 캘린더 -->
					<div class="pop_schedule0014">
						<h2>행사일정</h2>
						<div class="sche_wrap">
							<p class="month">
								<a href="" class="prev" title="이전달"><i class="xi-caret-up-circle" aria-hidden="true"></i></a>
								<span>2022 <em>02</em></span>
								<a href="" class="next" title="다음달"><i class="xi-caret-up-circle" aria-hidden="true"></i></a>
							</p>
							<div class="lst">
								<ul>
									<li><a href=""><span>02.01</span>직업체험활동 직업체험활동</a></li>
									<li><a href=""><span>02.13</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>02.15</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>02.15</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>02.15</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>02.15</span>특별활동의 날 특별활동의 날</a></li>
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
						</div>
						<a href="" class="btn_more"><span class="hid">학교일정 더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
					</div>
					<!-- //캘린더 -->
				</div>
			</div>		
		</div>
		
		<div class="MC_wrap2 container">
			<div class="MC_box4">
				<!-- 갤러리 -->
				<div class="gallery0014">
					<div class="tit_wrap">
						<div class="h2_wrap">
							<h2>포토앨범포토앨범포토앨범포토앨범포토앨범포토앨범</h2>
							<a href="" class="btn_more"><span class="hid">포토앨범더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a>
						</div> 
					</div>
					<div class="list_box">
						<ul>
							<li><a href="">
								<p class="img"><img src="/images/template/T0014/main/0014_thumb_01.png" alt=""></p>
								<div class="txt">
									<span class="tit">창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이</span>
									<span class="date">2022-02-02</span>
								</div>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/T0014/main/0014_thumb_02.png" alt=""></p>
								<div class="txt">
									<span class="tit">교외 현장 체험학습</span>
									<span class="date">2022-02-02</span>
								</div>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/T0014/main/0014_thumb_03.png" alt=""></p>
								<div class="txt">
									<span class="tit">영어로 놀이하기 방과후활동</span>
									<span class="date">2022-02-02</span>
								</div>
							</a></li>
							<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
							<li class="no_data" style="display:none;">
								<p>데이터가 없습니다</p>
							</li>
						</ul>							
					</div>
				</div>
				<!-- //갤러리 -->
			</div>
		</div>
		
		<div class="MC_wrap3">
			<div class="container">
				<div class="MC_box5">		
					<!-- 팝업존 -->
					<div class="pop0014 popupZone">
						<div class="tit_wrap">
							<h2>팝업존</h2>
							<div class="control arwShow">
								<p class="page"><strong>1</strong><span>3</span></p>
								<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-arrow-left" aria-hidden="true"></i></a>
								<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
								<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
								<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-arrow-right" aria-hidden="true"></i></a>
							</div>
						</div>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>
				<div class="MC_box6">						
					<!-- 식단 -->
					<div class="meal_menu0014">
						<div class="tit_wrap">
							<h2>오늘의 식단</h2>
						</div>
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><img src="/images/template/${templateType}/main/0014_icon_meal.png" alt=""><span>점심 <em>984 Kcal</em></span></dt>
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
						<img src="/images/template/${templateType}/main/0014_img_meal.png" alt="">
						<a href="" class="btn_more"><span class="hid">오늘의 식단더보기</span><i class="xi-plus-thin" aria-hidden="true"></i></a> 
					</div>
					<!-- //식단 -->
				</div>
				<div class="MC_box7">
					<!-- 바로가기1 -->
					<div class="M_link0014">
						<ul>
							<li><a href="">
								<img src="/images/template/${templateType}/main/0014_ico01_link01.png" alt="">
								<p>교육과정 교육과정 교육과정</p>
							</a></li>
							<li><a href="">
								<img src="/images/template/${templateType}/main/0014_ico01_link02.png" alt="">
								<p>학습과정</p>
							</a></li>
							<li><a href="">
								<img src="/images/template/${templateType}/main/0014_ico01_link03.png" alt="">
								<p>운영위원회</p>
							</a></li>
							<li><a href="">
								<img src="/images/template/${templateType}/main/0014_ico01_link04.png" alt="">
								<p>유치원알리미</p>
							</a></li>
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