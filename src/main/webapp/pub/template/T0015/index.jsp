<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0015" />
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
			<div class="MVisual0015 visual">
				<div class="slider" id="visualSlide">
					<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="꿈을 키우며 미래를 준비하는 우리들"></p>
					<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="꿈을 키우며 미래를 준비하는 우리들"></p>
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
				<div class="M_link0015">
					<ul>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0015_ico01_link01.png" alt=""></p>
								<p class="txt"><span>교육목표 교육목표 교육목표</span></p>
							</a>
						</li>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0015_ico01_link02.png" alt=""></p>
								<p class="txt"><span>방과후유치원</span></p>
							</a>
						</li>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0015_ico01_link03.png" alt=""></p>
								<p class="txt"><span>학부모서비스</span></p>
							</a>
						</li>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0015_ico01_link04.png" alt=""></p>
								<p class="txt"><span>학습자료실</span></p>
							</a>
						</li>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0015_ico01_link05.png" alt=""></p>
								<p class="txt"><span>유치원알리미</span></p>
							</a>
						</li>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0015_ico01_link06.png" alt=""></p>
								<p class="txt"><span>운영위원회</span></p>
							</a>
						</li>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0015_ico01_link07.png" alt=""></p>
								<p class="txt"><span>정보공개</span></p>
							</a>
						</li>
						<li>
							<a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0015_ico01_link08.png" alt=""></p>
								<p class="txt"><span>각종양식</span></p>
							</a>
						</li>
					</ul>
				</div>
				<!-- //바로가기1 -->
			</div>
		</div>
		
		<div class="MC_wrap2">
			<div class="container">
				<div class="MC_box3">
					<!-- 게시판 -->
					<div class="notice0015">
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
								<ul>
									<li class="new"><!-- 새글 li 'new' class 추가-->
										<a href="">
											<p class="tit"><span>코로나19 방역예방</span></p>
											<p class="txt">코로나19 방역을 위해 3월 12일부터 18까지 방역소독을 진행 할 예정입니다.</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit"><span>유치원 졸업식</span></p>
											<p class="txt">2022학년도 졸업식을 진행 할 예정입니다. 학부모님들은 많은 참여와 관심 부탁드립니다. 자세한 사항은...</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit"><span>신규 홈페이지 개편</span></p>
											<p class="txt">안녕하십니까? 2022년도 신규 홈페이지 개편을 하게 되어 이렇게 알립니다. 많은 응원 부탁드립니다 자세...</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit"><span>유치원 평가결과</span></p>
											<p class="txt">이번년도 유치원 감사 평가기간이였습니다. 저희유치원은 매년 실행되는 평가를 성실하게 받고있는 유치원입니다...</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i><span>더보기</span></a> 
							</div>
							<div class="list_box" id="notice2">
								<ul>
									<li>
										<a href="">
											<p class="tit"><span>가정통신문</span></p>
											<p class="txt">가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit"><span>유치원 졸업식</span></p>
											<p class="txt">2022학년도 졸업식을 진행 할 예정입니다. 학부모님들은 많은 참여와 관심 부탁드립니다. 자세한 사항은...</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit"><span>신규 홈페이지 개편</span></p>
											<p class="txt">안녕하십니까? 2022년도 신규 홈페이지 개편을 하게 되어 이렇게 알립니다. 많은 응원 부탁드립니다 자세...</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit"><span>유치원 평가결과</span></p>
											<p class="txt">이번년도 유치원 감사 평가기간이였습니다. 저희유치원은 매년 실행되는 평가를 성실하게 받고있는 유치원입니다...</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i><span>더보기</span></a> 
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<li>
										<a href="">
											<p class="tit"><span>게시판게시판게시판게시판게시판게시판</span></p>
											<p class="txt">게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit"><span>유치원 졸업식</span></p>
											<p class="txt">2022학년도 졸업식을 진행 할 예정입니다. 학부모님들은 많은 참여와 관심 부탁드립니다. 자세한 사항은...</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit"><span>신규 홈페이지 개편</span></p>
											<p class="txt">안녕하십니까? 2022년도 신규 홈페이지 개편을 하게 되어 이렇게 알립니다. 많은 응원 부탁드립니다 자세...</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit"><span>유치원 평가결과</span></p>
											<p class="txt">이번년도 유치원 감사 평가기간이였습니다. 저희유치원은 매년 실행되는 평가를 성실하게 받고있는 유치원입니다...</p>
											<span class="date">2020-03-30</span>
										</a>
									</li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i><span>더보기</span></a> 
							</div>
						</div>						
					</div>
					<!-- //게시판 -->
				</div>
			</div>
		</div>
		
		<div class="MC_wrap3 ">
			<div class="container">
				
				<div class="con_wrap">
					<div class="MC_box4">
						<!-- 캘린더 -->
						<div class="pop_schedule0015">
							<h2 class="hid">행사일정</h2>
							<div class="sche_wrap">
								<div class="month">
									<div class="month_wrap">
										<p class="year">2022</p>
										<a href="" class="prev"><span class="hid">이전달</span><i class="xi-angle-left" aria-hidden="true"></i></a>
										<span>04</span>
										<a href="" class="next"><span class="hid">다음달</span><i class="xi-angle-right" aria-hidden="true"></i></a>
									</div>
									<a href="" class="btn_more" title="학교일정 바로가기"><i class="xi-plus" aria-hidden="true"></i>더보기</a> 
								</div>
								<div class="lst">
									<ul>
										<li><a href=""><span>08</span>학부모위원 선출</a></li>
										<li><a href=""><span>09</span>안전교육주간</a></li>
										<li><a href=""><span>14</span>특별활동의 날 특별활동의 날</a></li>
										<li><a href=""><span>14</span>특별활동의 날 특별활동의 날</a></li>
										<li><a href=""><span>14</span>특별활동의 날 특별활동의 날</a></li>
										<li><a href=""><span>14</span>특별활동의 날 특별활동의 날</a></li>
										<li class="no_data" style="display: none;">데이터가 없습니다.</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- //캘린더 -->
					</div>
					<div class="MC_box5">		
						<!-- 팝업존 -->
						<div class="pop0015 popupZone">
							<div class="tit_wrap">
								<h2 class="hid">팝업존</h2>
								<div class="control arwShow">
									<p class="page"><strong>1</strong> / <span>3</span></p>
									<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left-min" aria-hidden="true"></i></a>
									<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right-min" aria-hidden="true"></i></a>
									<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
									<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
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
						<div class="meal_menu0015">
							<div class="tit_wrap">
								<h2>오늘의 식단</h2>
							</div>
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
							<p class="img"><img src="/images/template/${templateType}/main/0015_img_meal.png" alt=""></p>
							<a href="" class="btn_more"><span class="hid">오늘의 식단더보기</span><i class="xi-plus" aria-hidden="true"></i></a> 
						</div>
						<!-- //식단 -->
					</div>
				</div>
				
				<div class="con_wrap2">
					<div class="MC_box7">
						<!-- 갤러리 -->
						<div class="gallery0015 galleryZone">
							<h2>포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리</h2>
							<div class="gal_img" id="gallerySlide">
								<div class="list_box">
									<a href="">
										<p class="img">
											<img src="/images/template/${templateType}/main/0015_thumb_01.png" alt="">
										</p>
										<p class="txt"><span>선생님과 즐거운 등원 시간</span></p>
									</a>
								</div>
								<div class="list_box">
									<a href="">
										<p class="img">
											<img src="/images/template/${templateType}/main/0015_thumb_01.png" alt="">
										</p>
										<p class="txt"><span>선생님과 즐거운 등원 시간</span></p>
									</a>
								</div>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<div class="list_box no_data" style="display:none;">
									<p>데이터가 없습니다</p>
								</div> 
							</div>
							<div class="control arwShow">
								<a href="" class="prev" title="포토갤러리 다음"><i class="xi-angle-left" aria-hidden="true"></i></a>
								<a href="" class="next" title="포토갤러리 이전"><i class="xi-angle-right" aria-hidden="true"></i></a>
							</div>
							<a href="" class="btn_more"><span class="hid">포토갤러리 바로가기</span><i class="xi-plus" aria-hidden="true"></i></a> 
						</div>
						<!-- //갤러리 -->
					</div>
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