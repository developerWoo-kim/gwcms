<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0002" />
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
					<div class="MVisual0002 visual">
						<div class="slider" id="visualSlide">
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="꿈과 슬기를 키우는 씩씩한 어린이">
							</p>
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="꿈과 슬기를 키우는 씩씩한 어린이">
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
					<!-- 캘린더 -->
					<div class="pop_schedule0002">
						<div class="sche_wrap">
							<p class="month">
								<span>2022.<em>02</em></span>
							</p>
								
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
											<td><a href="" class="today">1</a></td>
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
									</tbody>
								</table>
							</div>
							
							<div class="lst">
								<ul>
									<li><a href=""><span>01</span>직업체험활동 직업체험활동</a></li>
									<li><a href=""><span>09</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>10</span>특별활동의 날 특별활동의 날 특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>23</span>특별활동의 날 특별활동의 날 특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>24</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>25</span>특별활동의 날 특별활동의 날 특별활동의 날 특별활동의 날</a></li>
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
						</div>
						<a href="" class="btn_more"><i class="xi-plus-thin"></i><em class="hid">캘린더 더보기</em></a>

						<!-- 일정리스트 팝업 -->
						<div class="schePop" id="schePop">
							<h4>일정리스트</h4>
							<div class="list">
								<table>
									<caption>일정리스트 : 번호, 일정명, 일정시작, 일정종료</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:auto">
										<col style="width:20%" span="2">
									</colgroup>
									<thead>
										<tr>
											<th>번호</th>
											<th>일정명</th>
											<th>일정 시작</th>
											<th>일정 종료</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>부처님오신날</td>
											<td>2022-05-08</td>
											<td>2022-05-08</td>
										</tr>
										<tr>
											<td>2</td>
											<td>현장학습</td>
											<td>2022-05-12</td>
											<td>2022-05-12</td>
										</tr>
										<tr>
											<td>3</td>
											<td>8회 지방선거</td>
											<td>2022-06-01</td>
											<td>2022-06-01</td>
										</tr>
										<tr>
											<td>4</td>
											<td>부처님오신날</td>
											<td>2022-05-08</td>
											<td>2022-05-08</td>
										</tr>
										<tr>
											<td>5</td>
											<td>현장학습</td>
											<td>2022-05-12</td>
											<td>2022-05-12</td>
										</tr>
										<tr>
											<td>6</td>
											<td>8회 지방선거</td>
											<td>2022-06-01</td>
											<td>2022-06-01</td>
										</tr>
									</tbody>
								</table>
							</div>
							<a href="" class="close" id="schePopClose"><i class="xi-close" aria-hidden="true"></i><span class="hid">일정리스트 닫기</span></span></a>
						</div>
						<!-- //일정리스트 팝업-->
					</div>
					<!-- //캘린더 -->
				</div>
				<div class="MC_box3">
					<!-- 바로가기1 -->
					<div class="M_link0002">
						<ul>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0002_link01_01.png" alt=""></span>
									<p><span>교육목표</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0002_link01_02.png" alt=""></span>
									<p><span>차량안내</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0002_link01_03.png" alt=""></span>
									<p><span>학습자료실학습자료실학습자료실학습자료실학습자료실학습자료실학습자료실학습자료실학습자료실</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0002_link01_04.png" alt=""></span>
									<p><span>사이버도서관</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0002_link01_05.png" alt=""></span>
									<p><span>유치원알리미</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0002_link01_06.png" alt=""></span>
									<p><span>정보공개</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0002_link01_07.png" alt=""></span>
									<p><span>운영위원회</span></p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0002_link01_08.png" alt=""></span>
									<p><span>운영위원회</span></p>
								</a>
							</li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
				<div class="MC_box4">
					<!-- 게시판1 -->
					<div class="notice0002  notice000201">
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2" class=""><span>자유게시판 </span></a></li>
								<li><a href="#notice3" class=""><span>게시판게시판</span></a></li>
							</ul>
						</div>
						
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<li>
										<!-- 새글 a 'new' class 추가-->
										<a href=""class="new">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
											<span>2022.01.13</span>
										</a>
									</li>
								</ul>
								<a href="" class="btn_more2"><i class="xi-ellipsis-h"></i><em class="hid">공지사항 더보기</em></a> 
							</div>
							
							<div class="list_box" id="notice2">
								<ul>
									<!-- 데이터가 없을 시, li class "no_data" 처리 -->
									<li class="no_data">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more2"><i class="xi-ellipsis-h"></i><em class="hid">자유게시판 더보기</em></a> 
							</div>
							
							<div class="list_box" id="notice3">
								<ul>
									<li>
										<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
											<span>2022.01.13</span>
										</a>
									</li>
								</ul>
								<a href="" class="btn_more2"><i class="xi-ellipsis-h"></i><em class="hid">게시판 더보기</em></a> 
							</div>
						</div>
					</div>
					<!-- //게시판1 -->
				</div>
				

				<div class="MC_box5">		
					<!-- 팝업존 -->
					<div class="pop0002 popupZone">
						<div class="tit_wrap">
							<h2>팝업존</h2>
							<div class="control">
								<p class="page"><strong></strong><span></span></p>
								<a href="" class="prev"><span class="hid">팝업존 이전</span></a>
								<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
								<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
								<a href="" class="next"><span class="hid">팝업존 다음</span></a>
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
				
				
				
			</div>
		</div>

		<div class="MC_wrap2">
			<div class="container">
				<div class="MC_box6">
					<!-- 갤러리 -->
					<div class="gallery0002">
						<h2><span>포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리</span></h2>
						<div class="list_box">
							<ul>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0002_thumb_01.png" alt=""></p>
										<div class="txt">창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이 창의력을 높이는 블럭놀이</div>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0002_thumb_02.png" alt=""></p>
										<div class="txt">교외 현장 체험학습</div>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/${templateType}/main/0002_thumb_03.png" alt=""></p>
										<div class="txt">교외 현장 체험학습</div>
									</a>
								</li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">
									<p>데이터가 없습니다</p>
								</li>						
							</ul>
						</div>
						<a href="" class="btn_more2"><i class="xi-ellipsis-h"></i><em class="hid">포토갤러리 더보기</em></a> 
					</div>
					<!-- //갤러리 -->
				</div>
	
				<div class="MC_box7">						
					<!-- 식단 -->
					<div class="meal_menu0002">
						<div class="tit_wrap">
							<h2 class="heading">오늘의 식단</h2>
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
						<img src="/images/template/${templateType}/main/0002_img_meal.png" alt="">
						<a href="" class="btn_more2"><i class="xi-ellipsis-h"></i><em class="hid">오늘의 식단 더보기</em></a> 
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