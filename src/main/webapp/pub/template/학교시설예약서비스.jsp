<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<title>학교시설예약서비스</title>
<!-- CSS -->
<link rel=" shortcut icon" href="/00_common/images/favicon.ico">
<link rel="icon" href="/00_common/images/favicon.ico">
<link rel="stylesheet" href="/00_common/css/basic.css" media="all"> 
<link rel="stylesheet" href="/00_common/css/con_com.css" media="all"> 
<link rel="stylesheet" href="/00_common/css/reservation_layout.css" media="all"> 
<link rel="stylesheet" href="/00_common/css/reservation_main.css" media="all"> 
<link rel="stylesheet" href="/00_common/css/reservation_sub.css" media="all"> 
<script src="/00_common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/reservation.js"></script>
</head>
<body>
    <header id="header">
        <h1 id="logo" class="logo"><a href="#"><img src="/00_common/images/reservation/main/logo.png" alt="세종특별자치시교육청 학교시설예약서비스 로고"></a></h1>
        <div class="top_link">
            <a href="#">관리자로그인</a>
            <a href="#">사이트맵</a>
        </div>
        <div id="gnb" class="gnb">
            <ul class="depth1">
                <li class=""><a href="#">서비스 안내</a> 
                    <ul class="depth2">
                        <li><a href="#"><span>이용안내</span></a></li>
                        <li><a href="#"><span>시설사용료</span></a></li>
                    </ul>
                </li>
                <li><a href="#">예약 및 확인</a></li>
                <li><a href="#">정보마당</a></li>
            </ul>
        </div>
        <div class="h_bottom">
            <a class="f_lnk" href="">개인정보처리방침</a>
            <p class="address">[30151] 세종특별자치시<br/>한누리대로 2154</p>
            <p class="copy">Copyright(c).all.rights reserved</p>
        </div>
        <a class="mob_btn" href="#"><i class="xi-list-dot"></i><em class="hid">모바일 메뉴 열기</em></a>
    </header>
    <!-- moblie NAV -->
    <div id="mNav" class="">
		<h4>전체메뉴</h4>
		<div class="snb"><ul class="util">
					<li><a href="">관리자로그인</a></li>
					<li><a href="">사이트맵</a></li> 
				</ul></div>
		<nav id="mgnb"><div class="depth01">
					<ul>
						<li class="dep"><a href=""><span>서비스안내</span></a>
							<div class="depth02"><!-- 2차메뉴는 div.depth02 안으로-->
								<ul>
									<li><a href=""><span>이용안내</span></a></li>
									<li><a href=""><span>시설사용료</span></a></li> 
								</ul>
							</div>
						</li>
						<li class="dep"><a href=""><span>예약 및 확인</span></a></li> 
						<li class="dep"><a href=""><span>정보마당</span></a></li> 
					</ul>								
				</div></nav>
		<p><a href="" id="mNavClose" title="모바일 메뉴 닫기"><i class="xi-close" aria-hidden="true"></i></a></p>
	</div>
    <!-- //moblie NAV -->
    <!-- 컨테이너 -->
    <div id="container">
        <div class="top_Tit">
            <h3>학교목록</h3>
            <ul>
                <li><a href=""><i class="xi-plus-min"></i><em class="hid">확대</em></a></li>
                <li><a href=""><i class="xi-catched"></i><em class="hid">새로고침</em></a></li>
                <li><a href=""><i class="xi-minus-min"></i><em class="hid">축소</em></a></li>
            </ul>
        </div>
        <div class="main_wrap">
            <div class="tab_st1">
                <ul>
                    <li class="on"><a href="" title="선택된 페이지"><span>초등학교</span></a></li>
                    <li><a href=""><span>중학교</span></a></li>
                    <li><a href=""><span>고등학교</span></a></li> 
                    <li><a href=""><span>특수학교</span></a></li> 
                </ul>
            </div>
            <div class="cont_wrap">
                <div class="top_cont">
                    <p>학교 목록 또는 검색결과를 통해 원하시는 학교를 선택해주세요</p>
                    <div class="search_box">
                        <input type="text" id="searchText" name="searchText" class="inputText" title="학교 검색어" placeholder="학교명을 입력해주세요">
					    <button type="button" class="btnSearch" id="searchTextBtn" title="학교검색 버튼"><i class="xi-search"></i>검색</button>
                    </div> 
                </div>
                <ul class="schl_list">
                    <li>
                        <a href="#">
                            <div class="img">
                                <img src="/00_common/images/reservation/main/reser_mainImg01.png" alt="">
                            </div>
                            <div class="txt">
                                <h4>가득초등학교</h4>
                                <ul class="schl_dtl">
                                    <li><span>주소 :</span> 세종특별자치시 세종로 941</li>
                                    <li><span>연락처 :</span> 044-999-7600</li>
                                    <li><span>홈페이지 :</span> gadeuk.sjedues.kr</li>
                                    <li><span>예약가능시설 :</span> 교실, 기타시설, 체육관</li>
                                    <li><span>예약가능시간 :</span> 평일 17:30 ~ 21:00</li>
                                </ul>
                            </div> 
                            <button class="reser_btn" href="#">예약하기</button>
                        </a> 
                    </li>
                    <li>
                        <a href="#">
                            <div class="img">
                                <img src="/00_common/images/reservation/main/reser_mainImg02.png" alt="">
                            </div>
                            <div class="txt">
                                <h4>나래초등학교</h4>
                                <ul class="schl_dtl">
                                    <li><span>주소 :</span> 세종특별자치시 달빛1로 108</li>
                                    <li><span>연락처 :</span> 044-902-8304</li>
                                    <li><span>홈페이지 :</span> narae.sjedues.kr</li>
                                    <li><span>예약가능시설 :</span> 교실, 기타시설, 체육관</li>
                                    <li><span>예약가능시간 :</span> 강당: 토요일 13:00~21.00,<br/>공휴일 09:00~21:00</li>
                                </ul>
                            </div> 
                            <button class="reser_btn" href="#">예약하기</button>
                        </a> 
                    </li>
                    <li>
                        <a href="#">
                            <div class="img">
                                <img src="/00_common/images/reservation/main/reser_mainImg03.png" alt="">
                            </div>
                            <div class="txt">
                                <h4>금남초등학교</h4>
                                <ul class="schl_dtl">
                                    <li><span>주소 :</span> 세종특별자치시 금남면 금남구족로 62</li>
                                    <li><span>연락처 :</span> 044-866-9715</li>
                                    <li><span>홈페이지 :</span> kumnam.sjedues.kr</li>
                                    <li><span>예약가능시설 :</span> 기타시설, 체육관</li>
                                    <li><span>예약가능시간 :</span> 06:00~17:00</li>
                                </ul>
                            </div> 
                            <button class="reser_btn" href="#">예약하기</button>
                        </a> 
                    </li>
                    <li>
                        <a href="#">
                            <div class="img">
                                <img src="/00_common/images/reservation/main/reser_mainImg04.png" alt="">
                            </div>
                            <div class="txt">
                                <h4>늘봄초등학교</h4>
                                <ul class="schl_dtl">
                                    <li><span>주소 :</span> 세종특별자치시 다솜1로 183</li>
                                    <li><span>연락처 :</span> 044-903-3430</li>
                                    <li><span>홈페이지 :</span> neulbom.sjedues.kr</li>
                                    <li><span>예약가능시설 :</span> 교실, 기타시설, 체육관</li>
                                    <li><span>예약가능시간 :</span> 평일 18:00~22:00<br/>주말 09:00~18:00</li>
                                </ul>
                            </div> 
                            <button class="reser_btn" href="#">예약하기</button>
                        </a> 
                    </li>
                    <li>
                        <a href="#">
                            <div class="img">
                                <img src="/00_common/images/reservation/main/reser_mainImg05.png" alt="">
                            </div>
                            <div class="txt">
                                <h4>도담초등학교</h4>
                                <ul class="schl_dtl">
                                    <li><span>주소 :</span> 세종특별자치시 보람로 33</li>
                                    <li><span>연락처 :</span> 044-410-0105</li>
                                    <li><span>홈페이지 :</span> dodam.sjedues.kr</li>
                                    <li><span>예약가능시설 :</span> 교실, 체육관</li>
                                    <li><span>예약가능시간 :</span> 주말 09:00~18:00</li>
                                </ul>
                            </div> 
                            <button class="reser_btn" href="#">예약하기</button>
                        </a> 
                    </li>
                    <li>
                        <a href="#">
                            <div class="img">
                                <img src="/00_common/images/reservation/main/reser_mainImg06.png" alt="">
                            </div>
                            <div class="txt">
                                <h4>두루초등학교</h4>
                                <ul class="schl_dtl">
                                    <li><span>주소 :</span> 세종특별자치시 만남로 227</li>
                                    <li><span>연락처 :</span> 044-903-2709</li>
                                    <li><span>홈페이지 :</span> duru.sjedues.kr</li>
                                    <li><span>예약가능시설 :</span> 기타시설, 체육관</li>
                                    <li><span>예약가능시간 :</span> 평일 17:00~18:00<br/>주말 13:00~18:00</li>
                                </ul>
                            </div> 
                            <button class="reser_btn" href="#">예약하기</button>
                        </a> 
                    </li>
                    <li>
                        <a href="#">
                            <div class="img">
                                <img src="/00_common/images/reservation/main/reser_mainImg07.png" alt="">
                            </div>
                            <div class="txt">
                                <h4>미르초등학교</h4>
                                <ul class="schl_dtl">
                                    <li><span>주소 :</span> 세종특별자치시 나리로 26-16</li>
                                    <li><span>연락처 :</span> 044-960-2905</li>
                                    <li><span>홈페이지 :</span> mir.sjedues.kr</li>
                                    <li><span>예약가능시설 :</span> 교실, 기타시설, 체육관</li>
                                    <li><span>예약가능시간 :</span> 주말공휴일 09:00~17:00<br/>(상세시간규정참고)</li>
                                </ul>
                            </div> 
                            <button class="reser_btn" href="#">예약하기</button>
                        </a> 
                    </li>
                    <li>
                        <a href="#">
                            <div class="img">
                                <img src="/00_common/images/reservation/main/reser_mainImg08.png" alt="">
                            </div>
                            <div class="txt">
                                <h4>보람초등학교</h4>
                                <ul class="schl_dtl">
                                    <li><span>주소 :</span> 세종특별자치시 보람동로 39</li>
                                    <li><span>연락처 :</span> 044-903-0393</li>
                                    <li><span>홈페이지 :</span> boram.sjedues.kr</li>
                                    <li><span>예약가능시설 :</span> 교실, 기타시설, 체육관</li>
                                    <li><span>예약가능시간 :</span> 평일, 주말(규정별첨)</li>
                                </ul>
                            </div> 
                            <button class="reser_btn" href="#">예약하기</button>
                        </a> 
                    </li>
                    <li>
                        <a href="#">
                            <div class="img">
                                <img src="/00_common/images/reservation/main/reser_mainImg09.png" alt="">
                            </div>
                            <div class="txt">
                                <h4>부강초등학교</h4>
                                <ul class="schl_dtl">
                                    <li><span>주소 :</span> 세종특별자치시 부강면 부강로 15</li>
                                    <li><span>연락처 :</span> 044-902-1672</li>
                                    <li><span>홈페이지 :</span> bugang.sjedues.kr</li>
                                    <li><span>예약가능시설 :</span> 교실, 기타시설, 체육관</li>
                                    <li><span>예약가능시간 :</span> 평일 19:00~21:00<br/>공휴일 09:00~21:00</li>
                                </ul>
                            </div> 
                            <button class="reser_btn" href="#">예약하기</button>
                        </a> 
                    </li>
                    <li>
                        <a href="#">
                            <div class="img">
                                <img src="/00_common/images/reservation/main/reser_mainImg10.png" alt="">
                            </div>
                            <div class="txt">
                                <h4>소담초등학교</h4>
                                <ul class="schl_dtl">
                                    <li><span>주소 :</span> 세종특별자치시 소담1로35</li>
                                    <li><span>연락처 :</span> 044-861-7306</li>
                                    <li><span>홈페이지 :</span> sodam.sjedues.kr</li>
                                    <li><span>예약가능시설 :</span> 교실, 기타시설, 체육관</li>
                                    <li><span>예약가능시간 :</span> 평일 18:00~21:00<br/>공휴일 09:00~17:00 일요일 미개방</li>
                                </ul>
                            </div> 
                            <button class="reser_btn" href="#">예약하기</button>
                        </a> 
                    </li>
                </ul>
            </div> 
        </div>
         
    </div>
    <!-- //컨테이너 -->
    <div id="footer">
        <div class="f_wrap"> 
            <p class="address">[30151] 세종특별자치시 한누리대로 2154</p>
            <p class="copy">Copyright(c).all.rights reserved</p>
            <a class="f_lnk" href="">개인정보처리방침</a>
        </div> 
    </div>

</body>
</html>