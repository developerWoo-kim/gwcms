<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 공통 레이아웃 1  --%>
<%--<c:import url="/WEB-INF/jsp/nfu/la/common/main1.jsp" />--%>

<!-- 전광판,메인 비주얼 -->
<div class="MC_wrap1">

	<!-- 전광판 -->
	<div class="MC_box1">
        <div class="dis_board2001">
          <div class="container dis_board_box">
            <h2><span>한줄소식</span></h2>
            <ul>
              <li><a href="#">스마트 아이에듀로 공부하는 즐거운 놀이교육 프로그램!</a></li>
              <li><a href="#">스마트 아이에듀 무료체험 신청하러가기</a></li>
            </ul>
            <!-- <div class="nss_pg"><a href="#" class="prev">이전페이지</a><a href="#" class="stop">일시정지</a><a href="#" class="play">재생</a><a href="#" class="next">다음페이지</a></div> -->
          </div>
        </div>
	</div>
	<!--//전광판 -->

	<!--: 메인 비주얼 -->
	<div class="MC_box2 widgEdit" data-id="10" data-ty="MAINIMG">
		<div class="main_visual">
			<div class="container">
				<ul class="visual" id="m_visual">
					<c:if test="${empty mainImgList}">
						<li><img src="/images/web/test/main/M_visual1.png" alt="스마트1"></li>
						<li><img src="/images/web/test/main/M_visual2.png" alt="스마트2"></li>
					</c:if>
					<c:if test="${!empty mainImgList}">
						<c:forEach items="${mainImgList}" varStatus="status" var="list">
							<li><img src="<c:out value="${list.widgDataFlpth}"/>" alt="<c:out value="${list.widgDataAltrtvText}"/>"></li>
						</c:forEach>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<!-- // : 메인 비주얼 -->

	<div class="container clearfix">
		<!-- 행사일정 -->
		<div class="MC_box3 widgEdit" data-id="60" data-ty="SCHDUL">
			<input type="hidden" id="sYear" value="${dateMap.year}"/>
			<input type="hidden" id="sMonth" value="${dateMap.month}"/>

			<div class="pop_schedule">
				<h2>일정</h2>
				<p class="month">
					<a href="javascript:" class="prev" title="이전달" onclick="setCalenDar('preM')"></a>
					<span>2021년 <em>05월</em></span>
					<a href="javascript:" class="next" title="다음달" onclick="setCalenDar('nextM')"></a>
				</p>
				<ul class="lst_schedule">
					<!-- <li><span class="date">05.05</span>어린이날</li>
					<li><span class="date">05.08</span>어버이날</li>
					<li><span class="date">05.15</span>스승의날</li>
					<li class="no_Data" style="display: none;">데이터가 없습니다.</li>-->
				</ul>
				<a href="#" class="btn_more">더보기<span class="ico"></span></a>
			</div>
		</div>
		<!-- // : 행사일정 -->


		<!-- 팝업존 -->
		<div class="MC_box4 widgEdit" data-id="50" data-ty="POPUP">
			<div class="pop2001">
				<h2>팝업존</h2>
				<c:choose>
					<c:when test="${!empty popZoneList}">
						<ul class="pop_img">
							<c:forEach items="${popZoneList}" var="popZList" varStatus="status">
								<li <c:if test="${status.first}">class='on'</c:if> id="popId${status.index+1}" data-id="${status.index+1}">
									<a href="${popZList.url}" title="${popZList.popupTitle}" <c:if test="${popZList.url ne '#' && popZList.newWinAt eq 'Y'}">target="_blank"</c:if>>
										<img src="${popZList.fileStreCours}" alt="${popZList.orignlFileNm}">
									</a>
								</li>
							</c:forEach>
						</ul>
						<p class="nss_pg">
							<span><em class="now">1</em>/<em>${fn:length(popZoneList)}</em></span>
							<a href="#" class="prev" id="prevPop">이전페이지</a>
							<!-- <a href="#" class="stop">일시정지</a> -->
							<a href="#" class="next" id="nextPop">다음페이지</a>
							<a href="#" class="list" id="Pop_ListOpen">리스트보기</a>
						</p>

