<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0094" />
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
		
		<div class="container">	
			<div class="MC_wrap1">
				<div class="MC_box1">
					<!-- 메인비주얼 -->
					<div class="MVisual0094 visual">
						<div class="slider" id="visualSlide">
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="밝은 미래와 꿈이 자라나는 행복한 학교">
							</p>
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="밝은 미래와 꿈이 자라나는 행복한 학교">
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
					<!-- 바로가기1 -->
					<div class="M_link0094">
						<ul>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0094_ico01_link01.png" alt=""></p>
									<span>학급홈페이지학급홈페이지학급홈페이지학급홈페이지학급홈페이지학급홈페이지</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0094_ico01_link02.png" alt=""></p>
									<span>교육목표</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0094_ico01_link03.png" alt=""></p>
									<span>전자도서관</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0094_ico01_link04.png" alt=""></p>
									<span>학교알리미</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0094_ico01_link05.png" alt=""></p>
									<span>학교폭력신고</span>
								</a>
							</li>
							<li>
								<a href="">
									<p class="ico"><img src="/images/template/${templateType}/main/0094_ico01_link06.png" alt=""></p>
									<span>학교폭력신고</span>
								</a>
							</li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
			</div>
		
			<div class="MC_box3">
				<!-- 게시판 -->
				<div class="notice0094">
					<div class="titTab">
						<ul>
							<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</span></a></li>
							<li><a href="#notice2"><span>가정통신문가정통신문가정통신문가정통신문 </span></a></li>
							<li><a href="#notice3"><span>게시판게시판</span></a></li>
						</ul>
					</div>
					<div class="tabWrap">
						<div class="list_box on" id="notice1">
							<a href="" class="topList">
								<dl class="new"><!-- 새글 dl 'new' class 추가-->
									<dt>11교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내</dt>
									<dd>
										<p>교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고</p>
										<span class="date">2022.02.14</span>
									</dd>
								</dl>
							</a>
							<ul>
								<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
									<p>창의인성레터 1호 안내</p>
									<span>2022.03.24</span>
								</a></li>
								<li><a href="">
									<p>제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 ㅍ</p>
									<span>2022.03.24</span>
								</a></li>
								<li><a href="">
									<p>상반기 재능 장학생 선발 공고지</p>
									<span>2022.03.24</span>
								</a></li>
								<li><a href="">
									<p>제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 ㅍ</p>
									<span>2022.03.24</span>
								</a></li>
								<li><a href="">
									<p>상반기 재능 장학생 선발 공고지</p>
									<span>2022.03.24</span>
								</a></li>
							</ul>
							<a href="" class="btn_more"><span class="hid">공지사항 더보기</span><em>MORE</em></a> 
						</div>
						<div class="list_box" id="notice2">
							<div class="topList">
								<!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경 (데이타가 없는경우 아래의 내용만 출력해주세요!)-->
								<dl class="no_data">
									<dt>데이터가 없습니다</dt>
								</dl>
								<!-- //데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경(데이타가 없는경우 아래의 내용만 출력해주세요!)-->
							</div>
							<a href="" class="btn_more"><span class="hid">가정통신문 더보기</span><em>MORE</em></a> 
						</div>
						<div class="list_box" id="notice3">
							<a href="" class="topList">
								<dl class="new"><!-- 새글 dl 'new' class 추가-->
									<dt>33교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내 교육청 산하 예술영재교육원 선발 일정 안내</dt>
									<dd>
										<p>교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 교육청 산하 예술영재교육원 선발 일정을 안내드립니다. 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고 하단 내용을 참고 하시고</p>
										<span class="date">2022.02.14</span>
									</dd>
								</dl>
							</a>

							<ul>
								<li><a href="">
									<p>33창의인성레터 1호 안내</p>
									<span>2022.03.24</span>
								</a></li>
								<li><a href="">
									<p>제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 ㅍ</p>
									<span>2022.03.24</span>
								</a></li>
								<li><a href="">
									<p>상반기 재능 장학생 선발 공고지</p>
									<span>2022.03.24</span>
								</a></li>
							</ul>
							<a href="" class="btn_more"><span class="hid">게시판 더보기</span><em>MORE</em></a> 
						</div>
					</div>
				</div>
				<!-- //게시판 -->
			</div>
				
			<div class="MC_wrap2">
				<div class="MC_box4">
					<!-- 캘린더 -->
					<div class="pop_schedule0094">
						<h2 class="heading"><span>행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정</span></h2>
						<div class="sche_wrap">
							<p class="month">
								<span>2022<em>02</em></span>
								<a href="" class="prev"><span class="hid">이전달</span><i class="xi-angle-left-min" aria-hidden="true"></i></a>
								<a href="" class="next"><span class="hid">다음달</span><i class="xi-angle-right-min" aria-hidden="true"></i></a>
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
											<td><span class="today">1</span></td>
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
									<li><a href=""><span>02.01</span>시업식, 입학식시업식, 입학식시업식, 입학식시업식, 입학식시업식, 입학식시업식, 입학식시업식, 입학식시업식, 입학식시업식, 입학식시업식, 입학식시업식, 입학식시업식, 입학식시업식, 입학식</a></li>
									<li><a href=""><span>02.09</span>학생상담주간</a></li>
									<li><a href=""><span>02.10</span>학교설명회 및 학부모총회</a></li>
									<li><a href=""><span>02.23</span>생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료</a></li>
									<li><a href=""><span>02.10</span>학교설명회 및 학부모총회</a></li>
									<li><a href=""><span>02.23</span>생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료</a></li>
									<!-- 일정 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
						</div>
						<a href="" class="btn_more"><span class="hid">일정 더보기</span><em>MORE</em></a> 

					</div>
					<!-- //캘린더 -->
					
				</div>
				
				<div class="MC_box5">
					<!-- 팝업존 -->
					<div class="pop0094 popupZone">
						<h2 class="heading"><span>팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존</span></h2>
						<div class="control">
							<p class="page"><strong></strong><span></span></p>
							<a href="" class="prev"><span class="hid">팝업존 다음</span><i class="xi-angle-left-min" aria-hidden="true"></i></a>
							<a href="" class="next"><span class="hid">팝업존 이전</span><i class="xi-angle-right-min" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">팝업존 정지</span><img src="/images/template/${templateType}/main/0094_popup_pause.png" alt="" /></a>
							<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
						</div>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 학교 홈페이지에 오신 것을 환영합니다." /></a></p>				
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 학교 홈페이지에 오신 것을 환영합니다." /></a></p>				
						</div>
					</div>
					<!-- //팝업존 -->
				</div>
				
				<div class="MC_box6">		
					<!-- 식단 -->
					<div class="meal_menu0094">
						<h2 class="heading"><span>오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단</span></h2>
						<div class="inner">
							<div tabindex="0">
								<ul>
									<li>
										<dl>
											<dt class="kcal"><span>점심</span> <em>984 Kcal</em></dt>
											<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기 </dd>
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
						</div>
						<p class="img"><img src="/images/template/${templateType}/main/0094_img_meal.png" alt=""></p>
						<a href="" class="btn_more"><span class="hid">오늘의 식단 더보기</span><em>MORE</em></a> 
					</div>
					<!-- //식단 -->
				</div>
				
				<div class="MC_box7">						
					<!-- 갤러리 -->
					<div class="gallery0094">
						<h2 class="heading"><span>포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리포토갤러리</span></h2>
						<div class="list_box">
							<ul>
								<li>
									<a href="">
										<p class="img">
											<img src="/images/template/${templateType}/main/0094_thumb_01.png" alt="">
										</p>
										<span class="txt">제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이</span>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img">
											<img src="/images/template/${templateType}/main/0094_thumb_02.png" alt="">
										</p>
										<span class="txt">자연과 함께하는 현장학습</span>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img">
											<img src="/images/template/${templateType}/main/0094_thumb_03.png" alt="">
										</p>
										<span class="txt">자연과 함께하는 현장학습</span>
									</a>
								</li>
								<!-- 갤러리 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;"><p>데이터가 없습니다.</p></li>
							</ul>							
						</div>
						<a href="" class="btn_more"><span class="hid">갤러리 더보기</span><em>MORE</em></a> 
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