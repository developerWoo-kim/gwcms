<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0023" />
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
					<div class="MVisual0023 visual">
						<div class="slider" id="visualSlide">
							<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="나의 친구를 사랑하고 배려와 나눔을 아는 어린이"></p>
							<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="나의 친구를 사랑하고 배려와 나눔을 아는 어린이"></p>
						</div>
						<div class="control">
							<a href="" class="prev" title="비주얼 이전"><i class="xi-angle-left" aria-hidden="true"></i></a>
							<a href="" class="stop" title="비주얼 정지"><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play" title="비주얼 재생"><i class="xi-play" aria-hidden="true"></i></a>
							<a href="" class="next" title="비주얼 다음"><i class="xi-angle-right" aria-hidden="true"></i></a>
						</div>
					</div>
					<!-- //메인비주얼 -->
				</div>

				<div class="con_wrap">
					<div class="MC_box2">				
						<!-- 식단 -->
						<div class="meal_menu0023">
							<div class="tit_wrap">
								<h2>
									<span>오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단</span>
									<a href="" class="btn_more" title="오늘의 식단 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
								</h2>
							</div>							
							<div class="inner">
								<ul tabindex="0">
									<li>
										<dl>
											<dt class="kcal"><span><strong>점심</strong><em>984 Kcal</em></span></dt>
											<dd class="meal_list">혼합잡곡밥, 된장국, 돈육잡채, 꽁치구이, 배추김치, 요구르트, 꽁치구이, 배추김치, 요구르트</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt class="kcal"><span><strong>저녁</strong><em>684 Kcal</em></span></dt>
											<dd class="meal_list">혼합잡곡밥, 된장국, 돈육잡채, 꽁치구이, 
												배추김치, 요구르트</dd>
										</dl>
									</li>
									<!-- 식단 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
							<img src="/images/template/${templateType}/main/0023_img_meal.png" alt="">
						</div>
						<!-- //식단 -->
					</div>
	
					<div class="MC_box3">	
						<!-- 팝업존 -->
						<div class="pop0023 popupZone">
							<div class="tit_wrap">
								<h2 class="hid">팝업존</h2>
							</div>
							<div class="pop_img" id="popupSlide">
								<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다 자세히보기"></a></p>
								<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다 자세히보기"></a></p>
							</div>
							<div class="control arwShow">
								<p class="page"><strong>1</strong><span>3</span></p>
								<a href="" class="prev" title="팝업존 이전"><i class="xi-angle-left" aria-hidden="true"></i></a>
								<a href="" class="stop" title="팝업존 정지"></a>
								<a href="" class="play" title="팝업존 재생"><i class="xi-play" aria-hidden="true"></i></a>
								<a href="" class="next" title="팝업존 다음"><i class="xi-angle-right" aria-hidden="true"></i></a>
							</div>
						</div>
						<!-- //팝업존 -->
					</div>
				</div>
				
			</div>
			
		</div>
		
		<div class="MC_wrap2">
			<div class="container">	
				<div class="MC_box4">
					<!-- 게시판 -->
					<div class="notice0023">
						<h2 class="hid">공지사항</h2>
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2"><span>가정통신문</span></a></li>
								<li><a href="#notice3"><span>게시판게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on"id="notice1">
								<ul>
									<li class="new"><!-- 새글 li 'new' class 추가-->
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>14</em>
											</p>
											<span class="tit">온라인 학부모 교육 채널 안내</span>
											<span class="txt">학부모님들이 언제 어디서나 쉽고 편</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>12</em>
											</p>
											<span class="tit">행복더하기 부모교육 연수안내</span>
											<span class="txt">자녀와 부모의 행복 더하기 연수 안내</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.03 <em>27</em>
											</p>
											<span class="tit">저명강사와 함께하는 학부모 아이들</span>
											<span class="txt">저명한 강사님을 모시고 학부모님과</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.03 <em>25</em>
											</p>
											<span class="tit">행복한 우리 아이들! 부모님과 함께</span>
											<span class="txt">우리 자녀들이 행복 할 수 있도록 부모</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.03 <em>22</em>
											</p>
											<span class="tit">책놀이 가족체험 안내입니다.</span>
											<span class="txt">아이와 함께하는 책놀이 가족체험 안</span>
										</a>
									</li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice2">
								<ul>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">가정통신문가정통신문가정통신문가정통신문가정통신문</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="date">
												2022.04 <em>20</em>
											</p>
											<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
											<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										</a>
									</li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
						</div>					
					</div>
					<!-- //게시판 -->
				</div>	
				
				<div class="MC_box5">
					<!-- 바로가기1 -->
					<div class="M_link0023">
						<ul>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0023_ico01_link01.png" alt=""></p>
								<span>연간교육계획</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0023_ico01_link02.png" alt=""></p>
								<span>하루일과</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0023_ico01_link03.png" alt=""></p>
								<span>특색교육 특색교육</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0023_ico01_link04.png" alt=""></p>
								<span>우리반이야기</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0023_ico01_link05.png" alt=""></p>
								<span>원아모집안내</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0023_ico01_link06.png" alt=""></p>
								<span>유치원알리미</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0023_ico01_link07.png" alt=""></p>
								<span>부모교육</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0023_ico01_link08.png" alt=""></p>
								<span>찾아오시는길</span>
							</a></li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>	
			</div>
		</div>
		
		<div class="MC_wrap3">
			<div class="container">
				<div class="MC_box6">		
					<!-- 캘린더 -->
					<div class="pop_schedule0023">
						<h2>
							<span>오늘의 일정오늘의 일정오늘의 일정오늘의 일정오늘의 일정</span>
							<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i><em class="hid">행사일정 더보기</em></a>
						</h2>
						<div class="sche_wrap">							
							<div class="sche_list">
								<a href="" class="prev" title="이전달"><i class="xi-angle-left" aria-hidden="true"></i></a>
								<p class="month"><span>2022<em>03</em></span></p>	
								<a href="" class="next" title="다음달"><i class="xi-angle-right" aria-hidden="true"></i></a>
							</div>
							<div class="lst">
								<ul>
									<li><a href=""><span>01.21</span>독서말하기대회</a></li>
									<li><a href=""><span>01.20</span>교통안전교육</a></li>
									<li><a href=""><span>01.14</span>장애인의날 주간</a></li>
									<li><a href=""><span>01.13</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>01.20</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>01.20</span>특별활동의 날 특별활동의 날</a></li>
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
						</div>
						
					</div>
					<!-- //캘린더 -->
				</div>

				<div class="MC_box7">
					<!-- 갤러리 -->
					<div class="gallery0023">
						<h2>포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0023_thumb_01.png" alt=""></p>
									<span>유치원 전체소독 유치원 전체소독 유치원 전체소독 유치원 전체소독 유치원 전체소독</span>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0023_thumb_02.png" alt=""></p>
									<span>방과후수업 - 신나는 미술교실</span>
								</a></li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">
									<p>데이터가 없습니다</p>
								</li>
							</ul>							
						</div>
						<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i></a>
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