<script type="text/javascript">
// 팝업 prev
$(document).on('click', '#prevPop', function() {
	var curPop = $(".pop_img").find(".on").attr("data-id");
	var popLength = $(".pop_img li").length;

	$("#popId"+curPop).removeClass("on");
	if (curPop == 1) {
		$("#popId"+popLength).addClass("on");
		$(".now").text(popLength);
	} else {
		$("#popId"+(parseInt(curPop)-1)).addClass("on");
		$(".now").text((parseInt(curPop)-1));
	}
});
//팝업 next
$(document).on('click', '#nextPop', function() {
	var curPop = $(".pop_img").find(".on").attr("data-id");
	var popLength = $(".pop_img li").length;
	$("#popId"+curPop).removeClass("on");

	if (curPop == popLength) {
		$("#popId1").addClass("on");
		$(".now").text("1");
	} else {
		$("#popId"+(parseInt(curPop)+1)).addClass("on");
		$(".now").text((parseInt(curPop)+1));

	}
});
</script>

						<!--: 팝업리스트 레이어추가 --><!-- 리스트보기 클릭시 아래 div 스타일 display:block; -->
						<div class="pop_layer_box">
							<div class="pop_layer">
								<h3>팝업 리스트</h3>
								<ul>
									<c:forEach items="${popZoneList}" var="popZList" varStatus="status">
										<li><a href="${popZList.url}" <c:if test="${popZList.url ne '#' && popZList.newWinAt eq 'Y'}">target="_blank"</c:if> >${popZList.popupTitle}</a></li>
									</c:forEach>
								</ul>
								<a href="#" class="pop_close" id="Pop_ListClose">닫기</a>
							</div>
						</div>
						<!-- // : 팝업리스트 레이어추가 -->
					</c:when>
					<c:otherwise>
						<ul class="pop_img">
							<li class="on"><a href="#" title="새창"><img src="/images/web/test/main/2001_v_popup2_img_1.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다. 자세히보기"></a></li>
							<li><a href="#" title="새창"><img src="/images/web/test/main/2001_v_popup2_img_1.png" alt="홈페이지를 새롭게 리뉴얼 하였습니다. 자세히보기"></a></li>
						</ul>
						<p class="nss_pg">
							<span><em class="now">1</em>/<em>4</em></span>
							<a href="#" class="prev">이전페이지</a>
							<a href="#" class="stop">일시정지</a>
							<a href="#" class="next">다음페이지</a>
							<a href="#" class="list" id="Pop_ListOpen">리스트보기</a>
						</p>
						<!--: 팝업리스트 레이어추가 --><!-- 리스트보기 클릭시 아래 div 스타일 display:block; -->
						<div class="pop_layer_box">
							<div class="pop_layer">
								<h3>팝업 리스트</h3>
								<ul>
									<li><a href="#" target="_blank" title="새창">팝업 리스트 1</a></li>
									<li><a href="#" target="_blank" title="새창">팝업 리스트 2</a></li>
								</ul>
								<a href="#" class="pop_close" id="Pop_ListClose">닫기</a>
							</div>
						</div>
						<!-- // : 팝업리스트 레이어추가 -->
					</c:otherwise>
				</c:choose>
			</div>
		<!-- //팝업존 -->
		</div>
	</div>
</div>

<!-- 바로가기,공지사항,오늘의 식단 -->
<div class="MC_wrap2">
	<div class="container">
		<!-- 바로가기-->
		<div class="MC_box5 widgEdit" data-id="20" data-ty="BANNER" data-tab="4">
			<div class="M_link2001">
				<ul>
					<li class="link_01">
						<a href="#">
							<span>
								<img src="/images/web/test/main/2001_link1_1.png" alt="스마트학습">
								<em>스마트학습</em>
							</span>
				    	</a>
			    	</li>
				    <li class="link_02">
				    	<a href="#">
				    		<span>
				    			<img src="/images/web/test/main/2001_link1_2.png" alt="스마트펜">
				    			<em>스마트펜</em>
				    		</span>
				    	</a>
				    </li>
				    <li class="link_03">
						<a href="#">
							<span>
								<img src="/images/web/test/main/2001_link1_3.png" alt="아이에듀란?">
								<em>아이에듀란?</em>
							</span>
						</a>
					</li>
				    <li class="link_04">
					    <a href="#">
						    <span>
							    <img src="/images/web/test/main/2001_link1_4.png" alt="과목전체보기">
							    <em>수업신청하기</em>
						    </span>
					    </a>
				    </li>
				</ul>
			</div>
		</div>
		<!-- //바로가기-->

		<!-- BBS -->
		<div class="MC_box6 widgEdit" data-id="30" data-ty="BBS" data-tab="3" data-ntt="6">
			<div class="notice2001">
				<h2><a class="current" target="">공지사항</a></h2>
				<div class="list_box on">
					<ul class="nttlist">
						<li><a href="#">
							<strong>스마트 아이에듀 체험단</strong>
							<p>스마트 아이에듀 체험단 모집</p>
							<span class="date">2019.05.<em>28</em></span>
						</a></li>
						<li><a href="#">
							<strong>스마트아이 에듀 다중지능 진로적성</strong>
							<p>우리아이의 숨겨진 재능을 찾아주는 검사...</p>
							<span class="date">2019.05.<em>22</em></span>
						</a></li>
						<li><a href="#">
							<strong>2020년 제3기 가족이 함께하는 ... </strong>
							<p>2020년 제3기 가족이 함께하는 주말...</p>
							<span class="date">2019.05.<em>18</em></span>
						</a></li>
						<li><a href="#">
							<strong>2020학년도 학부모와 함께 하는... </strong>
							<p>2020학년도 학부모와 함께 하는 그림책...</p>
							<span class="date">2019.05.<em>15</em></span>
						</a></li>
						<li><a href="#">
							<strong>5월 8일 어버이날 카네이션... </strong>
							<p>5월 8일 어버이날 카네이션에 대하여...</p>
							<span class="date">2019.05.<em>08</em></span>
						</a></li>
						<li><a href="#">
							<strong>가정의달 행사 안내</strong>
							<p>가정의달 행사 안내 입니다.</p>
							<span class="date">2019.05.<em>01</em></span>
						</a></li>
					</ul>
					<a href="#" class="btn_more">더보기</a>
				</div>

				<h2><a class="" target="">자유게시판</a></h2>
				<div class="list_box">
					<ul class="nttlist">
						<li><a href="#">
							<strong>자유게시판 자유게시판</strong>
							<p>자유게시판 자유게시판 자유게시판 자유게시판</p>
							<span class="date">2019.00.<em>00</em></span>
						</a></li>
						<li><a href="#">
							<strong>자유게시판 자유게시판</strong>
							<p>자유게시판 자유게시판 자유게시판 자유게시판</p>
							<span class="date">2019.00.<em>00</em></span>
						</a></li>
						<li><a href="#">
							<strong>자유게시판 자유게시판</strong>
							<p>자유게시판 자유게시판 자유게시판 자유게시판</p>
							<span class="date">2019.00.<em>00</em></span>
						</a></li>
						<li><a href="#">
							<strong>자유게시판 자유게시판</strong>
							<p>자유게시판 자유게시판 자유게시판 자유게시판</p>
							<span class="date">2019.00.<em>00</em></span>
						</a></li>
						<li><a href="#">
							<strong>자유게시판 자유게시판</strong>
							<p>자유게시판 자유게시판 자유게시판 자유게시판</p>
							<span class="date">2019.00.<em>00</em></span>
						</a></li>
						<li><a href="#">
							<strong>자유게시판 자유게시판</strong>
							<p>자유게시판 자유게시판 자유게시판 자유게시판</p>
							<span class="date">2019.00.<em>00</em></span>
						</a></li>
					</ul>
					<a href="#" class="btn_more">더보기</a>
				</div>
			</div>
		</div>
		<!-- //BBS -->

	</div>
