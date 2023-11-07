<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0081" />
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
			<div class="MC_box1">
				<!-- 메인비주얼 -->
				<div class="MVisual0081 visual">
					<div class="slider" id="visualSlide">
						<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="배우는 기쁨과 가르치는 보람으로 모두가 행복한 학교"></p>
						<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="배우는 기쁨과 가르치는 보람으로 모두가 행복한 학교"></p>
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
					<!-- 바로가기1 -->
					<div class="M_link0081">
						<h2 class="hid">바로가기</h2>
						<ul>
							<li>
								<a href="">
									<p><img src="/images/template/T0081/main/0081_link01_1.png" alt=""></p>
									<span>학습자료실</span>
								</a>
							</li>
							<li>
								<a href="">
									<p><img src="/images/template/T0081/main/0081_link01_2.png" alt=""></p>
									<span>방과후학교</span>
								</a>
							</li>
							<li>
								<a href="">
									<p><img src="/images/template/T0081/main/0081_link01_3.png" alt=""></p>
									<span>학교알리미</span>
								</a>
							</li>
							<li>
								<a href="">
									<p><img src="/images/template/T0081/main/0081_link01_4.png" alt=""></p>
									<span>운영위원회</span>
								</a>
							</li>
							<li>
								<a href="">
									<p><img src="/images/template/T0081/main/0081_link01_5.png" alt=""></p>
									<span>사이버도서관</span>
								</a>
							</li>
							<li>
								<a href="">
									<p><img src="/images/template/T0081/main/0081_link01_6.png" alt=""></p>
									<span>정보공개</span>
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
					<div class="notice0081">
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
											<div class="date"><p><span>22.07</span>12</p></div>
										</dd>
									</dl>

									<!-- 데이터가 없을 시, dl 'no_data' class 추가-->
									<dl class="no_data" style="display: none;">
										<dt>데이터가 없습니다</dt>
										<dd><div class="date"><p> - </p></div></dd>
									</dl>
								</a>
								<ul>
									<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
										<strong>2022학년도 신입생 배정 등록 일정</strong>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<strong>2022학년도 신입생 배정 등록 일정</strong>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<strong>2022학년도 신입생 배정 등록 일정</strong>
										<span>2020.03.30</span>
									</a></li> 
								</ul>
								<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><em class="hid">공지사항 더보기</em></a> 
							</div>
							<div class="list_box" id="notice2">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
											학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
											<div class="date"><p><span>22.07</span>12</p></div>
										</dd>
									</dl>

									<!-- 데이터가 없을 시, dl 'no_data' class 추가-->
									<dl class="no_data" style="display: none;">
										<dt>데이터가 없습니다</dt>
										<dd><div class="date"><p> - </p></div></dd>
									</dl>
								</a>
								<ul>
									<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
										<strong>2222022학년도 신입생 배정 등록 일정</strong>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<strong>2022학년도 신입생 배정 등록 일정</strong>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<strong>2022학년도 신입생 배정 등록 일정</strong>
										<span>2020.03.30</span>
									</a></li> 
								</ul>
								<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><em class="hid">가정통신문 더보기</em></a> 
							</div>
							<div class="list_box" id="notice3">
								<a href="" class="topList">
									<!-- 데이터가 없을 시, dl 'no_data' class 추가-->
									<dl class="no_data">
										<dt>데이터가 없습니다</dt>
										<dd><div class="date"><p> - </p></div></dd>
									</dl>
								</a> 
								<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><em class="hid">게시판 더보기</em></a> 
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>

                <div class="MC_box4">
					<!-- 캘린더 -->
					<div class="pop_schedule0081">
						<div class="tit_wrap">
							<h2>행사일정</h2>
							<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><em class="hid">행사일정 더보기</em></a> 
						</div>
						<div class="lst">
							<ul>
								<li><a href=""><span>2022.01<em>05</em></span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a></li>
								<li><a href=""><span>2022.01<em>10</em></span>둘째 주 학부모 초청 공개수업</a></li>
								<li><a href=""><span>2022.01<em>20</em></span>교외 나들이 현장체험학습</a></li>
								<li><a href=""><span>2022.01<em>24</em></span>친구들과 함께 맛있는 간식 만들기</a></li>
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
					</div>
					<!-- //캘린더 -->
				</div>
			</div>
		</div>

		<div class="MC_wrap4">
			<div class="container">
                <div class="MC_box5">
					<!-- 포토갤러리 -->
					<div class="gallery0081">
						<div class="tit_wrap">
							<h2>포토갤러리</h2>
							<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><em class="hid">포토갤러리 더보기</em></a> 
						</div>
						<div class="list_box">
							<ul>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0081_thumb_01.png" alt=""></p>
									<p class="txt">자율적인 수업시간<span class="date">2022.02.15</span></p>
								</a></li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
					</div>
					<!-- //포토갤러리 -->
				</div>

				<div class="MC_box6">		
					<!-- 팝업존 -->
					<div class="pop0081 popupZone">
						<div class="tit_wrap">
							<h2>팝업존</h2>
							<div class="nss_pg arwShow">
								<p class="page"><strong>1</strong> / <span>3</span></p>
								<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-long-arrow-left" aria-hidden="true"></i></a>
								<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
								<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
								<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-long-arrow-right" aria-hidden="true"></i></a>
							</div>
						</div>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>
				<div class="MC_box7">						
					<!-- 식단 -->
					<div class="meal_menu0081">
						<div class="tit_wrap">
							<h2>오늘의 식단</h2>
							<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><em class="hid">오늘의 식단 더보기</em></a> 
						</div>
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><em>점심</em> 984 Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal"><em>저녁</em> 684 Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
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