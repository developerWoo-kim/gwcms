<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0096" />
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
	               <div class="MVisual0096 visual">
	                   <div class="slider" id="visualSlide">
	                       <p class="item">
	                           <img src="/images/template/${templateType}/main/m_visual.png" alt="꿈과 사랑이 넘치는 즐거운 학교. 우리학교 홈페이지 방문을 환영합니다.">
	                       </p>
	                       <p class="item">
	                           <img src="/images/template/${templateType}/main/m_visual.png" alt="꿈과 사랑이 넘치는 즐거운 학교. 우리학교 홈페이지 방문을 환영합니다.">
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
                    <div class="M_link0096">
                        <ul>
                            <li>
                                <a href="">
                                    <p class="ico"><img src="/images/template/${templateType}/main/0096_ico01_link01.png" alt=""></p>
                                    <span><em>교육방향교육방향교육방향교육방향교육방향</em></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="ico"><img src="/images/template/${templateType}/main/0096_ico01_link02.png" alt=""></p>
                                    <span><em>각종양식</em></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="ico"><img src="/images/template/${templateType}/main/0096_ico01_link03.png" alt=""></p>
                                    <span><em>방과후 학교</em></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="ico"><img src="/images/template/${templateType}/main/0096_ico01_link04.png" alt=""></p>
                                    <span><em>학교알리미</em></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="ico"><img src="/images/template/${templateType}/main/0096_ico01_link05.png" alt=""></p>
                                    <span><em>에듀넷</em></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="ico"><img src="/images/template/${templateType}/main/0096_ico01_link06.png" alt=""></p>
                                    <span><em>홍보동영상</em></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="ico"><img src="/images/template/${templateType}/main/0096_ico01_link07.png" alt=""></p>
                                    <span><em>사이버스쿨</em></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <p class="ico"><img src="/images/template/${templateType}/main/0096_ico01_link08.png" alt=""></p>
                                    <span><em>학습센터</em></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- //바로가기1 -->
                </div>
                
            </div>
            
        </div>
            
        <div class="MC_wrap2">
            <div class="container">
                <div class="MC_box3">
                    <!-- 게시판 -->
                    <div class="notice0096">
                        <div class="titTab">
                            <ul>
                                <li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</span></a></li>
                                <li><a href="#notice2"><span>가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문가정통신문 </span></a></li>
                                <li><a href="#notice3"><span>게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판</span></a></li>
                            </ul>
                        </div>
                        <div class="tabWrap">
                            <div class="list_box on" id="notice1">
                                <ul>
                                    <!-- 새글 li 'new' class 추가-->
                                    <li class="new">
                                        <a href="">
                                            <p>11창의인성레터 1호 안내</p>
                                            <span>2022.03</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <p>제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 ㅍ</p>
                                            <span>2022.03</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <p>상반기 재능 장학생 선발 공고지</p>
                                            <span>2022.03</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <p>학생회장단 선거 계획</p>
                                           <span>2022.03</span>
                                        </a>
                                    </li>
                                </ul>
                                <a href="" class="btn_more1"><span class="hid">공지사항 더보기</span><em>MORE</em><i class="xi-plus" aria-hidden="true"></i></a>
                            </div>
                            <div class="list_box" id="notice2">
                                <ul>
                                    <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                    <li class="no_data">
                                        <p>데이터가 없습니다</p>
                                    </li>
                                </ul>
                                <a href="" class="btn_more1"><span class="hid">가정통신문 더보기</span><em>MORE</em><i class="xi-plus" aria-hidden="true"></i></a>
                            </div>
                            <div class="list_box" id="notice3">
                                <ul>
                                     <!-- 새글 li 'new' class 추가-->
                                    <li class="new">
                                        <a href="">
                                            <p>33창의인성레터 1호 안내</p>
                                            <span>2022.03</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <p>제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 제2회 대한민국 어린이 놀이 한마당 참여 ㅍ</p>
                                            <span>2022.03</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <p>상반기 재능 장학생 선발 공고지</p>
                                            <span>2022.03</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <p>학생회장단 선거 계획</p>
                                           <span>2022.03</span>
                                        </a>
                                    </li>
                                </ul>
                                <a href="" class="btn_more1"><span class="hid">게시판 더보기</span><em>MORE</em><i class="xi-plus" aria-hidden="true"></i></a>
                                
                            </div>
                        </div>
                    </div>
                    <!-- //게시판 -->
                </div>
                
                <div class="MC_box4">
                    <!-- 팝업존 -->
                    <div class="pop0096 popupZone">
                        <h2 class="heading"><span>팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존팝업존</span></h2>
                        <div class="pop_img" id="popupSlide">
                            <p class="item"><a href="" title="새창"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다." /></a></p>
                            <p class="item"><a href="" title="새창"><img src="/images/template/${templateType}/main/img_popup01.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다." /></a></p>
                        </div>

                        <div class="control">
                            <p class="page"><strong></strong><span></span></p>
                            <a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-arrow-left" aria-hidden="true"></i></a>
                            <a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
                            <a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
                            <a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-arrow-right" aria-hidden="true"></i></a>
                        </div>
                    </div>
                    <!-- //팝업존 -->
                </div>

                <div class="MC_box5">
                    <!-- 식단 -->
                    <div class="meal_menu0096">
                        <h2 class="heading"><span>오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단</span></h2>
                        <div class="inner" tabindex="0">
                            <ul>
                                <li>
                                    <dl>
                                        <dt class="kcal">
                                        	<span>점심 <em><strong>984</strong>Kcal</em></span>
                                        	<p class="img"><img src="/images/template/T0096/main/0096_img_meal.png" alt=""></p>
                                        </dt>
                                        <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기 </dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt class="kcal">
                                        	<span>저녁 <em><strong>984</strong>Kcal</em></span>
                                        	<p class="img"><img src="/images/template/T0096/main/0096_img_meal.png" alt=""></p>
                                        </dt>
                                        <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                    </dl>
                                </li>
                                <!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display:none;">데이터가 없습니다.</li>
                            </ul>
                        </div>
                        <a href="" class="btn_more1"><span class="hid">오늘의 식 더보기</span><em>MORE</em><i class="xi-plus" aria-hidden="true"></i></a>
                    </div>
                    <!-- //식단 -->
                </div>
            </div>
        </div>
        
        <div class="MC_wrap3">
            <div class="container">
                <div class="MC_box6">
                    <!-- 갤러리 -->
                    <div class="gallery0096">
                        <h2 class="heading"><span>포토갤러리</span></h2>
                        <div class="list_box">
                            <ul>
                                <li>
                                    <a href="">
                                        <p class="img">
                                            <img src="/images/template/${templateType}/main/0096_thumb_01.png" alt="">
                                        </p>
                                        <span class="txt">제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img">
                                            <img src="/images/template/${templateType}/main/0096_thumb_02.png" alt="">
                                        </p>
                                        <span class="txt">자연과 함께하는 현장학습</span>
                                    </a>
                                </li>
                                <li class="no_data" style="display: none;">
                                    <p>데이터가 없습니다.</p>
                                </li>
                            </ul>
                        </div>
                        <a href="" class="btn_more1"><span class="hid">갤러리 더보기</span><em>MORE</em><i class="xi-plus" aria-hidden="true"></i></a>
                    </div>
                    <!-- //갤러리 -->
                </div>

				<div class="MC_box7">
                    <!-- 캘린더 -->
                    <div class="pop_schedule0096">
                        <h2 class="heading"><span>행사일정</span></h2>
                        <div class="sche_wrap">
                        	<p class="month">
					<a href="" class="prev"><span class="hid">이전달</span><i class="xi-arrow-left" aria-hidden="true"></i></a>
					<span>2022 .<em>03</em></span>
					<a href="" class="next"><span class="hid">다음달</span><i class="xi-arrow-right" aria-hidden="true"></i></a>
				</p>
                         <div class="lst">
					<ul>
						<li><a href=""><span>03.02</span> <em>시업식, 입학식</em></a></li>
						<li><a href=""><span>03.12</span> <em>학생상담주간</em></a></li>
						<li><a href=""><span>03.17</span> <em>학교설명회 및 학부모총회</em></a></li>
						<li><a href=""><span>03.17</span> <em>생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료</em></a></li>
						<li><a href=""><span>03.17</span> <em>시업식, 입학식</em></a></li>
						<li><a href=""><span>03.17</span> <em>학생상담주간</em></a></li>
						<li><a href=""><span>03.17</span> <em>학교설명회 및 학부모총회</em></a></li>
						<li><a href=""><span>03.17</span> <em>생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료</em></a></li>
						<li class="no_data" style="display: none;">데이터가 없습니다.</li>
					</ul>
				</div>
                        </div>
                        <a href="" class="btn_more1"><span class="hid">행사일정 더보기</span><em>MORE</em><i class="xi-plus" aria-hidden="true"></i></a>
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