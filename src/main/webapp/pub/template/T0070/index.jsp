<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0070" />
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
			<div class="container">
				<div class="MC_box1">
					<!-- 메인비주얼 -->
					<div class="MVisual0070 visual">
						<div class="slider" id="visualSlide">
							<p class="item">
								<img src="/images/template/${templateType}/main/M_visual.png" alt="생각이 바르고 실력을 갖춘 자랑스러운 학생 | 우리 학교 홈페이지에 오신 것을 환영합니다.">
							</p>
							<p class="item">
								<img src="/images/template/${templateType}/main/M_visual.png" alt="생각이 바르고 실력을 갖춘 자랑스러운 학생 | 우리 학교 홈페이지에 오신 것을 환영합니다.">
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
		</div>
	
		<div class="MC_wrap2">
			<div class="container">
				<div class="MC_box2">
					<!-- 바로가기1 -->
					<div class="M_link0070">
						<ul>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0070_ico01_link01.png" alt=""></p>
									<span>교육목표교육목표교육목표교육목표교육목표교육목표교육목표교육목표</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0070_ico01_link02.png" alt=""></p>
									<span>입학안내</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0070_ico01_link03.png" alt=""></p>
									<span>방과후학교</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0070_ico01_link04.png" alt=""></p>
									<span>학교알리미</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0070_ico01_link05.png" alt=""></p>
									<span>에듀넷</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0070_ico01_link06.png" alt=""></p>
									<span>홍보동영상</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0070_ico01_link07.png" alt=""></p>
									<span>사이버스쿨사이버스쿨사이버스쿨사이버스쿨사이버스쿨사이버스쿨사이버스쿨</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0070_ico01_link08.png" alt=""></p>
									<span>학습센터</span>
								</a>
							</li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
			</div>
		</div>

		<div class="MC_wrap3">
			<div class="container">
				<div class="MC_box3">
					<!-- 게시판 -->
					<div class="notice0070">
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2"><span>가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문 </span></a></li>
								<li><a href="#notice3"><span>게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<li><a href="" class="new">
											<!-- 새글 a 'new' class 추가-->
											<span>공지사항</span>
											<p class="tit">2022학년도 학교운영위원회 학부모위원 당선자 공고</p>
											<p class="txt">학교 운영위원회 규정 제6조 제2항에 의하여 2022년...</p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
										<li><a href="" class="new">
											<span>공지사항</span>
											<p class="tit">2022학년도 학교운영위원회 학부모위원 당선자 공고</p>
											<p class="txt">학교 운영위원회 규정 제6조 제2항에 의하여 2022년...</p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
										<li><a href="">
											<span>공지사항</span>
											<p class="tit">2022학년도 1학기 학급별 방과후시간표(안)</p>
											<p class="txt">학교 운영위원회 규정 제6조 제2항에 의하여 2022년...</p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">공지사항 더보기</span><img src="/images/template/T0070/main/0070_btn_more.png" alt=""></a>
							</div>
							<div class="list_box" id="notice2">
								<ul>
									<li><a href="" class="new">
											<!-- 새글 a 'new' class 추가-->
											<span>공지사항</span>
											<p class="tit">2022학년도 학교운영위원회 학부모위원 당선자 공고</p>
											<p class="txt">학교 운영위원회 규정 제6조 제2항에 의하여 2022년...</p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
										<li><a href="">
											<span>공지사항</span>
											<p class="tit">2022학년도 학교운영위원회 학부모위원 당선자 공고</p>
											<p class="txt">학교 운영위원회 규정 제6조 제2항에 의하여 2022년...</p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
										<li><a href="">
											<span>공지사항</span>
											<p class="tit">2022학년도 1학기 학급별 방과후시간표(안)</p>
											<p class="txt">학교 운영위원회 규정 제6조 제2항에 의하여 2022년...</p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">가정통신문 더보기</span><img src="/images/template/T0070/main/0070_btn_more.png" alt=""></a>
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<li><a href="">
											<span>공지사항</span>
											<p class="tit">2022학년도 학교운영위원회 학부모위원 당선자 공고</p>
											<p class="txt">학교 운영위원회 규정 제6조 제2항에 의하여 2022년...</p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
										<li><a href="">
											<span>공지사항</span>
											<p class="tit">2022학년도 학교운영위원회 학부모위원 당선자 공고</p>
											<p class="txt">학교 운영위원회 규정 제6조 제2항에 의하여 2022년...</p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
										<li><a href="">
											<span>공지사항</span>
											<p class="tit">2022학년도 1학기 학급별 방과후시간표(안)</p>
											<p class="txt">학교 운영위원회 규정 제6조 제2항에 의하여 2022년...</p>
											<span class="date">2022.03.24</span>
										</a>
									</li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><span class="hid">게시판 더보기</span><img src="/images/template/T0070/main/0070_btn_more.png" alt=""></a>
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>

				<div class="MC_box4">
					<!-- 캘린더 -->
					<div class="pop_schedule0070">
						<h2>행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정</h2>
						<p class="month">
							<a href="" class="prev"><span class="hid">이전달</span><i class="xi-angle-left" aria-hidden="true"></i></a>
							<span class="date">2022<em>3</em></span>
							<a href="" class="next"><span class="hid">다음달</span><i class="xi-angle-right" aria-hidden="true"></i></a>
						</p>  
						<div class="lst">
							<ul>
								<li><a href=""><span class="date">04. 24</span> <em>학부모 초청 공개수업</em></a>
								</li>
								<li><a href=""><span class="date">04. 21</span> <em>교통안전교육</em></a></li>
								<li><a href=""><span class="date">04. 24</span> <em>학생상담주간</em></a></li>
								<li><a href=""><span class="date">04. 24</span> <em>1학년 창의연구동아리 대회</em></a></li>
								<li><a href=""><span class="date">04. 24</span> <em>장애인의날 3학년 봉사활동</em></a></li>
								<li><a href=""><span class="date">04. 24</span> <em>시업식, 입학식</em></a></li>
								<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;"><span class="date">-</span> <em>데이터가 없습니다.</em></li>
							</ul>
						</div>
						<a href="" class="btn_more"><span class="hid">일정 더보기</span><img src="/images/template/T0070/main/0070_btn_more.png" alt=""></a>
					</div>
					<!-- //캘린더 -->
				</div>
			</div>
		</div>

		<div class="MC_wrap4">
			<div class="container">
				<div class="MC_box5">
					<!-- 갤러리 -->
					<div class="gallery0070">
						<div class="tit_wrap">
							<h2>포토갤러리</h2>
							<p>우리학교의 추억을 공유합니다.</p>
							<p class="btns"><a href="" class="btn_more"><span class="hid">갤러리 더보기</span><img src="/images/template/T0070/main/0070_btn_more.png" alt=""></a></p>
						</div>
						<div class="list_box">
							<ul>
								<li>
									<a href="">
										<p class="img">
											<img src="/images/template/${templateType}/main/0070_thumb_01.png" alt="">
										</p>
										<span class="txt">제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이</span>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img">
											<img src="/images/template/${templateType}/main/0070_thumb_02.png" alt="">
										</p>
										<span class="txt">2022학년도 동아리활동 시간</span>
									</a>
								</li>
								<li class="no_data" style="display: none;">
									<p>데이터가 없습니다.</p>
								</li>
							</ul>
						</div>
					</div>
					<!-- //갤러리 -->
				</div>

				<div class="MC_box6">
					<!-- 팝업존 -->
					<div class="pop0070 popupZone">
						<h2 class="hid">팝업존</h2>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원홈페이지를 방문을 환영합니다." /></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원홈페이지를 방문을 환영합니다." /></a></p>
						</div>

						<div class="nss_pg">
							<p class="page"><strong></strong><span></span></p>
							<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
							<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>

				<div class="MC_box7">
					<!-- 식단 -->
					<div class="meal_menu0070">
						<div class="tit_wrap">
							<img src="/images/template/${templateType}/main/0070_img_meal.png" alt="">
							<h2>오늘의 식단</h2>
						</div>
						
						<div class="inner">
							<ul tabindex="0">
							   <li>
								   <dl>
									   <dt class="kcal"><span>점심</span> <em>984 Kcal</em></dt>
									   <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
								   </dl>
							   </li>
							   <li>
								   <dl>
									   <dt class="kcal"><span>저녁</span> <em>684 Kcal</em></dt>
									   <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
								   </dl>
							   </li>
							   <!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
							   <li class="no_data" style="display: none;">데이터가 없습니다.</li>
						   </ul>
						</div>
						<a href="" class="btn_more"><span class="hid">식단 더보기</span><img src="/images/template/T0070/main/0070_btn_more.png" alt=""></a>
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