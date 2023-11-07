<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<!-- header-->
	<header id="header">
		<div class="header_wrap container">
			<h1>
				<a href="/<c:out value="${ctx}"/>/main.do">
					<!--Logo START-->
					<img src="/images/web/T0010/main/logo.png" alt="세종학교 SEJONG kindergarden">
					<!--Logo END-->
				</a>
			</h1>

			<div class="topUtil">
				<ul class="util">
					<c:import url="/WEB-INF/views/dpcms/layout/common/loginForm.jsp" />
				</ul>

				<div class="totalSearch">
					<form name="siteSearchForm" method="get">
						<input type="text" placeholder="검색어를 입력해주세요" id="topSearch_1" name="keyword" title="검색어를 입력해주세요">
						<button title="통합검색 버튼"><i class="xi-search" aria-hidden="true"></i></button>
					</form>
				</div>
			</div>

			<!-- moblie button-->
			<a href="" class="mBtn mNav" id="mNavOpen" title="모바일메뉴 열기"><i class="xi-bars" aria-hidden="true"></i></a>
			<a href="" class="mBtn mSearch" id="mSearchOpen" title="모바일검색 열기"><i class="xi-search" aria-hidden="true"></i></a>
			<!-- //moblie button-->
		</div>

		<!-- NAV : fullDown / oneDown / oneFull -->
		<div id="nav" class="oneDown">
			<div id="gnb">
				<!--START-->
				<div class="depth01">
					<ul>
						<li><a href=""><span>유치원소개</span></a>
							<div class="depth02"><!-- 2차메뉴는 div.depth02 안으로-->
								<ul>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href="" target="_blank" title="새창"><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</li>
						<li><a href=""><span>교육마당</span></a>
							<div class="depth02"><!-- 2차메뉴는 div.depth02 안으로-->
								<ul>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href="" target="_blank" title="새창"><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
								</ul>
							</div>
						</li>
						<li><a href=""><span>알림마당</span></a>
							<div class="depth02"><!-- 2차메뉴는 div.depth02 안으로-->
								<ul>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href="" target="_blank" title="새창"><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
								</ul>
							</div>
						</li>
						<li><a href=""><span>교사마당</span></a>
							<div class="depth02"><!-- 2차메뉴는 div.depth02 안으로-->
								<ul>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href="" target="_blank" title="새창"><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
								</ul>
							</div>
						</li>
						<li><a href="" target="_blank" title="새창"><span>학부모마당</span></a></li>
						<li><a href=""><span>포토갤러리</span></a>
							<div class="depth02"><!-- 2차메뉴는 div.depth02 안으로-->
								<ul>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href="" target="_blank" title="새창"><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
								</ul>
							</div>
						</li>
						<li><a href=""><span>정보공개자료실</span></a>
							<div class="depth02"><!-- 2차메뉴는 div.depth02 안으로-->
								<ul>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href="" target="_blank" title="새창"><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
								</ul>
							</div>
						</li>
						<li><a href=""><span>자유게시판</span></a>
							<div class="depth02"><!-- 2차메뉴는 div.depth02 안으로-->
								<ul>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href=""><span>2depth</span></a>
										<div class="depth03">
											<ul>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href=""><span>3depth</span></a></li>
												<li><a href="" target="_blank" title="새창"><span>3depth</span></a></li>
											</ul>
										</div>
									</li>
									<li><a href="" target="_blank" title="새창"><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
									<li><a href=""><span>2depth</span></a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<!--END-->
			</div>
		</div>
		<!-- //NAV : fullDown / oneDown / oneFull -->

		<!-- moblie Search-->
		<div id="mSearch">
			<form name="searchFrm" id="searchFrm" method="POST">
				<div class="inner"><input type="text" id="searchText" name="searchText" class="inputText" title="통합 검색어">
					<button type="button" class="btnSearch" id="searchTextBtn" title="모바일 통합검색 버튼">검색</button></div>
				<button type="button" class="btnClose"><i class="xi-close" aria-hidden="true"></i><em class="hid">모바일 통합검색 닫기</em></button>
			</form>
		</div>
		<!-- //moblie Search-->

		<!-- 팝업영역 열기/닫기 버튼 -->
		<c:if test="${param.layoutType eq 'main'}">
			<a href="javascript:;" class="popBtn">POPUP</a>
		</c:if>
		<!-- //팝업영역 열기/닫기 버튼 -->
	</header>
	<!-- //header -->

	<!-- moblie NAV -->
	<div id="fullMenuArea">
		<div class="inner">
		<div class="snb"></div>
		<nav id="fullMenu" class="gnb"></nav>
		<p><a href="" id="fullMenuClose" title="전체 메뉴 닫기"><i class="xi-close" aria-hidden="true"></i></a></p></div>
	</div>
	<!-- //moblie NAV-->

	<div id="mNav">
		<h4>전체메뉴</h4>
		<div class="snb"></div>
		<nav id="mgnb"></nav>
		<p><a href="" id="mNavClose" title="모바일 메뉴 닫기"><i class="xi-close" aria-hidden="true"></i></a></p>
	</div>

