<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0080" />
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
				<div class="MVisual0080 visual">
					<div class="slider" id="visualSlide">
						<p class="item"><img src="/images/template/${templateType}/main/M_visual.png" alt="푸른 꿈과 사랑을 가꾸는 행복한 학교 우리학교에 오신 것을 환영합니다."></p>
						<p class="item"><img src="/images/template/${templateType}/main/M_visual.png" alt="푸른 꿈과 사랑을 가꾸는 행복한 학교 우리학교에 오신 것을 환영합니다."></p>
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
					<!-- 게시판1 -->
					<div class="notice0080 notice008001">
						<h2 class="hid">공지사항</h2>
						<div class="titTab">
							<ul>
								<li><a href="#notice1" class="current"><span>공지사항</span></a></li>
								<li><a href="#notice2" class=""><span>자유게시판 </span></a></li>
								<li><a href="#notice3" class=""><span>자료실</span></a></li>
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
											<span class="date">2022.03<em>11</em></span>
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
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
							<div class="list_box" id="notice2">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>2222학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과
											학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
											<span class="date">2022.03<em>23</em></span>
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
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="자유게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
							<div class="list_box" id="notice3">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>11111학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과
											학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
											<span class="date">2022.03<em>23</em></span>
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
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="자유게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<!-- //게시판1 -->
				</div>

				<div class="MC_box3">
					<!-- 게시판2 -->
					<div class="notice0080 notice008002">
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
											<span class="date">2022.03<em>23</em></span>
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
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
							<div class="list_box" id="notice5">
								<a href="" class="topList">
									<!-- 데이터가 없을 시, dl 'no_data' class 추가-->
									<dl class="no_data">
										<dt>데이터가 없습니다</dt>
										<dd><div class="date"><p> - </p></div></dd>
									</dl>
								</a>
								<a href="" class="btn_more" title="가정통신문 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
							<div class="list_box" id="notice6">
								<a href="" class="topList">
									<dl class="new"><!-- 새글 dl 'new' class 추가-->
										<dt>11111학부모위원 당선자 확정 공문</dt>
										<dd>
											<p>운영위원회규정 제11조에 의거 제7기 운영위원회 학부모위원 무투표당선 결과
											학부모위원을 확정하여 당선통지서를 교부하고 당선자 공고를 하고자 합니다.</p>
											<span class="date">2022.03<em>23</em></span>
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
										<p>유아학비 지원 계획 수정사항 알림  유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>학부모위원 당선자 확정 공고문</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>자율보호 가정확인서, 가능 내 건강관리 기록지</p>
										<span>2020.03.30</span>
									</a></li>
									<li><a href="">
										<p>유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항 유아학비 지원 계획 수정사항</p>
										<span>2020.03.30</span>
									</a></li>
									<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
								<a href="" class="btn_more" title="자료실 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<!-- //게시판2 -->
				</div>
			</div>
		</div>

		<div class="MC_wrap3">
			<div class="container">
				<div class="MC_box4">
					<!-- 바로가기1 -->
					<div class="M_link0080">
						<ul>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0080_ico01_link01.png" alt=""></p>
								<span>방과후학교방과후학교방과후학교방과후학교방과후학교</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0080_ico01_link02.png" alt=""></p>
								<span>사이버도서관</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0080_ico01_link03.png" alt=""></p>
								<span>학습자료실</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0080_ico01_link04.png" alt=""></p>
								<span>학교알리미</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0080_ico01_link05.png" alt=""></p>
								<span>학교폭력신고</span>
							</a></li>
							<li><a href="">
								<p class="img"><img src="/images/template/${templateType}/main/0080_ico01_link06.png" alt=""></p>
								<span>교육목표</span>
							</a></li>
						</ul>
					</div>
					<!-- //바로가기1 -->
				</div>
			</div>
		</div>

		<div class="MC_wrap4">
			<div class="container">
				<div class="MC_box5">
					<!-- 갤러리 -->
					<div class="gallery0080">
						<h2>포토갤러리</h2>
						<div class="list_box">
							<ul>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0080_thumb_01.png" alt=""></p>
									<span>유치원 전체소독 유치원 전체소독 유치원 전체소독 유치원 전체소독 유치원 전체소독</span>
								</a></li>
								<li><a href="">
									<p class="img"><img src="/images/template/${templateType}/main/0080_thumb_02.png" alt=""></p>
									<span>유치원 전체소독 유치원 전체소독 유치원 전체소독 유치원 전체소독 유치원 전체소독</span>
								</a></li>
								<!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;"><p>데이터가 없습니다.</p></li>
							</ul>
						</div>
						<a href="" class="btn_more"><i class="xi-plus" aria-hidden="true"></i></a>
					</div>
					<!-- //갤러리 -->
				</div>

				<div class="MC_box6">
					<!-- 팝업존 -->
					<div class="pop0080 popupZone">
						<h2>팝업존</h2>
						<div class="nss_pg arwShow">
							<p class="page"><strong>1</strong> / <span>3</span></p>
							<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left-min" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
							<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right-min" aria-hidden="true"></i></a>
						</div>
						<div class="pop_img" id="popupSlide">
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
							<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다."></a></p>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>

				<div class="MC_box7">
					<!-- 캘린더 -->
					<div class="pop_schedule0080">
						<h2><span>행사일정</span></h2>
						<div class="sche_wrap">
							<p class="month">
								<span>2022.02</span>
							</p>
							<div class="sche_list">
								<a href="" class="prev"><i class="xi-arrow-left" aria-hidden="true"></i><em class="hid">이전달</em></a>
								<ul>
									<li><span class="today">1</span></li><!-- [p] 오늘날짜 : today -->
									<li><span>3</span></li>
									<li><span>4</span></li>
									<li><span>5</span></li>
									<li><span>6</span></li>
									<li><span>7</span></li>
									<li><span>8</span></li>
									<li><span class="event"><a href="">9</a></span></li><!-- [p] 행사 : event -->
									<li><span>10</span></li>
									<li><span>11</span></li>
									<li><span class="event"><a href="">12</a></span></li><!-- [p] 행사 : event -->
									<li><span>14</span></li>
									<li><span>15</span></li>
									<li><span>16</span></li>
									<li><span>17</span></li>
									<li><span>13</span></li>
									<li><span>18</span></li>
									<li><span>19</span></li>
									<li><span>20</span></li>
									<li><span>21</span></li>
									<li><span>22</span></li>
									<li><span>23</span></li>
									<li><span>24</span></li>
									<li><span>25</span></li>
									<li><span>26</span></li>
									<li><span>27</span></li>
									<li><span>28</span></li>
									<li><span>29</span></li>
									<li><span>30</span></li>
									<li><span>31</span></li>
								</ul>
								<a href="" class="next"><i class="xi-arrow-right" aria-hidden="true"></i><em class="hid">다음달</em></a>
							</div>
						</div>
						<div class="sche_zone">
							<!-- <a href="" class="prev" title="이전 행사일정"><i class="xi-angle-left" aria-hidden="true"></i></a> -->
							<ul class="lst">
								<li>
									<dl>
										<dt>2021.03.09 (화)</dt>
										<dd>
											<ul>
												<li><a href="">3학년 온라인 개학식3학년 온라인 개학식3학년 온라인 개학식</a></li>
											</ul>
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>2021.03.10 (수)</dt>
										<dd>
											<ul>
												<li><a href="">교통안전교육</a></li>
												<li><a href="">교육의날 주간 수업</a></li>
												<li><a href="">교육의날 주간 수업</a></li>
												<li><a href="">교육의날 주간 수업</a></li>
												<li><a href="">교육의날 주간 수업</a></li>
											</ul>
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>2021.03.09 (화)</dt>
										<dd>
											<ul>
												<li><a href="">3학년 온라인 개학식3학년 온라인 개학식3학년 온라인 개학식</a></li>
											</ul>
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>2021.03.10 (수)</dt>
										<dd>
											<ul>
												<li><a href="">교통안전교육</a></li>
												<li><a href="">교육의날 주간 수업</a></li>
											</ul>
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>2021.03.10 (수)</dt>
										<dd>
											<ul>
												<li><a href="">교통안전교육</a></li>
												<li><a href="">교육의날 주간 수업</a></li>
											</ul>
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>2021.03.10 (수)</dt>
										<dd>
											<ul>
												<li><a href="">교통안전교육</a></li>
												<li><a href="">교육의날 주간 수업</a></li>
											</ul>
										</dd>
									</dl>
								</li>
							</ul>
							<!-- <a href="" class="next" title="다음 행사일정"><i class="xi-angle-right" aria-hidden="true"></i></a> -->
						</div>
						<div class="no_data" style="display: none;">데이터가 없습니다.</div>
						<a href="" class="btn_more" title="행사일정 더보기">일정 더보기<i class="xi-plus" aria-hidden="true"></i></a>
					</div>
					<!-- //캘린더 -->
				</div>

				<div class="MC_box8">
					<!-- 식단 -->
					<div class="meal_menu0080">
						<h2>오늘의 식단</h2>
						<div class="inner">
							<ul tabindex="0">
								<li>
									<dl>
										<dt class="kcal"><em>점심</em> <span>984</span> Kcal</dt>
										<dd class="meal_list">기장밥, 바지락조개탕, 포기김치, 소시지볶음, 시금치 나물, 사과주스</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="kcal"><em>저녁</em> <span>684</span> Kcal</dt>
										<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
									</dl>
								</li>
								<!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
						<a href="" class="btn_more" title="식단 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
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