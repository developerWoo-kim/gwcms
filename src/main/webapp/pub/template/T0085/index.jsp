<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0085" />
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
				<div class="MVisual0085 visual">
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
				<div class="MC_box2">		
					<!-- 팝업존 -->
					<div class="pop0085 popupZone">
						<div class="tit_wrap">
							<h2 class="title01">팝업존</h2>
							<div class="control arwShow">
								<p class="page"><strong></strong><span></span></p>
								<a href="" class="prev"><i class="xi-angle-left-min" aria-hidden="true"></i><em class="hid">팝업존 이전</em></a>
								<a href="" class="next"><i class="xi-angle-right-min" aria-hidden="true"></i><em class="hid">팝업존 다음</em></a>
								<a href="" class="stop"><img src="/images/template/T0085/main/0085_pop_stop.png" alt=""><em class="hid">팝업존 정지</em></a>
								<a href="" class="play"><i class="xi-play" aria-hidden="true"></i><em class="hid">팝업존 재생</em></a>
							</div>
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
				<div class="MC_box3">
					<!-- 바로가기 -->
					<div class="M_link0085">
						<h2 class="hid">바로가기</h2>
						<ul>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0085_ico01_link01.png" alt=""></span>
									<p>방과후 학교</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0085_ico01_link02.png" alt=""></span>
									<p>사이버 도서관</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0085_ico01_link03.png" alt=""></span>
									<p>학습자료실</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0085_ico01_link04.png" alt=""></span>
									<p>교육목표</p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0085_ico01_link05.png" alt=""></span>
									<p>학교알리미</p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0085_ico01_link06.png" alt=""></span>
									<p>정보공개</p>
								</a>
							</li>
						</ul>
					</div>
					<!-- //바로가기 -->
				</div>  
				<div class="MC_box4">
					<!-- 게시판 -->
					<div class="notice0085">
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2" class=""><span>가정통신문</span></a></li>
								<li><a href="#notice3" class=""><span>행복배움나눔터</span></a></li>
							</ul>
						</div> 
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<li><!-- 새글 a 'new' class 추가-->
										<a href="" class="new">
											<p class="tit">교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내 교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내</p>
											<p class="txt">백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 </p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내 교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내</p>
											<p class="txt">백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 </p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내 교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내</p>
											<p class="txt">백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 </p>
											<span class="date">2022.03.24</span>
										</a>
									</li>  
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display:none">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><span class="hid">공지사항 더보기</span></a> 
							</div>
							
							<div class="list_box" id="notice2">
								<ul>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><span class="hid">가정통신문 더보기</span></a> 
							</div>
							
							<div class="list_box" id="notice3">
								<ul>
									<li>
										<a href="">
											<p class="tit">333교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내 교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내</p>
											<p class="txt">백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 </p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">3333교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내 교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내</p>
											<p class="txt">백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 </p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="tit">3333교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내 교육청이 준비한 ‘감동과 알찬 정보가 가득한 영상’ 안내</p>
											<p class="txt">백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 백범 내려온다 ‘Feel the 백범’ 숨겨져있던 백범 김구와의 인연을 들여다보다! 광복 </p>
											<span class="date">2022.03.24</span>
										</a>
									</li> 
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display:none">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><span class="hid">자유게시판 더보기</span></a> 
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div> 
				<div class="MC_box5">
					<!-- 갤러리 -->
					<div class="gallery0085">
						<h2 class="title01">포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0085_thumb_01.png" alt=""></div>
									<p>1학년 방과후학교</p>
									<span class="date">2022.05.12</span>
								</a></li>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0085_thumb_02.png" alt=""></div>  
									<p>체육동아리 연습시간</p>
									<span class="date">2022.05.12</span>
								</a></li>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0085_thumb_03.png" alt=""></div> 
									<p>3학년 과학수업</p>
									<span class="date">2022.05.12</span>
								</a></li>
								<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;"><p>데이터가 없습니다.</p></li>
							</ul>						
						</div>
						<a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><span class="hid">포토갤러리 더보기</span></a> 
					</div>
					<!-- //갤러리 -->
				</div>   
			</div>
		</div>
		<div class="MC_wrap2"> 
			<div class="container"> 
				<div class="MC_box6">	
					<!-- 캘린더 -->
					<div class="pop_schedule0085">
						<h2 class="title01">행사일정</h2>  
						<div class="sche_wrap"> 
							<p class="month">
								<a href="" class="prev"><img src="/images/template/T0085/main/0085_prev_sche.png" alt=""><em class="hid">이전달</em></a>
								<span><strong class="year">2022</strong><em>02</em></span>
								<a href="" class="next"><img src="/images/template/T0085/main/0085_next_sche.png" alt=""><em class="hid">다음달</em></a>
							</p> 
							<div class="lst">
								<ul>
									<li><a href=""><span>05.21</span><p>직업체험활동 직업체험활동</p></a></li>
									<li><a href=""><span>05.20</span><p>소방안전교육의 날 소방안전교육의 날</p></a></li>
									<li><a href=""><span>05.14</span><p>특별활동의 날 특별활동의 날</p></a></li>
									<li><a href=""><span>05.13</span><p>특별활동의 날 특별활동의 날</p></a></li>
									<li><a href=""><span>05.20</span><p>특별활동의 날 특별활동의 날</p></a></li>
									<li><a href=""><span>05.20</span><p>특별활동의 날 특별활동의 날</p></a></li>
									<li><a href=""><span>05.20</span><p>특별활동의 날 특별활동의 날</p></a></li>
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div> 
						</div>
						<a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><span class="hid">행사일정 더보기</span></a> 
					</div>
					<!-- //캘린더 -->	
				</div>
				<div class="MC_box7">
					<!-- 식단 -->
					<div class="meal_menu0085">
						<h2 class="title01">오늘의 식단</h2> 
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><strong>점심</strong> 670kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal"><strong>점심</strong> 670kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><span class="hid">식단 더보기</span></a> 
						<img src="/images/template/T0085/main/0085_img_meal.png" alt="">
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