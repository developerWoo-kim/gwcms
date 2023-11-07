<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="loginInfo" value="${ssId}_SSmberInfo_${ctx}"/>
<c:set var="appleInfo" value="${ssId}_SSmberInfo_apple"/>

			<header id="header">
				<!-- web -->
				<div id="web">
					<div class="top container">
						<h1>
							<a href="/<c:out value="${ctx}"/>/main.do">
							<!--Logo START-->
								<img src="/images/template/01001/common/logo.png" alt="KLIC 케이엘정보통신">
							<!--Logo END-->
							</a>
						</h1>
						<ul class="top_menu">
							<%-- 로그인 공통 폼 --%>
							<c:import url="/WEB-INF/views/dpcms/layout/common/loginForm.jsp"/>
						</ul>
						<div class="box_search_0">
							<form name="siteSearchForm" id="searchForm" method="POST" target="_blank">
								<input type="text" placeholder="검색어를 입력해주세요" id="total_search" name="qt" title="검색어를 입력해주세요"><button type="button" onClick="javascript:goSearchForm();"><span class="hid">검색</span></button>
							</form>
						</div>
					</div>

					<!-- NAV : fullDown / oneDown / oneFull -->
					<div id="nav" class="oneDown">
						<div id="blind"></div>
						<div id="gnb">
							<!--  depWidth : 1차 depth width 자동계산-->
							<!--START-->
							<div class="depth01 depWidth">
								<ul>
									<li><a href="#" target="_blank" title="새창"><span>참여마당</span></a>
										<div class="depth02"><!-- 2차메뉴는 div.depth02 안으로-->
											<ul>
												<li><a href="#"><span>함께하는 교육문화</span></a></li>
												<li><a href="#"><span>자유게시판</span></a></li>
												<li><a href="#"><span>신고센터</span></a>
													<div class="depth03">
														<ul>
															<li><a href="#"><span>부패신고센터</span></a></li>
															<li><a href="#"><span>공익신고센터</span></a></li>
															<li><a href="#"><span>부당지시등록코너</span></a></li>
															<li><a href="#"><span>예산낭비신고</span></a></li>
															<li><a href="#"><span>학교폭력(성폭력)신고</span></a></li>
															<li><a href="#"><span>학교정보공시오류신고</span></a></li>
															<li><a href="#"><span>학원및개인과외불법운영신고</span></a></li>
															<li><a href="#"><span>돌봄 지원센터</span></a></li>
															<li><a href="#"><span>학교급식신문고</span></a></li>
															<li><a href="#"><span>선행출제신고</span></a></li>
															<li><a href="#"><span>청탁금지법 위반 신고</span></a></li>
															<li><a href="#" target="_blank" title="새창"><span>복지&middot;보조금 부정신고센터</span></a></li>
															<li><a href="#" target="_blank" title="새창"><span>사립학교교원채용비리 신고센터</span></a></li>
															<li><a href="#"><span>유치원 비리 신고센터</span></a></li>
															<li><a href="#"><span>갑질 피해 신고센터</span></a></li>
															<li><a href="#"><span>학교운동부 신문고</span></a></li>
														</ul>
													</div>
												</li>
												<li><a href="#"><span>국민제안</span></a>
													<div class="depth03">
														<ul>
															<li><a href="#"><span>제안운영</span></a></li>
															<li><a href="#"><span>제안신청</span></a></li>
															<li><a href="#" target="_blank" title="새창"><span>우수제안 사례</span></a></li>
														</ul>
													</div>
												</li>
												<li><a href="#" target="_blank" title="새창"><span>공무원제안</span></a></li>
												<li><a href="#"><span>열린감사</span></a></li>
												<li><a href="#"><span>사랑나눔기부</span></a></li>
												<li><a href="#"><span>봉사활동</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href="#"><span>알림마당</span></a>
										<div class="depth02">
											<ul>
												<li><a href="#"><span>공지사항</span></a></li>
												<li><a href="#"><span>보도해설</span></a></li>
												<li><a href="#"><span>등교수업 운영계획</span></a>
													<div class="depth03">
														<ul>
															<li><a href="#"><span>코로나19 감염 확산에 따른 학사운영 안내</span></a></li>
															<li><a href="#"><span>등교수업 대비 방역 준비 현황</span></a></li>
															<li><a href="#"><span>학생 건강상태 자가진단 안내</span></a></li>
															<li><a href="#"><span>직속기관 프로그램 안내</span></a></li>
														</ul>
													</div>
												</li>
											</ul>
										</div>
									</li>
									<li><a href="#"><span>교육마당</span></a>
										<div class="depth02">
											<ul>
												<li><a href="#"><span>전&middot;재&middot;편입학</span></a>
													<div class="depth03">
														<ul>
															<li><a href="#"><span>고등학교 전&middot;재&middot;편입학시행지침</span></a></li>
															<li><a href="#"><span>특례입학&middot;귀국학생편입학</span></a></li>
															<li><a href="#"><span>중&middot;고등학교 전입학 안내</span></a></li>
															<li><a href="#"><span>중&middot;고등학교 결원현황</span></a></li>
															<li><a href="#"><span>자주하는 질문 새 창</span></a></li>
															<li><a href="#"><span>유치원 입학안내</span></a></li>
														</ul>
													</div>
												</li>
												<li><a href="#"><span>교육과정안내</span></a></li>
												<li><a href="#"><span>인문교육</span></a></li>
												<li><a href="#"><span>고교학점제</span></a></li>
												<li><a href="#"><span>유초중고</span></a></li>
												<li><a href="#"><span>기초학력지원센터</span></a></li>
												<li><a href="#"><span>통학구역안내</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href="#"><span>행정마당</span></a>
										<div class="depth02"></div>
									</li>
									<li><a href="#"><span>전자민원창구</span></a>
										<div class="depth02">
											<ul>
												<li><a href="#"><span>민원사무처리안내</span></a>
													<div class="depth03">
														<ul>
															<li><a href="#"><span>민원사무처리안내</span></a></li>
															<li><a href="#"><span>민원자료실</span></a></li>
															<li><a href="#" target="_blank" title="새창"><span>홈에듀민원서비스</span></a></li>
															<li><a href="#" target="_blank" title="새창"><span>민원24</span></a></li>
														</ul>
													</div>
												</li>
												<li><a href="#"><span>주요민원처리업무</span></a>
													<div class="depth03">
														<ul>
															<li><a href="#"><span>민원사무처리안내</span></a></li>
															<li><a href="#"><span>민원자료실</span></a></li>
															<li><a href="#" target="_blank" title="새창"><span>홈에듀민원서비스</span></a></li>
															<li><a href="#" target="_blank" title="새창"><span>민원24</span></a></li>
														</ul>
													</div>
												</li>
												<li><a href="#"><span>해운대교육신문고</span></a></li>
												<li><a href="#"><span>교육비리고발센터</span></a></li>
												<li><a href="#"><span>공직자클린신고</span></a></li>
												<li><a href="#"><span>학생선수고충신고</span></a></li>
												<li><a href="#"><span>불편계약신고센터</span></a></li>
												<li><a href="#"><span>예산낭비신고센터</span></a></li>
												<li><a href="#"><span>정보공시신고센터</span></a></li>
												<li><a href="#"><span>교육환경보호구역</span></a></li>
												<li><a href="#"><span>행정정보공동이용</span></a></li>
												<li><a href="#" target="_blank" title="새창"><span>정부민원안내콜센터</span></a></li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
							<!--END-->
						</div>
					</div>
					<!-- //NAV : fullDown / oneDown / oneFull -->

				</div>
				<!-- tablet, moblie -->
				<div id="tablet">
					<div id="tabletHeader">
						<div id="tabletLogo">
							<a href="/<c:out value="${ctx}"/>/main.do">
							<!--Logo START-->
								<img src="/images/template/01001/common/logo.png" alt="KLIC 케이엘정보통신">
							<!--Logo END-->
							</a>
						</div>
					</div>
					<div id="tabletGnb">
						<div id="menuOpen"><a href="#"><img src="/00_common/images/common/btn_menu_t.png" alt="메뉴열기"></a></div>
					</div>
					<!-- 태블릿 검색 -->
					<div id="tabletSearch">
						<div id="searchOpen"><a href="#"><img src="/00_common/images/common/btn_search_t.png" alt="검색열기"></a></div>
					</div>
					<div id="mSearch">
						<form name="searchFrm" id="searchFrm" method="POST">
							<div class="con">
								<p>
									<input type="text" id="mTotal_search" name="searchText" class="inputText" title="통합 검색어">
									<button type="button" class="btnSearch" onClick="javascript:goMSearchForm();">검색</button>
								</p>
								<button type="button" class="btnSearchClose">통합검색 닫기</button>
							</div>
						</form>
					</div>
					<!-- 태블릿 검색 -->
					<div id="mNavi">
						<div id="mtitle"><a href="#">메뉴닫기</a></div>
						<nav id="mgnb">
							<div class="snb">
								<ul>
									<%-- 모바일 로그인 공통 폼 --%>
									<c:import url="/WEB-INF/views/dpcms/layout/common/mLoginForm.jsp"/>
								</ul>
							</div>
							<!--M_START-->
							<ul>
								<li><a href="#" class="dep">메뉴1</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴01</a>
											<ul>
												<li><a href="#">하위메뉴02</a></li>
												<li><a href="#">하위메뉴02</a></li>
											</ul>
										</li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
								<li><a href="#" class="dep">메뉴2</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴</a></li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
								<li><a href="#" class="dep">메뉴3</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴</a></li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
								<li><a href="#" class="dep">메뉴4</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴</a></li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
								<li><a href="#" class="dep">메뉴5</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴</a></li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
								<li><a href="#" class="dep">메뉴6</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴</a></li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
								<li><a href="#" class="dep">메뉴7</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴</a></li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
								<li><a href="#" class="dep">메뉴8</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴</a></li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
								<li><a href="#" class="dep">메뉴9</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴</a></li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
								<li><a href="#" class="dep">메뉴10</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴</a></li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
								<li><a href="#" class="dep">메뉴11</a>
									<ul>
										<li><a href="#" class="dep2">하위메뉴</a></li>
										<li><a href="#" class="dep2">하위메뉴</a></li>
									</ul>
								</li>
							</ul>
							<!--M_END-->
						</nav>
					</div>
				</div>
				<!-- //tablet -->
			</header>