</div>

<!-- 포토 갤러리 -->
<div class="MC_wrap3">
	<div class="MC_box8 widgEdit" data-id="40" data-ty="GALBBS" data-tab="1" data-ntt="4">
		<div class="container gallery2001 MainPhoto" id="MainPhoto">
			<h2 class="">이달의  <span>추천상품</span></h2>
			<div class="list_box">
				<ul class="nttlist gall_list">
					<li><a href="#">
						<p class="img"><img src="/images/web/test/main/2001_thumb_01.jpg" alt=""></p>
						<p class="txt">스마트 태블릿 강의</p>
					</a></li>
					<li><a href="#">
						<p class="img"><img src="/images/web/test/main/2001_thumb_02.jpg" alt=""></p>
						<p class="txt">영어가 크는나무</p>
					</a></li>
					<li><a href="#">
						<p class="img"><img src="/images/web/test/main/2001_thumb_03.jpg" alt=""></p>
						<p class="txt">5월 무료체험</p>
					</a></li>
					<li><a href="#">
						<p class="img"><img src="/images/web/test/main/2001_thumb_04.jpg" alt=""></p>
						<p class="txt">KL과학하고 우주도감 받자</p>
					</a></li>
				</ul>
				<a href="#" class="btn prev">포토 갤러리 이전</a>
				<a href="#" class="btn next">포토 갤러리 다음</a>
			</div>
		</div>
	</div>
</div>
<!-- // 포토 갤러리 -->

<!-- 배너존
<div class="banner_zone">
	<div class="container">
		<h2>배너모음</h2>
		<p class="btn"><a href="#bannerPrev" class="prev">배너 이전</a><a href="#bannerStop" class="stop">배너 정지</a><a href="#bannerNext" class="next">배너 다음</a><a href="#bannerList" class="list dialogAllBannerList">배너 리스트</a></p>
		<ul>
			<li><a href="#"><img src="/images/web/test/main/ban_01.gif" alt=""></a></li>
			<li><a href="#"><img src="/images/web/test/main/ban_02.gif" alt=""></a></li>
			<li><a href="#"><img src="/images/web/test/main/ban_03.gif" alt=""></a></li>
			<li><a href="#"><img src="/images/web/test/main/ban_04.gif" alt=""></a></li>
			<li><a href="#"><img src="/images/web/test/main/ban_05.gif" alt=""></a></li>
		</ul>
	</div>
</div>
// 배너존 -->

<%-- 공통 레이아웃 2  --%>
<%--<c:import url="/WEB-INF/jsp/nfu/la/common/main2.jsp" />--%>

