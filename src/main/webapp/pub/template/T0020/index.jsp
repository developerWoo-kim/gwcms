<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0020" />
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
			<div class="MC_box1">
				<!-- 메인비주얼 -->
				<div class="MVisual0020 visual">
					<div class="slider" id="visualSlide">
						<div class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="밝은 미래와 꿈이 자라나는 우리들."></div>
						<div class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="밝은 미래와 꿈이 자라나는 우리들."></div>
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

		<div class="MC_wrap2 container">
			<div class="MC_box2">
				<!-- 바로가기1 -->
				<div class="M_link0020">
					<ul>
						<li>
						    <a href="">
                                <div class="dots">
                                    <span class="dot dot1"></span>
                                    <span class="dot dot2"></span>
                                    <span class="dot dot3"></span>
                                </div>
                                <div class="img_box">
                                    <span class="img"><img src="/images/template/${templateType}/main/0020_icn01_link01.png" alt=""></span>
                                </div>
                                <p>교육목표</p>
						    </a>
				        </li>
						<li>
						    <a href="">
                                <div class="dots">
                                    <span class="dot dot1"></span>
                                    <span class="dot dot2"></span>
                                    <span class="dot dot3"></span>
                                </div>
                                <div class="img_box">
                                    <span class="img"><img src="/images/template/${templateType}/main/0020_icn01_link02.png" alt=""></span>
                                </div>
                                <p>학습자료</p>
						    </a>
				        </li>
						<li>
						    <a href="">
                                <div class="dots">
                                    <span class="dot dot1"></span>
                                    <span class="dot dot2"></span>
                                    <span class="dot dot3"></span>
                                </div>
                                <div class="img_box">
                                    <span class="img"><img src="/images/template/${templateType}/main/0020_icn01_link03.png" alt=""></span>
                                </div>
                                <p>운영위원회</p>
						    </a>
				        </li>
						<li>
						    <a href="">
                                <div class="dots">
                                    <span class="dot dot1"></span>
                                    <span class="dot dot2"></span>
                                    <span class="dot dot3"></span>
                                </div>
                                <div class="img_box">
                                    <span class="img"><img src="/images/template/${templateType}/main/0020_icn01_link04.png" alt=""></span>
                                </div>
                                <p>유치원알리미</p>
						    </a>
				        </li>
						<li>
						    <a href="">
                                <div class="dots">
                                    <span class="dot dot1"></span>
                                    <span class="dot dot2"></span>
                                    <span class="dot dot3"></span>
                                </div>
                                <div class="img_box">
                                    <span class="img"><img src="/images/template/${templateType}/main/0020_icn01_link05.png" alt=""></span>
                                </div>
                                <p>방과후학교</p>
						    </a>
				        </li>
						<li>
						    <a href="">
                                <div class="dots">
                                    <span class="dot dot1"></span>
                                    <span class="dot dot2"></span>
                                    <span class="dot dot3"></span>
                                </div>
                                <div class="img_box">
                                    <span class="img"><img src="/images/template/${templateType}/main/0020_icn01_link06.png" alt=""></span>
                                </div>
                                <p>정보공개</p>
						    </a>
				        </li>
					</ul>
				</div>
				<!-- //바로가기1 -->
			</div>
        </div>
        
        <div class="MC_wrap3">
			<div class="MC_box3">
				<!-- 식단 -->
				<div class="meal_menu0020">
				    <h2 class="heading">오늘의 식단</h2>
					<div class="inner">
						<ul tabindex="0">
							<li>
								<dl>
									<dt class="kcal"><span>점심 <em>984 Kcal</em></span></dt>
									<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="kcal"><span>저녁 <em>684 Kcal</em></span></dt>
									<dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기</dd>
								</dl>
							</li>
							<!-- 식단 데이터가 없는경우 아래의 내용만 출력해주세요! -->
							<li class="no_data" style="display: none;">데이터가 없습니다.</li>
						</ul>
					</div>
					<a href="" class="btn_more ty"><span class="hid">오늘의 식단더보기</span><i class="xi-plus" aria-hidden="true"></i></a> 
				</div>
				<!-- //식단 -->
			</div>
			<div class="MC_box4">
				<!-- 게시판 -->
				<div class="notice0020">
					<h2 class="hid">공지사항</h2>
					<div class="titTab">
						<ul>
							<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항</span></a></li>
							<li><a href="#notice2"><span>가정통신문</span></a></li>
							<li><a href="#notice3"><span>자료실</span></a></li>
						</ul>
					</div>
					<div class="tabWrap">
						<div class="list_box on" id="notice1">
						    <a href="" class="topList">
						        <img src="/images/template/${templateType}/main/0020_notice_ico.png" alt="">
								<dl class="new"><!-- 새글 dl 'new' class 추가 -->
									<dt>등교 전 준비사항 안내</dt>
									<dd>새학기 첫 등교 전 꼭 챙겨야할 준비사항이 있습니다. 새학기 첫 등교 전 꼭 챙겨야할 준비사항이 있습니다.</dd>
								</dl>
								<dl class="no_data" style="display: none;"><!-- 데이터가 없을 시, dl 'no_data' class 추가 -->
									<dt>데이터가 없습니다.</dt>
									<dd>-</dd>
								</dl>
							</a>
							<ul>
								<li>
								    <a href="" class="new"><!-- 새글 a 'new' class 추가 -->
                                        학부모정책 모니터단 모집학부모정책 모니터단 모집
								    </a>
								</li>
								<li>
								    <a href="">
                                        학부모정책 모니터단 모집학부모정책 모니터단 모집
								    </a>
								</li>
								<li>
								    <a href="">
                                        학부모정책 모니터단 모집학부모정책 모니터단 모집
								    </a>
								</li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
							<a href="" class="btn_more ty"><span class="hid">공지사항 더보기</span><i class="xi-plus" aria-hidden="true"></i></a> 
						</div>
						<div class="list_box" id="notice2">
						    <a href="" class="topList">
						        <img src="/images/template/${templateType}/main/0020_notice_ico.png" alt="">
								<dl>
									<dt>등교 전 준비사항 안내2</dt>
									<dd>새학기 첫 등교 전 꼭 챙겨야할 준비사항이 있습니다. 새학기 첫 등교 전 꼭 챙겨야할 준비사항이 있습니다.</dd>
								</dl>
								<dl class="no_data" style="display: none;"><!-- 데이터가 없을 시, dl 'no_data' class 추가 -->
									<dt>데이터가 없습니다.</dt>
									<dd>-</dd>
								</dl>
							</a>
							<ul>
								<li>
								    <a href="">
                                        가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문
								    </a>
								</li>
								<li>
								    <a href="">
                                        가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문
								    </a>
								</li>
								<li>
								    <a href="">
                                        가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문 가정통신문
								    </a>
								</li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
							<a href="" class="btn_more ty"><span class="hid">공지사항 더보기</span><i class="xi-plus" aria-hidden="true"></i></a> 
						</div>
						<div class="list_box" id="notice3">
						    <a href="" class="topList">
						        <img src="/images/template/${templateType}/main/0020_notice_ico.png" alt="">
								<dl>
									<dt>등교 전 준비사항 안내3</dt>
									<dd>새학기 첫 등교 전 꼭 챙겨야할 준비사항이 있습니다. 새학기 첫 등교 전 꼭 챙겨야할 준비사항이 있습니다.</dd>
								</dl>
								<dl class="no_data" style="display: none;"><!-- 데이터가 없을 시, dl 'no_data' class 추가 -->
									<dt>데이터가 없습니다.</dt>
									<dd>-</dd>
								</dl>
							</a>
							<ul>
								<li>
								    <a href="">
                                        자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실
								    </a>
								</li>
								<li>
								    <a href="">
                                        자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실
								    </a>
								</li>
								<li>
								    <a href="">
                                        자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실 자료실
								    </a>
								</li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
							<a href="" class="btn_more ty"><span class="hid">공지사항 더보기</span><i class="xi-plus" aria-hidden="true"></i></a> 
						</div>
					</div>
				</div>
				<!-- //게시판 -->
			</div>
			<div class="MC_box5">
				<!-- 팝업존 -->
				<div class="pop0020 popupZone">
					<h2 class="heading">팝업존</h2>
					<div class="control arwShow">
						<p class="page"><strong></strong><span></span></p>
						<div class="btn_box">
                            <a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
                            <a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
                            <a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
                            <a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
						</div>
					</div>
					<div class="pop_img" id="popupSlide">
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0020_popup_chr.jpg" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0020_popup_chr.jpg" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
						<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0020_popup_chr.jpg" alt="우리 유치원에 오신것을 환영합니다!"></a></p>
					</div>
				</div>
				<!-- //팝업존 -->
            </div>
        </div>

		<div class="MC_wrap4">
			<div class="MC_box6">
				<!-- 갤러리 -->
				<div class="gallery0020">
				    <div class="tit_wrap">
				        <h2 class="heading">우리들 이야기</h2>
				        <a href="" class="btn_more ty"><span class="hid">우리들 이야기 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
				    </div>
					<div class="list_box">
						<ul>
							<li>
							    <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0020_story_img01.jpg" alt=""></p>
                                    <p class="txt">에펠탑을 만들어요</p>
							    </a>
							 </li>
							<li>
							    <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0020_story_img02.jpg" alt=""></p>
                                    <p class="txt">즐거운 수업시간</p>
							    </a>
							 </li>
							<li>
							    <a href="">
                                    <p class="img"><img src="/images/template/${templateType}/main/0020_story_img03.jpg" alt=""></p>
                                    <p class="txt">책과 친구가 됐어요</p>
							    </a>
							 </li>
							<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
							<li class="no_data" style="display:none;">
								<p>데이터가 없습니다.</p>
							</li>
						</ul>
					</div>
				</div>
				<!-- //갤러리 -->
			</div>
		</div>

        <div class="MC_wrap5">
			<div class="MC_box7">
				<!-- 캘린더 -->
				<div class="pop_schedule0020">
				    <div class="tit">
					    <h2 class="heading">행사일정</h2>
					    <a href="" class="btn_more"><span class="hid">행사일정 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
					</div>
					<p class="month">
						<a href="" class="prev"><span class="hid">이전달</span></a>
						<span>2022 <em>03</em></span>
						<a href="" class="next"><span class="hid">다음달</span></a>
					</p>
					<div class="sche_wrap">
						<div class="lst">
							<ul>
								<li><a href=""><span class="dt">03.08</span><span class="dsc">직업체험활동</span></a></li>
								<li><a href=""><span class="dt">03.14</span><span class="dsc">특별활동의 날</span></a></li>
								<li><a href=""><span class="dt">03.14</span><span class="dsc">특별활동의 날</span></a></li>
								<li><a href=""><span class="dt">03.14</span><span class="dsc">특별활동의 날</span></a></li>
								<li><a href=""><span class="dt">03.14</span><span class="dsc">특별활동의 날</span></a></li>
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- //캘린더 -->
			</div>
		</div>


		<!-- 배너존 -->
		<div class="banner_zone">
			<div class="container">
			    <div class="tit_box">
                    <h2>배너모음</h2>
                    <p class="btn arwShow">
                        <a href="#bannerPrev" class="prev" title="배너 이전"><i class="xi-angle-left" aria-hidden="true"></i></a>
                        <a href="#bannerStop" class="stop" title="배너 정지"><i class="xi-pause" aria-hidden="true"></i></a>
                        <a href="#bannerStop" class="play" title="배너 재생"><i class="xi-play" aria-hidden="true"></i></a>
                        <a href="#bannerNext" class="next" title="배너 다음"><i class="xi-angle-right" aria-hidden="true"></i></a>
                        <a href="#bannerList" class="list dialogAllBannerList" title="배너 리스트"><i class="xi-bars" aria-hidden="true"></i></a>
                    </p>
				</div>
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