<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0019" />
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
					<div class="MVisual0019 visual">
						<div class="slider" id="visualSlide">
							<p class="item">
								<img src="/images/template/T0019/main/m_visual.png" alt="아이들이 꿈을 키우는 행복 배움터">
							</p>
							<p class="item">
								<img src="/images/template/T0019/main/m_visual.png" alt="아이들이 꿈을 키우는 행복 배움터">
							</p>
						</div>
						<div class="control">
							<a href="" class="prev slick-arrow" style="display: inline-block;"><span class="hid">비주얼 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">비주얼 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play"><span class="hid">비주얼 재생</span><i class="xi-play" aria-hidden="true"></i></a>
							<a href="" class="next slick-arrow" style="display: inline-block;"><span class="hid">비주얼 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
						</div>
					</div>
					<!-- //메인비주얼 -->
				</div>
				<div class="MC_box2">
					<!-- 바로가기1 -->
					<div class="M_link0019">
						<ul>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/T0019/main/0019_link01_1.png" alt=""></span>
									<p>교육목표교육목표교육목표교육목표교육목표</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/T0019/main/0019_link01_2.png" alt=""></span>
									<p>교육과정</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/T0019/main/0019_link01_3.png" alt=""></span>
									<p>사이버도서관</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/T0019/main/0019_link01_4.png" alt=""></span>
									<p>학습자료실</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/T0019/main/0019_link01_5.png" alt=""></span>
									<p>유치원알리미</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/T0019/main/0019_link01_6.png" alt=""></span>
									<p>운영위원회교육목표교육목표교육목표 </p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/T0019/main/0019_link01_7.png" alt=""></span>
									<p>정보공개교육목표교육목표교육목표</p>
								</a>
							</li>
							<li>
								<a href="">
									<span class="img"><img src="/images/template/T0019/main/0019_link01_8.png" alt=""></span>
									<p>각종양식</p>
								</a>
							</li>
							<!-- 바로가기 데이터가 없는경우 아래의 내용만 출력해주세요! -->
							<li class="no_data" style="display: none;">데이터가 없습니다.</li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
				<div class="MC_box3">
					<!-- 식단 -->
					<div class="meal_menu0019">
						<h2>오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단</h2>
						<div class="inner">
							<img src="/images/template/T0019/main/0019_img_meal1.png" alt="">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><span><strong>점심 810Kcal</strong></span></dt>
										<dd class="meal_list">흰쌀밥, 미역국, 오뎅볶음, 불고기야채볶음, 배추김치, 포도푸딩 흰쌀밥, 미역국, 오뎅볶음, 불고기야채볶음, 배추김치, 포도푸딩 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal"><span><strong>저녁 810Kcal</strong></span></dt>
										<dd class="meal_list">배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 오뎅볶음, 불고기야채볶음, 배추김치, 포도푸딩 </dd>
									</dl>
								</li>
								<!-- 식단 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more btnTy1"><em class="hid">오늘의 식단 더보기</em><img src="/images/template/T0019/main/0019_meal_btn.png" alt=""></a >
					</div>
					<!-- //식단 -->
				</div>
			</div>
		</div>
		<div class="MC_wrap2 ">
			<div class="container">
				<div class="MC_box4">
					<!-- 게시판 -->
					<div class="notice0019">
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2" class=""><span>가정통신문공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice3" class=""><span>공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항가정통신문공지사항공지사항공지사항</span></a></li>
							</ul>
						</div>

						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<li class="on">
										<!-- 새글 a 'new' class 추가-->
										<a href=""class="new">
											<p class="txt">공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</p>
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="txt">공지사항공지사항공지사항공지사항공지사항</p>
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="txt">공지사항공지사항공지사항공지사항공지사항</p>
											<span>2022.01.13</span>
										</a>
									</li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy2"><em class="hid">공지사항 더보기</em><i class="xi-ellipsis-h"></i></a>
							</div>

							<div class="list_box" id="notice2">
								<ul>
									<li class="on">
										<!-- 새글 a 'new' class 추가-->
										<a href=""class="new">
											<p class="txt">공지사항공지사항공지사항공지사항공지사항</p>
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="txt">공지사항공지사항공지사항공지사항공지사항</p>
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="txt">공지사항공지사항공지사항공지사항공지사항</p>
											<span>2022.01.13</span>
										</a>
									</li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy2"><em class="hid">공지사항 더보기</em><i class="xi-ellipsis-h"></i></a>
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<li class="on">
										<!-- 새글 a 'new' class 추가-->
										<a href=""class="new">
											<p class="txt">공지사항공지사항공지사항공지사항공지사항</p>
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="txt">공지사항공지사항공지사항공지사항공지사항</p>
											<span>2022.01.13</span>
										</a>
									</li>
									<li>
										<a href="">
											<p class="txt">공지사항공지사항공지사항공지사항공지사항</p>
											<span>2022.01.13</span>
										</a>
									</li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more btnTy2"><em class="hid">공지사항 더보기</em><i class="xi-ellipsis-h"></i></a>
							</div>

						</div>
					</div>
					<!-- //게시판 -->
				</div>

				<div class="MC_box5">
					<!-- 팝업존 -->
					<div class="popup0019 popupZone">
						<div class="tit_wrap">
							<h2>팝업존팝업존팝업존팝업존팝업존팝업존팝업존</h2>
							<div class="control arwShow">
								<p class="page"><strong>1</strong> / <span>3</span></p>
								<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-long-arrow-left" aria-hidden="true"></i></a>
								<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
								<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
								<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-long-arrow-right" aria-hidden="true"></i></a>
							</div>
						</div>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>
			</div>
		</div>

		<div class="MC_wrap3">
			<div class="container">
				<div class="MC_box6">
					<!-- 갤러리 -->
					<div class="gallery0019">
						<h2><span>학교앨범학교앨범학교앨범학교앨범학교앨범학교앨범학교앨범학교앨범학교앨범학교앨범</span></h2>
						<div class="list_box">
							<ul>
								<li>
									<a href="">
										<p class="img"><img src="/images/template/T0019/main/0019_thumb_01.png" alt=""></p>
										<p class="gal_txt">도서관 견학도서관 견학도서관 견학도서관 견학도서관 견학도서관 견학</p>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img">
											<img src="/images/template/T0019/main/0019_thumb_02.png" alt="">
										</p>
										<p class="gal_txt">제3회 책 읽기 대회</p>
									</a>
								</li>
								<li>
									<a href="">
										<p class="img">
											<img src="/images/template/T0019/main/0019_thumb_03.png" alt="">
										</p>
										<p class="gal_txt">학교폭력 예방 수업</p>
									</a>
								</li>
								<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more btnTy3"><em class="hid">포토갤러리 더보기</em><i class="xi-ellipsis-h"></i></a>
					</div>
					<!-- //갤러리 -->
				</div>
				<div class="MC_box7">
					<!-- 캘린더 -->
					<div class="pop_schedule0019">
						<div class="sche_wrap">
							<p class="month">
								<a href="" class="prev"><span class="hid">이전달</span><i class="xi-long-arrow-left" aria-hidden="true"></i></a>
								<span>2022<em>03</em></span>
								<a href="" class="next"><span class="hid">다음달</span><i class="xi-long-arrow-right" aria-hidden="true"></i></a>

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
											<td><span class="sun">27</span></td>
											<td><span>28</span></td>
											<td><a href="" class="event">29</span></td>
											<td><span>30</a></td>
											<td><span>31</a></td>
											<td><span>&nbsp;</span></td>
											<td><span>&nbsp;</span></td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>
						<a href="" class="btn_more btnTy4"><span class="hid">일정 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
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