<script type="text/javascript">
	// js 공통 스크립트에 포함 ( 메인호출시 사용되는 js에 포함해야함 )
	widgApiCall = function(widgSysId, widgId, callBackFn){
		$.ajax({
			type: "post",
			url: "/<c:out value='${ctx}'/>/widgApi/get/json.do",
			dataType: "json",
			data: {
				widgId : widgId,
				widgSysId : widgSysId
			},
			success:function(result){
				callBackFn(result);
			},
			error:function(data) {
				console.log("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				console.log("result : " + data);
			}

		});
	}

	// 메인 호출 후 실행되도록 스크립트 추가
	$(document).ready(function(){
		var sysId = "<c:out value='${ctx}'/>";

		// 파라미터 - 시스템아이디, 위젯아이디, 콜백함수
		//widgApiCall(sysId, '10', apiFnMainImg); // 메인 비주얼
		widgApiCall(sysId, '20', apiFnLink); // 바로가기 배너
		widgApiCall(sysId, '30', apiFnBbs); // 일반 게시판
		widgApiCall(sysId, '40', apiFnGalBbs); // 갤러리 게시판

		/* 위젯으로 제목만 변경. 제목이 없으면 추가할 필요없음 [실제 내용은 /sysId/main.do 에서 넘어온 데이터로 가공해서 처리] */
		widgApiCall(sysId, '50', apiFnPop); // 팝업존
		widgApiCall(sysId, '60', apiFnSchdul); // 일정
		widgApiCall(sysId, '70', apiFnDiet); // 식단
		/*//위젯으로 제목만 변경 [실제 내용은 /sysId/main.do 에서 넘어온 데이터로 가공해서 처리] */

	});

	// 메인 비주얼
	apiFnMainImg  = function(retDataList){
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > ul").children().remove();

			for (idx = 0; idx<widgDataList.length; idx++) {
				appendHtml += "	<li><img src=\"" + widgDataList[idx].widgDataFlpth + "\" alt=\"" + widgDataList[idx].widgDataAltrtvText + "\"></li>";
			}

			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > ul").append(appendHtml);
		}
	}

	// 바로가기 배너
	apiFnLink  = function(retDataList){
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > ul").children().remove();

			for (idx = 0; idx < widgDataList.length; idx++) {
				appendHtml += "	<li class='link_0"+ (idx+1) + "'>";
				appendHtml += "		<a href=\"" + widgDataList[idx].widgDataUrl + "\" target=\"" + widgDataList[idx].widgDataUrlTrgt + "\">";
				appendHtml += "			<span>";
				appendHtml += "				<img src=\"" + widgDataList[idx].widgDataFlpth + "\" alt=\"" + widgDataList[idx].widgDataAltrtvText + "\">";
				appendHtml += "				<em>" + widgDataList[idx].widgDataSj + "</en>";
				appendHtml += "			</span>";
				appendHtml += "		</a>";
				appendHtml += "	</li>";
			}

			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > ul").append(appendHtml);
		}
	}


	// 게시판
	apiFnBbs = function(retDataList) {
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div").children().remove();

			for (idx = 0; idx < widgDataList.length; idx++) {
				if (idx == 0) { // current(첫번째 게시판) 분기처리
					appendHtml += "<h2><a href='javascript:' target='' class='current setNoticeWidg' data-bbs='" + widgDataList[idx].widgDataId + "' data-row='" + widgDataList[idx].widgDataCo + "'>" + widgDataList[idx].widgDataSj + "</a></h2>";
					appendHtml += "	<div class='list_box on'>";
				} else {
					appendHtml += "<h2><a href='javascript:' target='' class='setNoticeWidg' data-bbs='" + widgDataList[idx].widgDataId + "' data-row='" + widgDataList[idx].widgDataCo + "'>" + widgDataList[idx].widgDataSj + "</a></h2>";
					appendHtml += "<div class='list_box'>";
				}

				appendHtml += "	<ul class='setNttlist'>";
				appendHtml += "	</ul>";
				appendHtml += "	<a href='' class='btn_more'> " + widgDataList[idx].widgDataSj + " 더보기</a>";
				appendHtml += "</div>";
			}

			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div").append(appendHtml);

			nttListAction();
		}
	}

