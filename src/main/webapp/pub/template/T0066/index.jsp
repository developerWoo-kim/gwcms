<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0066" />
<c:set var="layoutType" value="main" />
<c:set var="schoolName" value="세종중학교" />

<!DOCTYPE html>
<html lang="ko">
<c:import url="/pub/template/metaTag.jsp">
    <c:param name="templateType" value="${templateType}" />
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
    <div id="wrap" class="openPop">
        <!--[D] 팝업이 있을때 #wrap에 클래스 openPop 추가-->

        <c:if test="${layoutType == 'main'}">
            <c:import url="../popup.jsp"></c:import>
        </c:if>

        <c:import url="header.jsp">
            <c:param name="templateType" value="${templateType}" />
            <c:param name="layoutType" value="${layoutType}" />
        </c:import>

        <!-- 컨테이너 -->
        <div id="container">

            <div class="MC_box1">
                <!-- 메인비주얼 -->
                <div class="MVisual0066 visual">
                    <div class="slider" id="visualSlide">
                        <p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="큰 뜻을 세워 미래를 이끌어갈 창의인재 육성"></p>
                        <p class="item"><img src="/images/template/${templateType}/main/m_visual.png" alt="큰 뜻을 세워 미래를 이끌어갈 창의인재 육성"></p>
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

            <div class="MC_wrap1">
                <div class="MC_box2">
                    <!-- 게시판 -->
                    <div class="notice0066">
                        <h2 class="hid">공지사항</h2>
                        <div class="titTab">
                            <ul>
                                <li>
                                    <a href="#notice1" class="current">
                                        <span>공지사항공지사항공지사항</span>
                                        <div class="dotBox">
                                            <span class="dot dot1"></span>
                                            <span class="dot dot2"></span>
                                            <span class="dot dot3"></span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#notice2">
                                        <span>가정통신문</span>
                                        <div class="dotBox">
                                            <span class="dot dot1"></span>
                                            <span class="dot dot2"></span>
                                            <span class="dot dot3"></span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#notice3">
                                        <span>게시판게시판</span>
                                        <div class="dotBox">
                                            <span class="dot dot1"></span>
                                            <span class="dot dot2"></span>
                                            <span class="dot dot3"></span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="tabWrap">
                            <div class="list_box on" id="notice1">
                                <ul>
                                    <li>
                                        <a href="" class="new">
                                            <!-- 새글 a 'new' class 추가-->
                                            <strong>&lt;세계 물의 날&gt; 금강 영상 공모전 안내&lt;세계 물의 날&gt; 금강 영상 공모전 안내&lt;세계 물의 날&gt; 금강 영상 공모전 안내</strong>
                                            <p>세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여</p>
                                            <span>03.30</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <strong>봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서</strong>
                                            <p>봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서 제출관련해 안내봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서 제출관련해 안내</p>
                                            <span>03.30</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <strong>영어캠프(D.E.C.) 참가 학생 모집 안내</strong>
                                            <p>영어캠프의 참가학생을 아래와 같이 모집하니 참가 희망 학생은 첨부파일.영어캠프의 참가학생을 아래와 같이 모집하니 참가 희망 학생은 첨부파일.</p>
                                            <span>03.30</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <strong>대한민국창의력 챔피언 대회 대전예선대회 개최 안내</strong>
                                            <p>대한민국창의력챔피언대회 대전예선 대회를 다음과 같이 개최하오니</p>
                                            <span>03.30</span>
                                        </a>
                                    </li>
                                    <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                    <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                                </ul>
                                <a href="" class="btn_more"><em class="hid">공지사항 더보기</em>more<i class="xi-plus" aria-hidden="true"></i></a>
                            </div>
                            <div class="list_box" id="notice2">
                                <ul>
                                    <li>
                                        <a href="">
                                            <strong>&lt;세계 물의 날&gt; 금강 영상 공모전 안내&lt;세계 물의 날&gt; 금강 영상 공모전 안내&lt;세계 물의 날&gt; 금강 영상 공모전 안내</strong>
                                            <p>세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여세계 물의 날 금강 영상 공모전에 참가를 희망하시는 분은 첨부파일을 참고하여</p>
                                            <span>03.30</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <strong>봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서</strong>
                                            <p>봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서 제출관련해 안내봉사활동 운영 계획 안내 및 학생 개인 봉사활동 계획서 제출관련해 안내</p>
                                            <span>03.30</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <strong>영어캠프(D.E.C.) 참가 학생 모집 안내</strong>
                                            <p>영어캠프의 참가학생을 아래와 같이 모집하니 참가 희망 학생은 첨부파일.영어캠프의 참가학생을 아래와 같이 모집하니 참가 희망 학생은 첨부파일.</p>
                                            <span>03.30</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <strong>대한민국창의력 챔피언 대회 대전예선대회 개최 안내</strong>
                                            <p>대한민국창의력챔피언대회 대전예선 대회를 다음과 같이 개최하오니</p>
                                            <span>03.30</span>
                                        </a>
                                    </li>
                                    <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                    <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                                </ul>
                                <a href="" class="btn_more"><em class="hid">가정통신문 더보기</em>more<i class="xi-plus" aria-hidden="true"></i></a>
                            </div>
                            <div class="list_box" id="notice3">
                                <ul>
                                    <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                    <li class="no_data">데이터가 없습니다.</li>
                                </ul>
                                <a href="" class="btn_more"><em class="hid">게시판 더보기</em>more<i class="xi-plus" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- //게시판 -->
                </div>

                <div class="MC_box3">
                    <!-- 캘린더 -->
                    <div class="pop_schedule0066">
                        <div class="tit_wrap">
                            <h2 class="heading">학교일정</h2>
                            <a href="" class="btn_more2"><i class="xi-plus" aria-hidden="true"></i><em class="hid">행사일정 더보기</em></a>
                        </div>
                        <div class="month">
                            <a href="" class="prev"><span class="hid">이전달</span><i class="xi-caret-right" aria-hidden="true"></i></a>
                            <p>2022<em>02</em></p>
                            <a href="" class="next"><span class="hid">다음달</span><i class="xi-caret-right" aria-hidden="true"></i></a>
                        </div>
                        <div class="sche_wrap">
                            <ul class="lst">
                                <li><a href="">03.01 <span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</span></a></li>
                                <li><a href="">03.08 <span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</span></a></li>
                                <li><a href="">03.11 <span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</span></a></li>
                                <li><a href="">03.28 <span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</span></a></li>
                                <li><a href="">03.28 <span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</span></a></li>
                                <li><a href="">03.28 <span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</span></a></li>
                                <li><a href="">03.28 <span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</span></a></li>
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                        </div>
                    </div>
                    <!-- //캘린더 -->
                </div>
            </div>
            
            <div class="MC_wrap2">
                <div class="MC_box7">
                    <!-- 포토갤러리 -->
                    <div class="gallery0066">
                        <h2 class="heading">학교앨범</h2>
                        <div class="list_box">
                            <ul>
                                <li><a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0066_thumb01.jpg" alt=""></p>
                                        <span>책과 친해지는 즐거운 독서시간 책과 친해지는 즐거운 독서시간</span>
                                    </a></li>
                                <li><a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0066_thumb02.jpg" alt=""></p>
                                        <span>교내 겨울방학 창의융합교육</span>
                                    </a></li>
                                <!-- 갤러리 데이터가 없는경우 아래의 내용만 출력해주세요! -->
                                <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                            </ul>
                        </div>
                        <a href="" class="btn_more"><em class="hid">포토갤러리</em>more<i class="xi-plus" aria-hidden="true"></i></a>
                    </div>
                    <!-- //포토갤러리 -->
                </div>

                <div class="MC_cont">
                    <div class="MC_box4">
                        <!-- 팝업존 -->
                        <div class="pop0066 popupZone">
                            <h2 class="heading">팝업존</h2>
                            <div class="nss_pg arwShow">
                                <p class="page"><strong>1</strong><span>3</span></p>
                                <div class="controlBox">
                                    <a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
                                    <a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
                                    <a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
                                    <a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div class="pop_img" id="popupSlide">
                                <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0066_popup.jpg" alt="2022년 학급평가 안내. 학급평가를 안내해드립니다."></a></p>
                                <p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/${templateType}/main/0066_popup.jpg" alt="2022년 학급평가 안내. 학급평가를 안내해드립니다."></a></p>
                            </div>
                        </div>
                        <!-- //팝업존 -->
                    </div>

                    <div class="MC_box5">
                        <!-- 식단 -->
                        <div class="meal_menu0066">
                            <h2 class="heading">오늘의 식단</h2>
                            <div class="inner">
                                <ul tabindex="0">
                                    <li>
                                        <dl>
                                            <dt class="kcal">점심 <span>984Kcal</span></dt>
                                            <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt class="kcal">저녁 <span>1,031Kcal</span></dt>
                                            <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                        </dl>
                                    </li>
                                    <!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                    <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                                </ul>
                                <div class="imgBox"><img src="/images/template/${templateType}/main/0066_meal.png" alt=""></div>
                            </div>
                            <a href="" class="btn_more"><em class="hid">오늘의 식단</em>more<i class="xi-plus" aria-hidden="true"></i></a>
                        </div>
                        <!-- //식단 -->
                    </div>

                    <div class="MC_box6">
                        <!-- 바로가기1 -->
                        <div class="M_link0066">
                            <ul>
                                <li>
                                    <a href="">
                                        <p><img src="/images/template/${templateType}/main/0066_link01_icn01.png" alt=""></p>
                                        <span>방과후학교방과후학교방과후학교방과후학교</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p><img src="/images/template/${templateType}/main/0066_link01_icn02.png" alt=""></p>
                                        <span>사이버도서관</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p><img src="/images/template/${templateType}/main/0066_link01_icn03.png" alt=""></p>
                                        <span>학습자료실</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p><img src="/images/template/${templateType}/main/0066_link01_icn04.png" alt=""></p>
                                        <span>학교알리미</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p><img src="/images/template/${templateType}/main/0066_link01_icn05.png" alt=""></p>
                                        <span>각종양식</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p><img src="/images/template/${templateType}/main/0066_link01_icn06.png" alt=""></p>
                                        <span>교육목표</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- //바로가기1 -->
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
