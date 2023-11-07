<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0038" />
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
					<div class="MVisual0038 visual">
						<div class="slider" id="visualSlide">
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="면학·성실·봉사 사랑과 존경이 가득한 배움의 학교 | 우리학교 홈페이지 방문을 환영합니다."> 
							</p>
							<p class="item">
								<img src="/images/template/${templateType}/main/m_visual.png" alt="면학·성실·봉사 사랑과 존경이 가득한 배움의 학교 | 우리학교 홈페이지 방문을 환영합니다."> 
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

				<div class="con_wrap">
					<div class="MC_box2">						
						<!-- 식단 -->
						<div class="meal_menu0038">  
							<h2>오늘의 식단</h2> 
							<div class="inner">
								<ul tabindex="0">
									<li>
										<dl>
											<dt class="kcal">점심 984 Kcal </dt>
											<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt class="kcal">저녁 684 Kcal</dt>
											<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
										</dl>
									</li>
									<!-- 식단 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div> 
							<img src="/images/template/${templateType}/main/0038_img_meal.png" alt="">
							<a href="" class="btn_more"><em class="hid">오늘의 식단 더보기</em></a> 
						</div>
						<!-- //식단 -->
					</div>

					<div class="MC_box3">
						<!-- 캘린더 -->
						<div class="pop_schedule0038">
							<h2>행사일정</h2>
							<div class="sche_wrap">
								<div class="sche_table">
									<p class="month">
										<a href="" class="prev"><span class="hid">이전달</span><i class="xi-arrow-left" aria-hidden="true"></i></a>
										<span class="date">2022<em>02</em></span>
										<a href="" class="next"><span class="hid">다음달</span><i class="xi-arrow-right" aria-hidden="true"></i></a>
									</p> 

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
										</tbody>
									</table>
								</div>

								<div class="lst">
									<ul>
										<li><a href=""><span>03.11</span>직업체험활동 직업체험활동</a></li>
										<li><a href=""><span>03.14</span>소방안전교육의 날 소방안전교육의 날</a></li>
										<li><a href=""><span>03.14</span>소방안전교육의 날 소방안전교육의 날</a></li>
										<li><a href=""><span>03.14</span>소방안전교육의 날 소방안전교육의 날</a></li>
										<li><a href=""><span>03.14</span>소방안전교육의 날 소방안전교육의 날</a></li>
										<li><a href=""><span>03.14</span>소방안전교육의 날 소방안전교육의 날</a></li>
										<li class="no_data" style="display: none;">데이터가 없습니다.</li>
									</ul>
								</div>
							</div> 
							<a href="" class="btn_more"><em class="hid">일정 더보기</em></a>
						</div>
						<!-- //캘린더 -->
					</div> 
				</div>
				
				<div class="con_wrap2">
					<div class="MC_box4">
						<!-- 게시판 -->
						<div class="notice0038  notice003801">
							<div class="titTab">
								<ul>
									<li><a href="#notice1" class="current"><span>공지사항공지사항</span></a></li>
									<li><a href="#notice2" class=""><span>자유게시판 </span></a></li>
									<li><a href="#notice2" class=""><span>자유게시판 </span></a></li>
								</ul>
							</div>
							<div class="tabWrap">
								<div class="list_box on" id="notice1"> 
									<ul> 
										<li>
											<a href="" class="new">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항
												<span>2022-01-11</span>
											</a>
										</li>
										<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
										<li class="no_data" style="display: none;">데이터가 없습니다.</li>
									</ul>
									<a href="" class="btn_more"><em class="hid">더보기</em></a> 
								</div>
								<div class="list_box" id="notice2"> 
									<ul> 
										<li>
											<a href="">자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판 자유게시판
												<span>2022-01-11</span>
											</a>
										</li>
										<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
										<li class="no_data" style="display: none;">데이터가 없습니다.</li>
									</ul>
									<a href="" class="btn_more"><em class="hid">더보기</em></a> 
								</div>
							</div>
						</div>
						<!-- //게시판 -->
					</div>

					<div class="MC_box5">
						<!-- 게시판 -->
						<div class="notice0038  notice003802">
							<div class="titTab">
								<ul>
									<li><a href="#notice1" class="current"><span>가정통신문</span></a></li>
									<li><a href="#notice2" class=""><span>자료실 </span></a></li>
								</ul>
							</div>
							<div class="tabWrap">
								<div class="list_box on" id="notice1"> 
									<ul> 
										<li>
											<a href="">가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 
												<span>2022-01-11</span>
											</a>
										</li>
										<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
										<li class="no_data" style="display: none;">데이터가 없습니다.</li>
									</ul>
									<a href="" class="btn_more"><em class="hid">더보기</em></a> 
								</div>
								
								<div class="list_box" id="notice2"> 
									<ul> 
										<li>
											<a href="">자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 
												<span>2022-01-11</span>
											</a>
										</li>
										<li>
											<a href="">자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 
												<span>2022-01-11</span>
											</a>
										</li>
										<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
										<li class="no_data" style="display: none;">데이터가 없습니다.</li>
									</ul>
									 
									<a href="" class="btn_more"> <em class="hid">더보기</em></a> 
								</div>
								
							</div>
						</div>
						<!-- //게시판 -->
					</div>
				</div>			
			</div>
		</div>
		
		<div class="MC_wrap2">
			<div class="container">
				<div class="MC_box6">
					<!-- 바로가기1 -->
					<div class="M_link0038">
						<h2 class="hid">바로가기</h2>
						<ul>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0038_ico01_link01.png" alt=""></span>
									<p>방과후학교</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0038_ico01_link02.png" alt=""></span>
									<p>디지털도서관</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0038_ico01_link03.png" alt=""></span>
									<p>학교알리미</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0038_ico01_link04.png" alt=""></span>
									<p>학부모서비스</p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0038_ico01_link05.png" alt=""></span>
									<p>학급홈페이지학급홈페이지</p>
								</a>
							</li> 
							<li>
								<a href="">
									<span class="img"><img src="/images/template/${templateType}/main/0038_ico01_link06.png" alt=""></span>
									<p>에듀넷</p>
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
				<div class="MC_box7">
					<!-- 갤러리 -->
					<div class="gallery0038">
						<div class="tit_wrap">
							<h2>학교앨범</h2>
							<p>우리들의 이야기공간</p>
						</div>
						
						<div class="list_box">  
							<ul>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0038_thumb_01.png" alt=""></p>
									<div class="txt">
										<p>서로 도와가며 공부하는 자율학습 시간</p>
									</div>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0038_thumb_02.png" alt=""></p>
									<div class="txt">
										<p>가족과 함께 떠나는 현장체험학습 즐거운 모습</p>
									</div>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0038_thumb_03.png" alt=""></p>
									<div class="txt">
										<p>책책책! 책을 읽는 습관</p>
									</div>
								</a></li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">
									<p>데이터가 없습니다</p>
								</li>
							</ul>
						</div> 
						<a href="" class="btn_more"><em class="hid">포토갤러리 더보기</em></a>
					</div>
					<!-- //갤러리 -->
				</div>  

				<div class="MC_box8">		
					<!-- 팝업존 -->
					<div class="pop0038 popupZone"> 
						<h2>팝업존</h2>  
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
						</div>
						<div class="control arwShow">
							<p class="page"><strong>1</strong>/<span>3</span></p>
							<a href="" class="prev"><i class="xi-arrow-left" aria-hidden="true"></i><span class="hid">팝업존 이전</span></a>
							<a href="" class="stop"><i class="xi-pause" aria-hidden="true"></i><span class="hid">팝업존 정지</span></a>
							<a href="" class="play"><i class="xi-play" aria-hidden="true"></i><span class="hid">팝업존 재생</span></a>
							<a href="" class="next"><i class="xi-arrow-right" aria-hidden="true"></i><span class="hid">팝업존 다음</span></a>
						</div>
					</div>
					<!-- //팝업존 -->
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