// 갤러리 게시판
apiFnGalBbs = function(retDataList) {
	var widgDataList = retDataList.widgDataList;
	var appendHtml = "";

	if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
		return false;
	} else {
		$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div").children().remove();

		for (idx = 0; idx < widgDataList.length; idx++) {
			appendHtml += "<h2 href='javascript:' target='' class='setNoticeWidg' data-bbs='" + widgDataList[idx].widgDataId + "' data-row='" + widgDataList[idx].widgDataCo + "'>" + widgDataList[idx].widgDataSj + "</h2>";
			appendHtml += "<div class='list_box'>";
			appendHtml += "	<ul class='gall_list setNttlist'>";
			appendHtml += "	</ul>";
			//appendHtml += "	<a href='' class='btn_more'>" + widgDataList[idx].widgDataCo + " 더보기</a>";
			appendHtml += "	<a href='#' class='btn prev'>포토 갤러리 이전</a>";
			appendHtml += "	<a href='#' class='btn next'>포토 갤러리 다음</a>";
			appendHtml += "</div>";
		}
		$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div").append(appendHtml);

		galNttListAction();
	}
}

	// 팝업존 [제목만 변경]
	apiFnPop = function(retDataList) {
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div  > h2").empty();
			appendHtml += "" + widgDataList[0].widgDataSj + "";
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div  > h2").append(appendHtml);
		}

		// 후 처리 : 컨트롤러에서 보내준 데이터를 JSTL로 가공
	}

	// 일정 [제목만 변경]
	apiFnSchdul = function(retDataList) {
		setCalenDar('curM');
		$("#aChkDate" + "<c:out value="${dateMap.nowDay}"/>").addClass("today"); // 오늘 날짜 클래스 추가

		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > h2").empty();
			appendHtml += "" + widgDataList[0].widgDataSj + "";
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > h2").append(appendHtml);
		}
	}

	// 식단 [제목만 변경]
	apiFnDiet = function(retDataList) {
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > div > h2").empty();
			appendHtml += "" + widgDataList[0].widgDataSj + "";
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > div > h2").append(appendHtml);

			// 후 처리 : 별도 동적 호출 OR 컨트롤러에서 보내준 데이터를 JSTL로 가공
		}

		// 식단 더보기 버튼
		var dietMenuId = "<c:out value='${dietMenuInfo.menuId}'/>";
		var urlTrgt = "<c:out value='${dietMenuInfo.widgDataUrlTrgt}'/>";
		if ( dietMenuId == "" ) {
			$(".meal_menu3001").find('.btn_more').attr('href','#');
		} else {
			var sysId = "<c:out value='${ctx}'/>";
			var dietHref = "/" + sysId + "/ad/fm/foodmenu/selectFoodMenuView.do?mi=" + dietMenuId;
			$(".meal_menu3001").find('.btn_more').attr('href', dietHref);
			$(".meal_menu3001").find('.btn_more').attr('target', urlTrgt);
		}
	}



/* ==========================================================================================
 * ↑ 콜백 함수
 * ------------------------------------------------------------------------------------------
 * ↓ 동적 호출 함수
 * ========================================================================================== */
/*
<ul class="nttlist">
	<li><a href="#">
		<strong>스마트 아이에듀 체험단</strong>
		<p>스마트 아이에듀 체험단 모집</p>
		<span class="date">2019.05.<em>28</em></span>
	</a></li>
</ul>
*/
// 일반 게시판 동적 호출 (각 템플릿 별 .notice30XX 번호는 변화하니 맞춰서 수정할것) [BBS 1/2]
function nttListAction(){
	$(".notice2001 .setNoticeWidg").each(function(index, item){
		if ($(item).attr("data-bbs") != null && $(item).attr("data-bbs") != "0") {
			var thisObj = $(item);
			var bbsId = $(item).attr("data-bbs");
			var nttCount = $(item).attr("data-row");
			var sysId = "<c:out value='${ctx}'/>";

			$.ajax({
				type : "post",
				dataType : "json",
				url : "/"+ sysId +"/wm/widg/selectWidgDataList.do",
				data : {
					bbsId : bbsId,
					nttCount : nttCount,
					sqlId : 'selectNttListByBbsId'
				},
				success : function(result){
					if (result.length > 0) {
						var currObj = thisObj.parent().next().children(".setNttlist");
						currObj.children().remove();

						for (idx=0; idx < result.length; idx++) {
							var nttCn = result[idx].nttCn;
							var mi = result[idx].menuId;
							var addData = "";
							if (result[idx].newCheck == 'Y') {
								addData += "<li class='new'>";
							} else {
								addData += "<li>";
							}
							addData += "	<a href='/" + sysId + "/na/ntt/selectNttInfo.do?mi=" + mi + "&nttSn=" + result[idx].nttSn + "&bbsId=" + bbsId + "'>";
							addData += "		<strong>" + result[idx].nttSj + "</strong>";
							addData += "		<p>" + result[idx].nttCn + "</p>";
							addData += "		<span class='date'>" + result[idx].regDt1 + "." + result[idx].regDt2 + ".<em>" + result[idx].regDt3 + "</em></span>";
							addData += "	</a>";
							addData += "</li>";
							currObj.append(addData);
						}
						currObj.next().attr("href", "/" + sysId + "/na/ntt/selectNttList.do?mi=" + result[0].menuId + "&bbsId=" + bbsId).attr("target", "_blank");
					} else {
						var currObj = thisObj.parent().next();
 						currObj.prepend("<p class='NoData'><span>데이터가 없습니다.</span></p>");
 						currObj.children(".setNttlist").remove();
 						currObj.find(".btn_more").attr("href","javascript:");
					}
				},
				error:function(data){
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				}
			});
		}
	});
};

// 다른 일반 게시판 클릭시 current처리  // target="" 를 넣어야 최상위로 이동하지 않음 [BBS 2/2]
$(document).on('click',".notice2001 h2 a",function(){
	$(".current").removeClass("current");
	$(this).addClass("current");
	$(".notice2001").children().hide();
	$(".notice2001 h2").show();
	$(this).parent().show();
	$(this).parent().next().show();
});

