<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0086" />
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
					<div class="MVisual0086 visual">
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
					<!-- 식단 -->
					<div class="meal_menu0086">
						<h2 class="heading">오늘의 식단</h2> 
						<span class="img"><img src="/images/template/${templateType}/main/0086_img_meal.png" alt=""></span>
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><span>점심</span> 898Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal"><span>점심</span> 898Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more btnTy1">더보기<i class="xi-plus" aria-hidden="true"></i></a> 
					</div>
					<!-- //식단 -->
				</div>
			</div>
		</div>
		
		<div class="MC_wrap2">  
			<div class="container"> 
				<div class="MC_box3">
					<!-- 캘린더 -->
					<div class="pop_schedule0086">
						<h2 class="heading">행사일정</h2>
						<p class="month">
							<a href="" class="prev"><span class="hid">이전달</span><i class="xi-arrow-left" aria-hidden="true"></i></a>
							<span class="date">2022.<em>02</em></span>
							<a href="" class="next"><span class="hid">다음달</span><i class="xi-arrow-right" aria-hidden="true"></i></a>
						</p>  
						<div class="sche_wrap"> 
							<div class="sche_table">
								<table>
									<caption>캘린더 : 월, 화, 수, 목, 금, 토, 일</caption>
									<colgroup>
									<col style="width:14.285%" span="7">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="sun">일</th>
											<th scope="col">월</th>
											<th scope="col">화</th>
											<th scope="col">수</th>
											<th scope="col">목</th>
											<th scope="col">금</th>
											<th scope="col" class="sat">토</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span class="sun">&nbsp;</span></td>
											<td><span>&nbsp;</span></td>
											<td><span href="" class="today">1</span></td>
											<td><span>2</span></td>
											<td><span>3</span></td>
											<td><span>4</span></td>
											<td><span class="sat">5</span></td>
										</tr>
										<tr>
											<td><span class="sun">6</span></td>
											<td><span>7</span></td>
											<td><span>8</span></td>
											<td><a href="" class="event">9</a></td>
											<td><a href="" class="event">10</a></td>
											<td><span>11</span></td>
											<td><span class="sat">12</span></td>
										</tr>
										<tr>
											<td><span class="sun">13</span></td>
											<td><span>14</span></td>
											<td><span>15</span></td>
											<td><span>16</span></td>
											<td><span>17</span></td>
											<td><span>18</span></td>
											<td><span class="sat">19</span></td>
										</tr>
										<tr>
											<td><span class="sun">20</span></td>
											<td><span>21</span></td>
											<td><span>22</span></td>
											<td><a href="" class="event">23</a></td>
											<td><a href="" class="event">24</a></td>
											<td><a href="" class="event">25</a></td>
											<td><span class="sat">26</span></td>
										</tr>
										<tr>
											<td><span class="sun">20</span></td>
											<td><span>28</span></td>
											<td><span>29</span></td>
											<td><span>30</span></td>
											<td><span>31</span></td>
											<td><span>&nbsp;</span></td>
											<td><span>&nbsp;</span></td>
										</tr>
										<tr>
											<td><span class="sun">20</span></td>
											<td><span>28</span></td>
											<td><span>29</span></td>
											<td><span>30</span></td>
											<td><span>31</span></td>
											<td><span>&nbsp;</span></td>
											<td><span>&nbsp;</span></td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="lst">
								<ul>
									<li><a href=""><span>03.11</span>직업체험활동 직업체험활동</a></li>
									<li><a href=""><span>03.14</span>소방안전교육의 날 소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>03.14</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>03.14</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>03.14</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>03.14</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
						</div>
						<a href="" class="btn_more btnTy2"><em class="hid">일정 더보기</em><i class="xi-plus" aria-hidden="true"></i></a>

					</div>
					<!-- //캘린더 -->
				</div>  
				<div class="MC_box4">
					<!-- 게시판 -->
					<div class="notice0086"> 
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2" class=""><span>가정통신문</span></a></li>
								<li><a href="#notice3" class=""><span>행복배움나눔터</span></a></li>
							</ul>
						</div> 
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>1111학교자체평가 온라인 학부모 설문조사를 실시 합니다.학교자체평가 온라인 학부모 설문조사를 실시 합니다.</dt>
										<dd><p>학교자체평가 학부모 온라인 설문을실시 합니다. 1. 설문 개요 : 학교자체평가를 위한 온라인을 통해학교자체평가 학부모 온라인 설문을실시 합니다. 1. 설문 개요 : 학교자체평가를 위한 온라인을 통해</p><span class="date">2022.03.25</span></dd>
									</dl>
								</a>
								<ul>
									<li><a href="" class="new">
										111112022학년도 방과후과정 혼합연령반 추가모집 안내2022학년도 방과후과정 혼합연령반 추가모집 안내2022학년도 방과후과정 혼합연령반 추가모집 안내2022학년도 방과후과정 혼합연령반 추가모집 안내
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										2022년도 연말정산 안내
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										2022년 EBS 신년기획특집 유아교육 다큐멘터리 '놀이의 힘' 시청 안내
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										2022학년도 학교회계 예산 편성에 따른 학생, 학부모 의견 수렴 안내
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										2022학년도 겨울방학 및 학년말 방학 중 위탁급식 공급업체 선정 결과 알림
										<span>2020.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy2"><i class="xi-plus" aria-hidden="true"></i><span class="hid">공지사항 더보기</span></a> 
							</div>
							<div class="list_box" id="notice2">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>22222학교자체평가 온라인 학부모 설문조사를 실시 합니다.학교자체평가 온라인 학부모 설문조사를 실시 합니다.</dt>
										<dd><p>학교자체평가 학부모 온라인 설문을실시 합니다. 1. 설문 개요 : 학교자체평가를 위한 온라인을 통해학교자체평가 학부모 온라인 설문을실시 합니다. 1. 설문 개요 : 학교자체평가를 위한 온라인을 통해</p><span class="date">2022.03.25</span></dd>
									</dl>
								</a>
								<ul>
									<li><a href="">
										222222022학년도 방과후과정 혼합연령반 추가모집 안내
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										2022년도 연말정산 안내
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										2022년 EBS 신년기획특집 유아교육 다큐멘터리 '놀이의 힘' 시청 안내
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										2022학년도 학교회계 예산 편성에 따른 학생, 학부모 의견 수렴 안내
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										2022학년도 겨울방학 및 학년말 방학 중 위탁급식 공급업체 선정 결과 알림
										<span>2020.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy2"><i class="xi-plus" aria-hidden="true"></i><span class="hid">가정통신문 더보기</span></a> 
							</div>
							<div class="list_box" id="notice3">
								<div class="topList">
									<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는  div로 변경-->
									<dl class="no_data">
										<dt>데이터가 없습니다</dt>
										<dd><div class="date"><p> - </p></div></dd>
									</dl>
								</div>
								<a href="" class="btn_more btnTy2"><i class="xi-plus" aria-hidden="true"></i><span class="hid">게시판 더보기</span></a> 
							</div>
						</div>
					</div>
					<!-- //게시판 -->
				</div>  
				<div class="MC_box5">
					<!-- 바로가기 -->
					<div class="M_link0086">
						<h2 class="hid">바로가기</h2>
						<ul>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0086_link01_1.png" alt=""></span>
									<p>교육목표</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0086_link01_2.png" alt=""></span>
									<p>방과후학교</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0086_link01_3.png" alt=""></span>
									<p>입학안내</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0086_link01_4.png" alt=""></span>
									<p>학습자료실</p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0086_link01_5.png" alt=""></span>
									<p>학교알리미</p>
								</a>
							</li>  
						</ul>
					</div>
					<!-- //바로가기 -->
				</div> 
			</div>
		</div> 
		<div class="MC_wrap3">
			<div class="container"> 
				<div class="MC_box6">		
					<!-- 팝업존 -->
					<div class="pop0086 popupZone">
						<h2 class="heading">팝업존</h2>  
						<div class="control">
							<a href="" class="prev"><i class="xi-arrow-left" aria-hidden="true"></i><em class="hid">팝업존 이전</em></a>
							<a href="" class="stop"><i class="xi-pause" aria-hidden="true"></i><em class="hid">팝업존 정지</em></a>
							<a href="" class="play"><i class="xi-play" aria-hidden="true"></i><em class="hid">팝업존 재생</em></a>
							<a href="" class="next"><i class="xi-arrow-right" aria-hidden="true"></i><em class="hid">팝업존 다음</em></a>
							<p class="page"><strong></strong><span></span></p> 
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
				<div class="MC_box7">
					<!-- 갤러리 -->
					<div class="gallery0086">
						<h2 class="heading">포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0086_thumb_01.png" alt=""></div>
									<p>1학년 방과후학교</p>
								</a></li>
								<li><a href="">
									<div class="img"><img src="/images/template/${templateType}/main/0086_thumb_02.png" alt=""></div>
									<p>체육동아리 연습시간</p>
								</a></li> 
								<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;"><p>데이터가 없습니다.</p></li>
							</ul>						
						</div>
						<a href="" class="btn_more btnTy1">더보기<i class="xi-plus" aria-hidden="true"></i></a> 
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