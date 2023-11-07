<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0055" />
<c:set var="layoutType" value="main" />
<c:set var="schoolName" value="세종중학교" />

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
                    <div class="MVisual0055 visual">
                        <div class="slider" id="visualSlide">
                            <p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="꿈과 사랑이 넘치는 즐거운 학교. 우리학교 홈페이지 방문을 환영합니다."></p>
                            <p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="꿈과 사랑이 넘치는 즐거운 학교. 우리학교 홈페이지 방문을 환영합니다."></p>
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
					<!-- 게시판1 -->
					<div class="notice0055">
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항</span></a></li>
								<li><a href="#notice2"><span>가정통신문</span></a></li>
								<li><a href="#notice3"><span>자유게시판</span></a></li>
							</ul>
						</div>
						<div class="tabWrap">
							<div class="list_box on" id="notice1">
								<ul>
									<li><a href="" class="new"><!-- 새글 a 'new' class 추가-->
										<strong>슬기로운 학교생활(교육과정)</strong>
										<p>교육과정 편제, 과목, 공동교육과정, 성적처리방식 등 학생(또는 학부모)을 위한 학교생활</p>
										<span>2022.01.13</span>
									</a></li>
									<li><a href="">
										<strong>교육청이 준비한 '감동과 알찬정보가 가득한 영상'</strong>
										<p>교육청이 준비한 '감동과 알찬정보가 가득한 영상'안내드립니다. 아래 자세한 내용을 확인해주세요</p>
										<span>2022.01.13</span>
									</a></li>
									<li><a href="">
										<strong>학교회계 예산 편성을 위한 보호자 의견 수렵 안내</strong>
										<p>학교회계 예산 편성을 위한 보호자 의견 수렵을 안내해드립니다</p>
										<span>2022.01.13</span>
									</a></li>
									<li><a href="">
										<strong>2022년도 3차도서 구입목록</strong>
										<p>2022년도 3차도서 구입 목록을 다음과 같이 안내드립니다. 자세한 내용은 더보기</p>
										<span>2022.01.13</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><em class="hid">공지사항 더보기</em>MORE</a> 
							</div>

							<div class="list_box" id="notice2">
								<ul>
									<li><a href="">
										<strong>22222슬기로운 학교생활(교육과정)</strong>
										<p>222222222교육과정 편제, 과목, 공동교육과정, 성적처리방식 등 학생(또는 학부모)을 위한 학교생활</p>
										<span>2022.01.13</span>
									</a></li>
									<li><a href="">
										<strong>교육청이 준비한 '감동과 알찬정보가 가득한 영상'</strong>
										<p>교육청이 준비한 '감동과 알찬정보가 가득한 영상'안내드립니다. 아래 자세한 내용을 확인해주세요</p>
										<span>2022.01.13</span>
									</a></li>
									<li><a href="">
										<strong>학교회계 예산 편성을 위한 보호자 의견 수렵 안내</strong>
										<p>학교회계 예산 편성을 위한 보호자 의견 수렵을 안내해드립니다</p>
										<span>2022.01.13</span>
									</a></li>
									<li><a href="">
										<strong>2022년도 3차도서 구입목록</strong>
										<p>2022년도 3차도서 구입 목록을 다음과 같이 안내드립니다. 자세한 내용은 더보기</p>
										<span>2022.01.13</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><em class="hid">가정통신문 더보기</em>MORE</a> 
							</div>
							<div class="list_box" id="notice3">
								<ul>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more"><em class="hid">자유게시판 더보기</em>MORE</a> 
							</div>
						</div>
					</div>
					<!-- //게시판1 -->
				</div>
            </div>	
		</div>

		<div class="MC_wrap2">
			<div class="container">
				<div class="MC_box3">
					<!-- 바로가기1 -->
					<div class="M_link0055">
						<ul>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0055_link01_icn01.png" alt=""></p>
								<span>방과후학교 방과후학교 방과후학교 방과후학교</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0055_link01_icn02.png" alt=""></p>
								<span>사이버도서관</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0055_link01_icn03.png" alt=""></p>
								<span>학습자료실</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0055_link01_icn04.png" alt=""></p>
								<span>교육목표</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0055_link01_icn05.png" alt=""></p>
								<span>학교알리미</span>
							</a></li>
							<li><a href="">
								<p><img src="/images/template/${templateType}/main/0055_link01_icn06.png" alt=""></p>
								<span>정보공개</span>
							</a></li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>

				<div class="MC_box4">
					<!-- 캘린더 -->
					<div class="pop_schedule0055">
						<h2>행사일정</h2>
						<div class="sche_wrap">
							<p class="month">
								<a href="" class="prev"><span class="hid">이전달</span></a>
								<span>2022<em>02</em></span>
								<a href="" class="next"><span class="hid">다음달</span></a>
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
									<li><a href=""><span>03.02</span>직업체험활동 직업체험활동</a></li>
									<li><a href=""><span>03.11</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>03.12</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>03.20</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>03.22</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>03.31</span>특별활동의 날 특별활동의 날</a></li>
								    <!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
						</div>
						<a href="" class="btn_more2"><em class="hid">일정 더보기</em><i class="xi-plus" aria-hidden="true"></i></a>
					</div>
					<!-- //캘린더 -->
				</div>

				<div class="MC_box6">
					<!-- 갤러리 -->
					<div class="gallery0055">
						<h2>포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0055_thumb01.jpg" alt=""></p>
									<strong>자율적인 수업시간 자율적인 수업시간</strong>
									<span>자유롭게 발표하고 의견을 내는 수업시간 자유롭게 발표하고 의견을 내는 수업시간</span>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0055_thumb02.jpg" alt=""></p>
									<strong>조별과제 수업</strong>
									<span>조별과제를 주어 구성원끼리 의견을 나누어 문제를 해결</span>
								</a></li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display:none;">
									데이터가 없습니다
								</li>
							</ul>							
						</div>
						<a href="" class="btn_more"><em class="hid">학교앨범</em>MORE</a> 
					</div>
					<!-- //갤러리 -->
				</div>
		
				<div class="MC_box7">
					<!-- 팝업존 -->
					<div class="pop0055 popupZone">
						<h2>팝업존</h2>
						<div class="nss_pg arwShow">
							<p class="page"><strong>1</strong><span>3</span></p>
							<a href="" class="prev"><i class="xi-arrow-left" aria-hidden="true"></i><span class="hid">팝업존 이전</span></a>
							<a href="" class="stop"><i class="xi-pause" aria-hidden="true"></i><span class="hid">팝업존 정지</span></a>
							<a href="" class="play"><i class="xi-play" aria-hidden="true"></i><span class="hid">팝업존 재생</span></a>
							<a href="" class="next"><i class="xi-arrow-right" aria-hidden="true"></i><span class="hid">팝업존 다음</span></a>
						</div>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0055_popup.jpg" alt="홈페이지를 새롭게 리뉴얼하였습니다."></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0055_popup.jpg" alt="홈페이지를 새롭게 리뉴얼하였습니다."></a></p>
						</div>

					</div>
					<!-- //팝업존 -->
				</div>

				<div class="MC_box5">						
					<!-- 식단 -->
					<div class="meal_menu0055">
						<h2>오늘의 식단</h2>
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><strong>점심</strong><em>984 Kcal</em></dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal"><strong>저녁</strong><em>684 Kcal</em></dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more"><em class="hid">오늘의 식단</em>MORE</a>
						<img src="/images/template/${templateType}/main/0055_meal_chr.png" alt="">
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