/*
<h2 class="">이달의  <span>추천상품</span></h2>
<div class="list_box">
	<ul class="nttlist gall_list">
		<li><a href="#">
			<p class="img"><img src="/images/web/test/main/2001_thumb_01.jpg" alt=""></p>
			<p class="txt">스마트 태블릿 강의</p>
		</a></li>
	</ul>
	<a href="#" class="btn prev">포토 갤러리 이전</a>
	<a href="#" class="btn next">포토 갤러리 다음</a>
</div>
*/
// 사진, 갤러리 게시판 동적 호출 [galBbs 1/1]
function galNttListAction(){
	var bbsId = $(".gallery2001").find(".setNoticeWidg").attr("data-bbs");
	var nttCount = $(".gallery2001").find(".setNoticeWidg").attr("data-row");
	var sysId = '<c:out value='${ctx}'/>';

	if (bbsId != null && bbsId != "0") {
		$.ajax({
			type : "post",
			dataType : "json",
			url : "/" + sysId + "/wm/widg/selectWidgDataList.do",
			data : {
				bbsId :bbsId,
				nttCount : nttCount,
				sqlId : 'selectNttListByBbsId'
			},
			success : function(result){
				if (result.length > 0) {
					var currObj = $(".gallery2001").find(".setNttlist");
					currObj.children().remove();

					for (idx=0; idx < result.length; idx++) {
						var mi = result[idx].menuId;
						var addData = "";
						var nttCn = result[idx].nttCn;

						addData += "<li>";
						addData += "	<a href='/" + sysId + "/na/ntt/selectNttInfo.do?mi=" + mi + "&nttSn=" + result[idx].nttSn + "&bbsId=" + bbsId + "'>";
						addData += "		<p class='img'><img src='" + result[idx].flpth + "' alt='" + result[idx].nttSj + "'></p>";
						addData += "		<p>" + result[idx].nttSj + "</p>";
						addData += "	</a>";
						addData += "</li>";
						currObj.append(addData);
					}

					//currObj.next().attr("href", "/" + sysId + "/na/ntt/selectNttList.do?mi=" + result[0].menuId + "&bbsId=" + bbsId).attr("target", "_blank");
				} else {
					$(".gallery2001 > .list_box").prepend("<p class='NoData'><span>데이터가 없습니다.</span></p>");
 					$(".gallery2001 > .setNttlist").remove();
 					//$(".gallery2001").find(".btn_more").attr("href","javascript:");
				}
				thumbResize();
			},
			error:function(data){
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}
		});
	}
};

// 달력 세팅
function setCalenDar(actM) {
	var date = new Date();
	var y = $("#sYear").val();
	var m = $("#sMonth").val();
	var d = date.getDate();

	if ( actM != "curM" ) {
		var full_m = "";

    	if ( actM == 'preM' ) { // 이전 월
    		m--;

    		if ( m < 1 ) {
    			y--;
    			m = 12;
    		}

    		full_m = m;

    		if (full_m < 10) {
    			full_m = "0" + m;
    		}
    	}

    	if ( actM == 'nextM' ) { // 다음 월
    		m++;

    		if ( m > 12 ) {
    			y++;
    			m = 1;
    		}

    		full_m = m;

    		if ( full_m < 10 ) {
    			full_m = "0" + m;
    		}
    	}

		var thisDate = "" + y + "년 <em>" + full_m + "월</em>";
		$(".pop_schedule > p > span").html(thisDate); // 년, 월 세팅
		$(".sche_tbl > table > tbody").children().remove(); // 날짜 삭제

		$("#sYear").val(y);
		$("#sMonth").val(m);

		var preVal = m-1;
		var nextVal = m+1;

		if ( preVal < 10 ) { // 이전 월
			if ( preVal < 1 ) {
				preVal = 12;
			} else {
				preVal = "0" + preVal;
			}
		}

		if ( nextVal < 10 ) { // 다음 월
			nextVal = "0" + nextVal;
		} else {
			if ( nextVal == 13 ) {
				nextVal = "01";
			}
		}

		$(".pop_schedule").find(".prev").text(preVal); // 필요시 사용
		$(".pop_schedule").find(".next").text(nextVal); // 필요시 사용

	} else if ( actM == "curM" ) {
		var thisDate = "" + y + "년 <em>" + (m < 10 ? "0" + m : m) + "월</em>";
		$(".pop_schedule > p > span").html(thisDate); // 년, 월 세팅
	}

	var theDate = new Date(y,m-1,1);
	var theDay = theDate.getDay();
	var last = [0,31,28,31,30,31,30,31,31,30,31,30,31];

<%--
		// 4년마다 있는 윤년을 계산합니다.(100년||400년 주기는 제외)
		if (y%4 && y%100 !=0 || y%400==0) {
		     last[1] = 29;
		}
--%>

	var lastDate = last[m];

	var row = Math.ceil((theDay+lastDate)/7);
	var calendar = "";
	var dNum = 1;
	var realDate = date.getFullYear() + "/" + (date.getMonth() + 1);
	var selDate = y + "/" + m;

	// 달력 일 세팅
	for ( var i = 1; i <= row; i++ ) {
	    calendar += "<tr>";

	    for ( var k= 1; k <= 7; k++ ) {
	        if ( i == 1 && k <= theDay || dNum > lastDate ) {
	            calendar += "<td> &nbsp; </td>";
	        } else {
	            calendar += "<td id = 'dateTd"+dNum+"'><a id ='aChkDate"+dNum+"' class=''>" + dNum + "</a></td>";
	            /* calendar += "<td><a class='day' href='#'>" + dNum + "</a></td>"; */
	            dNum++;
	        }
	    }

	    calendar += "</tr>";

	}

	$(".sche_tbl > table > tbody").append(calendar);

	// 상세일정 세팅
	selectScheduleInfo(actM,y,m);
};

