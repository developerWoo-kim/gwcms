<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0036" />
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
			<div class="MVisual0036 visual">
				<div class="slider" id="visualSlide">
					<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="배움과 어울링으로 삶을 가꾸는 행복한 학교 우리학교에 오신것을 환영합니다."></p>
					<p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="배움과 어울링으로 삶을 가꾸는 행복한 학교 우리학교에 오신것을 환영합니다."></p>
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
				<div class="M_link0036">
					<ul>
						<li><a href="">
							<p><img src="/images/template/${templateType}/main/0036_ico01_link01.png" alt=""></p>
							<span>방과후학교</span>
						</a></li>
						<li><a href="">
							<p><img src="/images/template/${templateType}/main/0036_ico01_link02.png" alt=""></p>
							<span>사이버도서관</span>
						</a></li>
						<li><a href="">
							<p><img src="/images/template/${templateType}/main/0036_ico01_link03.png" alt=""></p>
							<span>학습자료실 학습자료실</span>
						</a></li>
						<li><a href="">
							<p><img src="/images/template/${templateType}/main/0036_ico01_link04.png" alt=""></p>
							<span>학교알리미</span>
						</a></li>
					</ul>
				</div>
				<!-- //바로가기1 -->
			</div>

			<div class="MC_box3">
				<!-- 팝업존 -->
				<div class="pop0036 popupZone">
					<h2>팝업존</h2>
					<div class="pop_img" id="popupSlide">
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
					</div>
					<div class="control arwShow">
						
						<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
						<p class="page"><strong>1</strong><span>3</span></p>
						<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
						<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
						<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
					</div>
				</div>
				<!-- //팝업존 -->
			</div>	
		</div>
		
		<div class="MC_wrap2">
			<div class="container">
				<div class="MC_box4">
					<!-- 게시판1 -->
					<div class="notice0036  notice003601">
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항</span></a></li>
								<li><a href="#notice2" class=""><span>자유게시판 </span></a></li>
								<li><a href="#notice3" class=""><span>게시판게시판</span></a></li>
							</ul>
						</div>
						
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<a href="" class="topList" ><!-- 데이터가 없을 시, dl 'no_data' class 추가-->
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
									<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020-03-30</span>
									</a></li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more2" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice2">
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
									<li><a href=""><!-- 새글 a 'new' class 추가-->
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020-03-30</span>
									</a></li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more2" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice3">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>11111학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
											학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
											<span class="date"><em>23</em>2022.03</span>
										</dd>
									</dl>
								</a>
								<ul>
									<li><a href=""><!-- 새글 a 'new' class 추가-->
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020-03-30</span>
									</a></li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more2" title="게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
						</div>
					</div>
					<!-- //게시판1 -->
				</div>
				<div class="MC_box5">
					<!-- 게시판2 -->
					<div class="notice0036  notice003602">
						<div class="titTab">
							<ul>
								<li><a href="#notice4" class="current"><span>공지사항공지사항</span></a></li>
								<li><a href="#notice5" class=""><span>자유게시판 </span></a></li>
								<li><a href="#notice6" class=""><span>게시판게시판</span></a></li>
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
											<span class="date"><em>23</em>2022.03</span>
										</dd>
									</dl>
								</a>
								<ul>
									<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020-03-30</span>
									</a></li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more2" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
							<div class="list_box" id="notice5">
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
									<li><a href=""><!-- 새글 a 'new' class 추가-->
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020-03-30</span>
									</a></li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more2" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
							<div class="list_box" id="notice6">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>11111학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과 
											학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
											<span class="date"><em>23</em>2022.03</span>
										</dd>
									</dl>
								</a>
								<ul>
									<li><a href=""><!-- 새글 a 'new' class 추가-->
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020-03-30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020-03-30</span>
									</a></li>
									<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more2" title="게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a> 
							</div>
						</div>
					</div>
					<!-- //게시판2 -->
				</div>
			</div>
		</div>
		
		<div class="MC_wrap3">
			<div class="container">
				<div class="con_wrap">
					<div class="MC_box6">			
						<!-- 식단 -->
						<div class="meal_menu0036">
							<h2>오늘의 식단</h2>
							<p class="img"><img src="/images/template/${templateType}/main/0036_img_meal.png" alt=""></p>
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
							</div>
							<a href="" class="btn_more" title="오늘의 식단 더보기"></a> 
						</div>
						<!-- //식단 -->
					</div>

					<div class="MC_box7">	
						<!-- 갤러리 -->
						<div class="gallery0036">
							<h2>포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리</h2>
							<div class="list_box">
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data">
										<p>데이터가 없습니다</p>
									</li>
								</ul>							
							</div>
							<a href="" class="btn_more" title="포토갤러리 더보기"></a> 
						</div>
						<!-- //갤러리 -->	
					</div>
				</div>

				<div class="MC_box8">	
					<!-- 캘린더 -->
					<div class="pop_schedule0036">
						<h2>행사일정</h2>
						<div class="sche_wrap">							
							<div class="sche_list">
								<a href="" class="prev"><span>이전달</span></a>
								<p class="month"><span>2022. <em>02</em></span></p>	
								<a href="" class="next"><span>다음달</span></a>
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
						<a href="" class="btn_more"><em class="hid">학교일정 더보기</em></a>
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