<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0072" />
<c:set var="layoutType" value="main" />
<c:set var="schoolName" value="세종중학교" />

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
				<div class="MVisual0072 visual">
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
		</div>
		<div class="MC_wrap2">  
			<div class="container">   
				<div class="MC_box2">
					<!-- 게시판 -->
					<div class="notice0072"> 
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2" class=""><span>가정통신문</span></a></li>
								<li><a href="#notice3" class=""><span>학습자료실학습자료실학습자료실학습자료실</span></a></li>
							</ul>
						</div> 
						<div class="tabWrap">
							<div class="list_box on" id="notice1"> 
								<ul>
									<li><a href="" class="new">
										<p class="tit">제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시</p>
										<p class="txt">제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.</p>
										<span class="date">2022<strong>03.28</strong></span>
									</a></li> 
									<li><a href="" >
										<p class="tit">제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시</p>
										<p class="txt">제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.</p>
										<span class="date">2022<strong>03.28</strong></span>
									</a></li>
									<li><a href="" >
										<p class="tit">제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시</p>
										<p class="txt">제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.</p>
										<span class="date">2022<strong>03.28</strong></span>
									</a></li>
									<li><a href="" >
										<p class="tit">제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시</p>
										<p class="txt">제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.</p>
										<span class="date">2022<strong>03.28</strong></span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy"><em class="hid">공지사항 더보기</em></a> 
							</div>
							<div class="list_box" id="notice2"> 
								<ul>
									<li><a href="" class="new">
										<p class="tit">22222제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시</p>
										<p class="txt">제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.</p>
										<span class="date">2022<strong>03.28</strong></span>
									</a></li> 
									<li><a href="" >
										<p class="tit">제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시</p>
										<p class="txt">제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.</p>
										<span class="date">2022<strong>03.28</strong></span>
									</a></li>
									<li><a href="" >
										<p class="tit">제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시</p>
										<p class="txt">제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.</p>
										<span class="date">2022<strong>03.28</strong></span>
									</a></li>
									<li><a href="" >
										<p class="tit">제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시제 289 안전점검의 날(4.1.) 실시</p>
										<p class="txt">제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.제289차 안전점검의 날 (4.1.) 실시와 관련하여 안내 하오니 참고 하시기 바랍니다.</p>
										<span class="date">2022<strong>03.28</strong></span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy"><em class="hid">가정통신문 더보기</em></a> 
							</div>
							<div class="list_box" id="notice3"> 
								<ul>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy"><em class="hid">학습자료실 더보기</em></a> 
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>    
				<div class="MC_box3">		
					<!-- 팝업존 -->
					<div class="pop0072 popupZone">
						<h2 class="heading">팝업존</h2>  
						<div class="nss_pg">
							<p class="page"><strong></strong><span></span></p> 
							<a href="" class="stop"><i class="xi-pause-circle" aria-hidden="true"></i><em class="hid">팝업존 정지</em></a>
							<a href="" class="play"><i class="xi-play-circle" aria-hidden="true"></i><em class="hid">팝업존 재생</em></a>
						</div> 
						<div class="control"> 
							<a href="" class="prev"><i class="xi-arrow-left" aria-hidden="true"></i><em class="hid">팝업존 이전</em></a> 
							<a href="" class="next"><i class="xi-arrow-right" aria-hidden="true"></i><em class="hid">팝업존 다음</em></a>
						</div>
						<div class="pop_img" id="popupSlide">
							<p class="item">
								<a href="" target="_blank" title="새창">
									<img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신 것을 환영합니다." />
								</a>
							</p>
							<p class="item">
								<a href="" target="_blank" title="새창">
									<img src="/images/template/T0001/main/img_popup01.png" alt="우리 유치원에 오신 것을 환영합니다." />
								</a>
							</p>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>  
				<div class="MC_box4">						
					<!-- 식단 -->
					<div class="meal_menu0072">
						<h2 class="heading">오늘의 식단</h2>  
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal">점심 898Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal">점심 898Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<img src="/images/template/${templateType}/main/0072_img_meal.png" alt="">
						<a href="" class="btn_more"><i class="xi-plus-thin" aria-hidden="true"></i><em class="hid">식단 더보기</em></a> 
					</div>
					<!-- //식단 -->
				</div>
			</div>
		</div>
		 
		<div class="MC_wrap3">  
			<div class="container">   
				<div class="MC_box5">
					<!-- 바로가기 -->
					<div class="M_link0072">
						<h2 class="hid">바로가기</h2>
						<ul>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0072_link01_1.png" alt=""></span>
									<p>교육목표</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0072_link01_2.png" alt=""></span>
									<p>방과후학교</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0072_link01_3.png" alt=""></span>
									<p>입학안내</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0072_link01_4.png" alt=""></span>
									<p>학습자료실</p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0072_link01_5.png" alt=""></span>
									<p>학교알리미</p>
								</a>
							</li>  
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0072_link01_6.png" alt=""></span>
									<p>교육목표</p>
								</a>
							</li>  
						</ul>
					</div>
					<!-- //바로가기 -->
				</div> 
				<div class="MC_box6">		
					<!-- 캘린더 -->
					<div class="pop_schedule0072">
						<h2 class="heading">행사일정</h2>				
						<div class="sche_list">
							<p class="month"><span>2022<em>02</em></span></p> 
							<img src="/images/template/${templateType}/main/0072_img_sche.png" alt="">	
							<a href="" class="prev"><i class="xi-arrow-left" aria-hidden="true"></i><span class="hid">이전달</span></a>
							<a href="" class="next"><i class="xi-arrow-right" aria-hidden="true"></i><span class="hid">다음달</span></a>
						</div>
						<div class="lst">
							<ul>
								<li><a href=""><span>03.06</span>직업체험활동 직업체험활동</a></li>
								<li><a href=""><span>03.11</span>소방안전교육의 날 소방안전교육의 날</a></li>
								<li><a href=""><span>03.18</span>특별활동의 날 특별활동의 날특별활동의 날 특별활동의 날특별활동의 날 특별활동의 날특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.22</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.22</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.22</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.22</span>특별활동의 날 특별활동의 날</a></li>
								<li><a href=""><span>03.22</span>특별활동의 날 특별활동의 날</a></li>
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more btnTy"><em class="hid">학교일정 더보기</em></a>
					</div>
					<!-- //캘린더 -->
				</div>
				 
				<div class="MC_box7">
					<!-- 갤러리 -->
					<div class="gallery0072">
						<div class="titleWrap">
							<h2 class="heading">포토갤러리</h2>
							<p>사진으로 보는 <br>우리들의 이야기 공간</p>
							<img src="/images/template/T0072/main/0072_bg_gallery.png" alt="">
							<a href="" class="btn_more"><i class="xi-plus-thin" aria-hidden="true"></i><em class="hid">포토갤러리 더보기</em></a>
						</div>
						<div class="list_box">
							<ul>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0072_thumb_01.png" alt=""></div>
									<p>1학년 방과후학교</p>  
								</a></li>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0072_thumb_02.png" alt=""></div>
									<p>1~2학년 모의고사</p> 
								</a></li>  
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0072_thumb_03.png" alt=""></div>
									<p>1~2학년 모의고사</p> 
								</a></li>  
								<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;"><p>데이터가 없습니다.</p></li>
							</ul>						
						</div>
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