// 일정 세팅
function selectScheduleInfo( paraAct, paraY, paraM ) {
	var sysId = "<c:out value='${ctx}'/>";
	var mi = "<c:out value='${scMenuInfo.menuId}'/>";
	var urlTrgt = "<c:out value='${scMenuInfo.widgDataUrlTrgt}'/>";
	var srchDate = "";
    var dayArr = "";
    var dayArrObj = "";
    var schdulInfoAt = "<c:out value='${dateMap.schdulInfoAt}'/>";
    if ( schdulInfoAt == "Y" ) {
	    if (mi == "") {
	    	$(".lst_schedule").html("<li class='no_Data'>연결된 일정메뉴가 없습니다.</a></li>");
	    	return false;
	    }
    } else { // 템플릿-메인미리보기 (일정상세보기)
    	$(".lst_schedule").html("<li><a href=''><span class='date'>" + paraM + "/01" + "</span>일정관리 예시 입니다.</a></li>");
    	return false;
    }

	srchDate = paraY + "/" + (paraM < 10 ? "0" + paraM : paraM);

	$.ajax({
		type : "post",
		dataType : "json",
		data : {
			srchDate : srchDate,
			sysId : sysId,
			mi : mi
		},
		url : "/${ctx}/wm/widg/selectSchdulList.do",
		success : function(schList){
		   	var viewScList  = "";

		   	if ( schList.length > 0 ) {
			   	for ( var i = 0 ; i < schList.length ; i++ ) {
					if ( schList[i].bgnde != "" ) {
						dayArr += schList[i].bgnde.substring(8,10)+",";
				   		var bgndeY = schList[i].bgndeY;
				   		var bgndeM = schList[i].bgndeM;
				   		var bgndeD = schList[i].bgndeD;
				   		var enddeY = schList[i].enddeY;
				   		var enddeM = schList[i].enddeM;
				   		var enddeD = schList[i].enddeD;
				   		var dayStr = "";

			    		// 상세일정 변수
			    		var dateSeq = schList[i].schdulSeq;
			    		var dateInfoHref = "/" + "<c:out value='${ctx}'/>" + "/sv/schdulView/schdulDetailView.do?mi=" + mi + "&schdulSeq=" + dateSeq;

				   		var bgndeMDId = bgndeM + "" + bgndeD;
				   		var enddeMDId = enddeM + "" + enddeD;
				   		if ( Number(bgndeMDId) == Number(enddeMDId) ) { // 하루
				  		 	$("#aChkDate" + Number(bgndeD)).attr("class","day");
				  		 	$("#aChkDate" + Number(bgndeD)).attr("href","javascript:");
				  		 	$("#aChkDate" + Number(bgndeD)).attr("onClick","javascript:selectScheduleDay('" + bgndeY + "','" + bgndeM + "','" + bgndeD + "')");

				  		 	// 상세일정
				  		 	//dayStr = bgndeM + ". " + bgndeD;
				   			dayStr = "" + bgndeD;
					       	viewScList += "<li><a href='" + dateInfoHref + "' target='" + urlTrgt + "'><span class='date'>" + dayStr + "</span>" + schList[i].schdulTitle + "</a></li>"

				   		} else { // 하루 이상
				   			var DNum = 0; // #aChkDate 뒤에 붙는 id값
				   			var startCnt = 0; // for문 start값
				   			var maxCnt = 0; // for문 end값

				   			// ex. 주석 기준 현재월은 10월
		   					if ( Number(paraM) == Number(bgndeM) && Number(paraM) == Number(enddeM) ) { // ex. 10/10 ~ 10/13
		   						startCnt = bgndeD;
		   						maxCnt = enddeD;
		   					} else if ( Number(paraM) == Number(bgndeM) && Number(paraM) != Number(enddeM) ) { // ex. 10/10 ~ 11/13
		   						startCnt = bgndeD;
		   						maxCnt = 31;
		   					} else if ( Number(paraM) != Number(bgndeM) && Number(paraM) == Number(enddeM) ) { // ex. 09/10 ~ 10/13
		   						startCnt = 1;
		   						maxCnt = enddeD;
		   					} else { // ex. 09/10 ~ 11/13
		   						var last = [0,31,28,31,30,31,30,31,31,30,31,30,31];
		   						var lastDate = last[Number(bgndeD)];
		   						startCnt = 1;
		   						maxCnt = lastDate;
		   					}
		   					for ( var day = Number(startCnt); day <= Number(maxCnt); day++ ) {
		   						var MNum = (paraM < 10 ? "0" + paraM : paraM);
		   						var DNum = (day < 10 ? "0" + day : day);
					  		 	$("#aChkDate"+day).attr("class","day");
					  		 	$("#aChkDate"+day).attr("href","javascript:");
					  		 	$("#aChkDate"+day).attr("onClick","javascript:selectScheduleDay('" + paraY + "','" + MNum + "','" + DNum + "')");

					   			/* [시작~끝 보여줘야하는 위젯일때 사용] */
					   			//dayStr = MNum + "." + DNum;
					   			dayStr = "" + DNum;
					   			/* [시작~끝 상관없이 현재일 보여주는 위젯일때 사용] */
					   			//dayStr = MNum + "/" + "<c:out value="${dateMap.nowDay}"/>";

					  		 	// 상세일정
						       	viewScList += "<li><a href='" + dateInfoHref + "' target='" + urlTrgt + "'><span class='date'>" + dayStr + "</span>" + schList[i].schdulTitle + "</a></li>"
		   					}
				   		}
					}
				}
		   	} else {
		   		viewScList += "<li class='no_Data'>일정이 없습니다.</li>";
		   	}

		 	// 더보기
    		var dateHref = "/" + "<c:out value='${ctx}'/>" + "/sv/schdulView/schdulCalendarView.do?mi=" + mi;
    		$(".pop_schedule").find(".btn_more").attr("href", dateHref);

		   	// 상세일정 세팅 start
			/* [달력이 아닌 위젯에서 사용 : 전체 상세일정 세팅] */
			$(".lst_schedule").html(viewScList);
			/* [달력인 위젯에서 사용] : 오늘 상세일정 세팅 */
			//if (paraAct == "curM") {
			//	var day = "<c:out value="${dateMap.nowDay}"/>";
				// 20220110
				//selectScheduleDay(paraY, paraM, (day < 10 ? "0" + day : day));
			//	selectScheduleDay(paraY, (paraM < 10 ? "0" + paraM : paraM), (day < 10 ? "0" + day : day));
			//}
			// 상세일정 세팅 end
   		},
   		error : function(data){
   			console.log("관리자에게 문의해주세요.");
   		}
	});
};

