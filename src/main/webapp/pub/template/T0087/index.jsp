<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0087" />
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
                   <div class="MVisual0087 visual">
                       <div class="slider" id="visualSlide">
                           <p class="item">
                               <img src="/images/template/${templateType}/main/m_visual.png" alt="21세기 지식기반 사회에 필요한 인재양성 우리학교에 오신것을 환영합니다.">
                           </p>
                           <p class="item">
                               <img src="/images/template/${templateType}/main/m_visual.png" alt="21세기 지식기반 사회에 필요한 인재양성 우리학교에 오신것을 환영합니다.">
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
                <div class="M_link0087">
                    <ul>
                        <li>
                            <a href="">
                                <p class="ico"><img src="/images/template/${templateType}/main/0087_link01_1.png" alt=""></p>
                                <span>학습자료실학습자료실학습자료실학습자료실학습자료실학습자료실학습자료실학습자료실학습자료실</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <p class="ico"><img src="/images/template/${templateType}/main/0087_link01_2.png" alt=""></p>
                                <span>방과후학교</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <p class="ico"><img src="/images/template/${templateType}/main/0087_link01_3.png" alt=""></p>
                                <span>학교알리미</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <p class="ico"><img src="/images/template/${templateType}/main/0087_link01_4.png" alt=""></p>
                                <span>사이버도서관</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- //바로가기1 -->
            </div>
            
            <div class="MC_box3">
                <!-- 캘린더 -->
                <div class="pop_schedule0087">
                    <div class="tit_wrap">
                        <h2 class="heading"><span>행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정행사일정</span></h2>
                    </div>
                    
                    <p class="month">
                        <span><em>02</em>2022</span>
                        <a href="" class="prev"><span class="hid">이전달</span><i class="xi-angle-left" aria-hidden="true"></i></a>
                        <a href="" class="next"><span class="hid">다음달</span><i class="xi-angle-right" aria-hidden="true"></i></a>
                    </p>
                    
                    <div class="lst">
                        <ul>
                            <li><a href=""><span>08</strong></span> <em>시업식, 입학식</em></a></li>
                            <li><a href=""><span>11</strong></span> <em>학생상담주간</em></a></li>
                            <li><a href=""><span>16</strong></span> <em>학교설명회 및 학부모총회</em></a></li>
                            <li><a href=""><span>17</strong></span> <em>생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료</em></a></li>
                            <li><a href=""><span>18</strong></span> <em>시업식, 입학식</em></a></li>
                            <li><a href=""><span>19</strong></span> <em>학생상담주간</em></a></li>
                            <li><a href=""><span>20</strong></span> <em>학교설명회 및 학부모총회</em></a></li>
                            <li><a href=""><span>21</strong></span> <em>생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료생명존중, 인성교육 실천주간자료</em></a></li>
                            <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                        </ul>
                    </div>
                    <a href="" class="btn_more2"><span class="hid">일정 더보기</span><em>more</em><i class="xi-plus" aria-hidden="true"></i></a> 
                </div>
                <!-- //캘린더 -->
            </div>

              
           </div>
       </div>
       
       <div class="MC_wrap2">
           <div class="container">
            <div class="MC_box4">
                <!-- 게시판 -->
                <div class="notice0087">
                 <div class="titTab">
                     <ul>
                         <li><a href="#notice1" class="current"><span>공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</span></a></li>
                         <li><a href="#notice2" class=""><span>자유게시판 </span></a></li>
                         <li><a href="#notice3" class=""><span>게시판게시판</span></a></li>
                     </ul>
                 </div>
                 
                 <div class="tabWrap">
                     <div class="list_box on" id="notice1">
                         <a href="" class="topList">
                            <span class="ico"><img src="/images/template/${templateType}/main/0087_notice_ico.png" alt=""></span>
                             <dl class="new"><!-- 새글 dl 'new' class 추가-->
                                 <dt>개인형 이동장치(PM) 관련 도로교통법 변경 사항 안내개인형 이동장치(PM) 관련 도로교통법 변경 사항 안내개인형 이동장치(PM) 관련 도로교통법 변경 사항 안내</dt>
                                 <dd>
                                     <p>개인형 이동장치(PM) 관련 도로교통법 변경 사항을 안내합니다. 개인형 이동장치(PM) 관련 도로교통법 변경 사항을 안내합니다. 개인형 이동장치(PM) 관련 도로교통법 변경 사항을 안내합니다.</p>
                                     <div class="date"><p>22.02 <span>13</span></p></div>
                                 </dd>
                             </dl>
                         </a>
                         <ul>
                             <li>
                                 <!-- 새글 a 'new' class 추가-->
                                 <a href=""class="new"><p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
                                     <span>2022.01.13</span>
                                 </a>
                             </li>
                             <li>
                                 <a href=""><p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
                                     <span>2022.01.13</span>
                                 </a>
                             </li>
                             <li>
                                 <a href=""><p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
                                     <span>2022.01.13</span>
                                 </a>
                             </li>
                             <li>
                                 <a href=""><p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
                                     <span>2022.01.13</span>
                                 </a>
                             </li>
                             <li>
                                 <a href=""><p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
                                     <span>2022.01.13</span>
                                 </a>
                             </li>
                         </ul>
                         <a href="" class="btn_more1"><em class="hid">공지사항 더보기</em><i class="xi-plus" aria-hidden="true"></i></a> 
                     </div>
                     
                     <div class="list_box" id="notice2">
                         <div href="" class="topList">
                             <!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
                             <dl class="no_data">
                                 <dt>데이터가 없습니다</dt>
                                 <dd><div class="date"><p> - </p></div></dd>
                             </dl>
                         </div>
                         <a href="" class="btn_more1"><em class="hid">자유게시판 더보기</em><i class="xi-plus" aria-hidden="true"></i></a> 
                     </div>
                     
                     <div class="list_box" id="notice3">
                         <a href="" class="topList">
                             <span class="ico"><img src="/images/template/${templateType}/main/0087_notice_ico.png" alt=""></span>
                             <dl class="new"><!-- 새글 dl 'new' class 추가-->
                                 <dt>3개인형 이동장치(PM) 관련 도로교통법 변경 사항 안내개인형 이동장치(PM) 관련 도로교통법 변경 사항 안내개인형 이동장치(PM) 관련 도로교통법 변경 사항 안내</dt>
                                 <dd>
                                     <p>개인형 이동장치(PM) 관련 도로교통법 변경 사항을 안내합니다. 개인형 이동장치(PM) 관련 도로교통법 변경 사항을 안내합니다. 개인형 이동장치(PM) 관련 도로교통법 변경 사항을 안내합니다.</p>
                                     <div class="date"><p>22.02 <span>13</span></p></div>
                                 </dd>
                             </dl>
                         </a>
                         <ul>
                             <li>
                                 <a href=""><p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
                                     <span>2022.01.13</span>
                                 </a>
                             </li>
                             <li>
                                 <a href=""><p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
                                     <span>2022.01.13</span>
                                 </a>
                             </li>
                             <li>
                                 <a href=""><p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
                                     <span>2022.01.13</span>
                                 </a>
                             </li>
                             <li>
                                 <a href=""><p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
                                     <span>2022.01.13</span>
                                 </a>
                             </li>
                             <li>
                                 <a href=""><p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
                                     <span>2022.01.13</span>
                                 </a>
                             </li>
                         </ul>
                         <a href="" class="btn_more1"><em class="hid">게시판 더보기</em><i class="xi-plus" aria-hidden="true"></i></a> 
                     </div>
                 </div>
             </div>
                <!-- //게시판 -->
            </div>
    
           <div class="MC_box5">
                <!-- 식단 -->
                <div class="meal_menu0087">
                    <h2 class="heading"><span>오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단오늘의 식단</span></h2>
                    <div class="inner">
                        <p class="img"><img src="/images/template/${templateType}/main/0087_meal_img.png" alt=""></p>
                        <ul tabindex="0">
                           <li>
                               <dl>
                                   <dt class="kcal"><span><em>점심</em> 984 Kcal</span></dt>
                                   <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기 </dd>
                               </dl>
                           </li>
                           <li>
                               <dl>
                                   <dt class="kcal"><span><em>저녁</em> 984 Kcal</span></dt>
                                   <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                               </dl>
                           </li>
                           <!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                           <li class="no_data" style="display:none;">데이터가 없습니다.</li>
                       </ul>
                    </div>
                    <a href="" class="btn_more1"><span class="hid">오늘의 식단 더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
                </div>
                <!-- //식단 -->
            </div>
            
            <div class="MC_box6">
                <!-- 팝업존 -->
                <div class="pop0087 popupZone">
                    <h2 class="heading">팝업존</h2>
                    <div class="pop_img" id="popupSlide">
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리학교 홈페이지에 오신것을 환영합니다." /></a></p>
                        <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/img_popup01.png" alt="우리학교 홈페이지에 오신것을 환영합니다." /></a></p>
                    </div>

                    <div class="control">
                        <p class="page"><strong></strong><span></span></p>
                        <a href="" class="prev"><span class="hid">팝업존 다음</span><i class="xi-angle-left-min" aria-hidden="true"></i></a>
                        <a href="" class="stop"><span class="hid">팝업존 정지</span><img src="/images/template/${templateType}/main/0087_popup_pause.png" alt="" /></a>
                        <a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
                        <a href="" class="next"><span class="hid">팝업존 이전</span><i class="xi-angle-right-min" aria-hidden="true"></i></a>
                    </div>
                </div>
                <!-- //팝업존 -->
            </div>
           </div>
       </div>
       
       <div class="MC_wrap3">
           <div class="container">
               <div class="MC_box7">
                   <!-- 갤러리 -->
                   <div class="gallery0087">
                       <div class="tit_wrap">
                           <h2 class="heading"><span>포토갤러리</span></h2>
                           <p>사진으로 보는 우리들의 이야기 공간</p>
                       </div>
                       <div class="list_box">
                           <ul>
                               <li>
                                   <a href="">
                                       <p class="img">
                                           <img src="/images/template/${templateType}/main/0087_thumb_01.png" alt="">
                                       </p>
                                       <span class="txt">제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이</span>
                                   </a>
                               </li>
                               <li>
                                   <a href="">
                                       <p class="img">
                                           <img src="/images/template/${templateType}/main/0087_thumb_02.png" alt="">
                                       </p>
                                       <span class="txt">자연과 함께하는 현장학습</span>
                                   </a>
                               </li>
                               <li>
                                   <a href="">
                                       <p class="img">
                                           <img src="/images/template/${templateType}/main/0087_thumb_03.png" alt="">
                                       </p>
                                       <span class="txt">제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이</span>
                                   </a>
                               </li>
                               <li>
                                   <a href="">
                                       <p class="img">
                                           <img src="/images/template/${templateType}/main/0087_thumb_04.png" alt="">
                                       </p>
                                       <span class="txt">제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이 제2회 대한민국 어린이</span>
                                   </a>
                               </li>
                               <li class="no_data" style="display: none;">
                                   <p>데이터가 없습니다.</p>
                               </li>
                           </ul>
                       </div>
                       <a href="" class="btn_more2"><span class="hid">갤러리 더보기</span><em>more</em><i class="xi-plus" aria-hidden="true"></i></a> 
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