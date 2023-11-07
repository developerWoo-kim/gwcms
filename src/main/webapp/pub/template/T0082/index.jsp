<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="templateType" value="T0082" />
<c:set var="layoutType" value="main" />
<c:set var="schoolName" value="세종고등학교" />

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

            <div class="MC_wrap1">
                <div class="MC_box1">
                    <!-- 메인비주얼 -->
                    <div class="MVisual0082 visual">
                        <div class="slider" id="visualSlide">
                            <p class="item">
                                <img src="/images/template/${templateType}/main/m_visual.png" alt="기본에 충실하며 더불어 행복한 학교 | 홈페이지에 오신것을 환영합니다.">
                            </p>
                            <p class="item">
                                <img src="/images/template/${templateType}/main/m_visual.png" alt="기본에 충실하며 더불어 행복한 학교 | 홈페이지에 오신것을 환영합니다.">
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
                    <!-- 팝업존 -->
                    <div class="pop0082 popupZone">
                        <h2 class="heading">팝업존</h2>
                        <div class="nss_pg arwShow">
                            <p class="page"><strong></strong><span></span></p>
                            <a href="" class="prev"><img src="/images/template/T0082/main/0082_popup_prev.png" alt=""><em class="hid">팝업존 다음</em></a>
                            <a href="" class="stop"><i class="xi-pause" aria-hidden="true"></i><em class="hid">팝업존 정지</em></a>
                            <a href="" class="play"><i class="xi-play" aria-hidden="true"></i><em class="hid">팝업존 재생</em></a>
                            <a href="" class="next"><img src="/images/template/T0082/main/0082_popup_next.png" alt=""><em class="hid">팝업존 이전</em></a>
                        </div>
                        <div class="pop_img" id="popupSlide">
                            <p class="item">
                                <a href="" target="_blank" title="새창">
                                    <img src="/images/template/${templateType}/main/0082_popup.jpg" alt="학교홈페이지 새단장" />
                                </a>
                            </p>
                            <p class="item">
                                <a href="" target="_blank" title="새창">
                                    <img src="/images/template/${templateType}/main/0082_popup.jpg" alt="학교홈페이지 새단장" />
                                </a>
                            </p>
                        </div>
                    </div>
                    <!-- //팝업존 -->
                </div>
            </div>

            <div class="MC_wrap2">
                <div class="container">
                    <div class="MC_box4">
                        <!-- 게시판1 -->
                        <div class="notice0082 notice008201">
                            <div class="titTab">
                                <ul>
                                    <li><a href="#notice1" class="current"><span>공지사항공지사항</span></a></li>
                                    <li><a href="#notice2" class=""><span>자유게시판 </span></a></li>
                                    <li><a href="#notice3" class=""><span>자유게시판 </span></a></li>
                                </ul>
                            </div>
                            <div class="tabWrap">
                                <div class="list_box on" id="notice1">
                                    <a href="" class="topList">
                                        <dl class="new">
                                            <!-- 새글 dl 'new' class 추가-->
                                            <dt>자율학교 우선전보 교사 임용 계획 공고</dt>
                                            <dd>
                                                <p class="txt">자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고</p>
                                                <span class="date">2022.03.23</span>
                                                <p class="img"><img src="/images/template/T0082/main/0082_notice_img01.png" alt=""></p>
                                            </dd>
                                        </dl>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="" class="new"> <!-- 새글 a 'new' class 추가-->
                                                <p>유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                                <span>2020.03.30</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <p>학부모위원 당선자 확정 공고문</p>
                                                <span>2020.03.30</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <a href="" class="btn_more btnTy" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                                </div>
                                <div class="list_box" id="notice2">
                                    <div class="topList">
                                        <!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
                                        <dl class="no_data">
                                            <dt>데이터가 없습니다</dt>
                                            <dd>
                                                <p class="txt">-</p>
                                                <p class="img"><img src="/images/template/T0082/main/0082_notice_img01.png" alt=""></p>
                                            </dd>
                                        </dl>
                                    </div>
                                    <a href="" class="btn_more btnTy" title="자유게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                                </div>
                                <div class="list_box" id="notice3">
                                    <a href="" class="topList">
                                        <dl>
                                            <dt>자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판자유게시판</dt>
                                            <dd>
                                                <p class="txt">자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고</p>
                                                <span class="date">2022.03.23</span>
                                                <p class="img"><img src="/images/template/T0082/main/0082_notice_img01.png" alt=""></p>
                                            </dd>
                                        </dl>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="">
                                                <p>유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                                <span>2020.03.30</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <p>학부모위원 당선자 확정 공고문</p>
                                                <span>2020.03.30</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <a href="" class="btn_more btnTy" title="자유게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- //게시판1 -->
                    </div>
                    <div class="MC_box5">
                        <!-- 게시판2 -->
                        <div class="notice0082 notice008202">
                            <div class="titTab">
                                <ul>
                                    <li><a href="#notice4" class="current"><span>공지사항공지사항</span></a></li>
                                    <li><a href="#notice5" class=""><span>자유게시판 </span></a></li>
                                    <li><a href="#notice6" class=""><span>자유게시판 </span></a></li>
                                </ul>
                            </div>
                            <div class="tabWrap">
                                <div class="list_box on" id="notice4">
                                    <a href="" class="topList">
                                        <dl class="new"> <!-- 새글 dl 'new' class 추가-->
                                            <dt>자율학교 우선전보 교사 임용 계획 공고</dt>
                                            <dd>
                                                <p class="txt">자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고</p>
                                                <span class="date">2022.03.23</span>
                                                <p class="img"><img src="/images/template/T0082/main/0082_notice_img02.png" alt=""></p>
                                            </dd>
                                        </dl>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="" class="new">
                                                <!-- 새글 a 'new' class 추가-->
                                                <p>유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                                <span>2020.03.30</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <p>학부모위원 당선자 확정 공고문</p>
                                                <span>2020.03.30</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <a href="" class="btn_more btnTy" title="공지사항 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                                </div>
                                <div class="list_box" id="notice5">
                                    <div class="topList">
                                        <!-- 데이터가 없을 시, dl 'no_data' class 추가, .topList는 div로 변경-->
                                        <dl class="no_data">
                                            <dt>데이터가 없습니다</dt>
                                            <dd>
                                                <p class="txt">-</p>
                                                <p class="img"><img src="/images/template/T0082/main/0082_notice_img02.png" alt=""></p>
                                            </dd>
                                        </dl>
                                    </div>
                                    <a href="" class="btn_more btnTy" title="자유게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                                </div>
                                <div class="list_box" id="notice6">
                                    <a href="" class="topList">
                                        <dl>
                                            <dt>자유게시판자유게시판자유게시판자유게시판</dt>
                                            <dd>
                                                <p class="txt">자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고 자율학교 우선전보 교사 임용 계획 공고</p>
                                                <span class="date">2022.03.23</span>
                                                <p class="img"><img src="/images/template/T0082/main/0082_notice_img02.png" alt=""></p>
                                            </dd>
                                        </dl>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="">
                                                <p>유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림 유아학비 지원 계획 수정사항 알림</p>
                                                <span>2020.03.30</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <p>학부모위원 당선자 확정 공고문</p>
                                                <span>2020.03.30</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <a href="" class="btn_more btnTy" title="자유게시판 더보기"><i class="xi-plus" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- //게시판2 -->
                    </div>
                    <div class="MC_box3">
                        <!-- 바로가기 -->
                        <div class="M_link0082">
                            <h2 class="hid">바로가기</h2>
                            <ul>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0082_ico01_link01.png" alt=""></p>
                                        <span>방과후학교</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0082_ico01_link02.png" alt=""></p>
                                        <span>학습자료실</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0082_ico01_link03.png" alt=""></p>
                                        <span>각종양식</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0082_ico01_link04.png" alt=""></p>
                                        <span>학교알리미</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0082_ico01_link05.png" alt=""></p>
                                        <span>정보공개</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="img"><img src="/images/template/${templateType}/main/0082_ico01_link06.png" alt=""></p>
                                        <span>운영위원회</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- //바로가기 -->
                    </div>
                </div>
            </div>

            <div class="MC_wrap3">
                <div class="container">
                    <div class="MC_cont">
                        <div class="MC_box8">
                            <!-- 식단 -->
                            <div class="meal_menu0082">
                                <div class="tit_wrap">
                                    <h2 class="heading">오늘의 식단</h2>
                                    <a href="" class="btn_more btnTy2"><em class="hid">식단 더보기</em></a>
                                </div>
                                <div class="inner">
                                    <ul tabindex="0">
                                        <li>
                                            <dl>
                                                <dt class="kcal">점심 <span>670kcal</span></dt>
                                                <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                            </dl>
                                        </li>
                                        <li>
                                            <dl>
                                                <dt class="kcal">저녁 <span>670kcal</span></dt>
                                                <dd class="meal_list">홍국쌀밥, 쇠고기미역국, 새송이호박볶음, 달걀야채말이, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기, 배추김치쇠고기 </dd>
                                            </dl>
                                        </li>
                                        <!-- 식단 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                        <li class="no_data" style="display:none;">데이터가 없습니다.</li>
                                    </ul>
                                    <img src="/images/template/T0082/main/0082_meal.png" alt="">
                                </div>

                            </div>
                            <!-- //식단 -->
                        </div>
                        <div class="MC_box7">
                            <!-- 갤러리 -->
                            <div class="gallery0082">
                                <div class="tit_wrap">
                                    <h2 class="heading">포토갤러리</h2>
                                    <a href="" class="btn_more btnTy2"><em class="hid">포토갤러리 더보기</em></a>
                                </div>
                                <div class="list_box">
                                    <ul>
                                        <li><a href="">
                                                <div class="img"><img src="/images/template/T0082/main/0082_thumb_01.png" alt=""></div>
                                                <p>1학년 방과후학교</p>
                                            </a></li>
                                        <li><a href="">
                                                <div class="img"><img src="/images/template/T0082/main/0082_thumb_02.png" alt=""></div>
                                                <p>체육동아리 연습시간</p>
                                            </a></li>
                                        <!-- 데이타가 없는경우 아래의 내용만 출력해주세요! -->
                                        <li class="no_data" style="display: none;">
                                            <p>데이터가 없습니다.</p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- //갤러리 -->
                        </div>
                    </div>
                    <div class="MC_box6">
                        <!-- 캘린더 -->
                        <div class="pop_schedule0082">
                            <h2 class="hid">행사일정</h2>
                            <p class="month">
                                <a href="" class="prev"><span class="hid">이전달</span></a>
                                <span class="date heading">2022.<em>03</em></span>
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
                                            <td><span class="sat">&nbsp;</span></td>
                                        </tr>
                                        <tr>
                                            <td><span class="sun first">20</span></td>
                                            <td><span>28</span></td>
                                            <td><span>29</span></td>
                                            <td><span>30</span></td>
                                            <td><span>31</span></td>
                                            <td><span>&nbsp;</span></td>
                                            <td><span class="sat">&nbsp;</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="lst">
                                <ul>
                                    <li>
                                        <a href=""><span class="date">03.03</span>어린이 교통사고 안전교육 </a>
                                    </li>
                                    <li>
                                        <a href=""><span class="date">03.15</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
                                    </li>
                                    <li>
                                        <a href=""><span class="date">03.18</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
                                    </li>
                                    <li>
                                        <a href=""><span class="date">03.20</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
                                    </li>
                                    <li>
                                        <a href=""><span class="date">03.20</span>어린이 교통사고 안전교육어린이 교통사고 안전교육어린이 교통사고 안전교육</a>
                                    </li>
                                    <li class="no_data" style="display: none;">데이터가 없습니다.</li>
                                </ul>
                                <a href="" class="btn_more btnTy"><i class="xi-plus" aria-hidden="true"></i><em class="hid">일정 더보기</em></a>
                            </div>
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