// 현재일정 보기 (날짜 클릭시 이벤트)
function selectScheduleDay(paraY, paraM, paraD) {
	var sysId = "<c:out value='${ctx}'/>";
	var mi = "<c:out value='${scMenuInfo.menuId}'/>";
	var urlTrgt = "<c:out value='${scMenuInfo.widgDataUrlTrgt}'/>";

	var paraDate = paraY + "/" + paraM + "/" + paraD;
	$.ajax({
			type : "POST",
		dataType : "json",
			 url : "/${ctx}/sv/schdulView/selectSimpleSvList.do",
			data : {
				paraDate : paraDate,
				   sysId : sysId
			},
		 success : function(schList){
		   	var viewScList  = "";

		   	if ( schList.length > 0 ) {
			   	for (var i = 0 ; i < schList.length ; i++){
					if(schList[i].bgnde != ""){
				   		var bgndeM = schList[i].bgndeM;
				   		var enddeM = schList[i].enddeM;
				   		var bgndeD = schList[i].bgndeD;
				   		var enddeD = schList[i].enddeD;

				   		var dayStr = "";

				   		/* [시작~끝 보여줘야하는 위젯일때 사용] */
//				   		var bgndeMDId = bgndeM + "" + bgndeD;
//				   		var enddeMDId = enddeM + "" + enddeD;
//				   		if ( Number(bgndeMDId) == Number(enddeMDId) ) { // 하루
//				   			dayStr = bgndeM + "/" + bgndeD;
//				   		} else { // 다중일
//				   			dayStr = bgndeM + "/" + bgndeD + "~" + enddeM + "/" + bgndeD;
//				   		}

				   		/* [시작~끝 상관없이 현재일 보여주는 위젯일때 사용] */
				   		dayStr = paraM + "." + paraD;

			    		// 상세일정
			    		var dateSeq = schList[i].schdulSeq;
				   		var dateInfoHref = "/" + "<c:out value='${ctx}'/>" + "/sv/schdulView/schdulDetailView.do?mi=" + mi + "&schdulSeq=" + dateSeq;
				   		viewScList += "<li><a href='" + dateInfoHref + "' target='" + urlTrgt + "'><span class='date'>" + dayStr + "</span>" + schList[i].schdulTitle + "</a></li>"
					}
				}
		   	} else {
		   		viewScList += "<li class='no_Data'>금일 일정이 없습니다.</li>";
		   	}

		   	$(".lst_schedule").html(viewScList);
   		},
   		error    : function(data){
   			console.log("관리자에게 문의해주세요.");
   		}
	});
};
</script>
