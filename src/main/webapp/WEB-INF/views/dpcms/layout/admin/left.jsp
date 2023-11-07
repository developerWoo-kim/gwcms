<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!--
	   작업자 : sjLee
	   작업일 : 0617
	작업내용 : left메뉴 권한 있는 것만 보이게 처리
-->
<c:set var="SSmberInfo" value="${ssId}_SSmberInfo_apple" />

	<script type="text/javascript">
		$(document).ready(function () {
			$.ajax({
				type : "GET",
				dataType : "html",
				url : "/admin/mn/menu/left-menu",
				success : function(result) {
					$("#mainMenu").append(result);
				},
				error : function (result) {
					alert(result.message);
				}
			})
		})
	</script>
	<nav>
		<div id="mainMenu">
		<!--START-->
<%--			<c:out value="${mList}" escapeXml="false"/>--%>
<%--				<input type="hidden" id="leftCurrMi" value="${currMenuId }">--%>
<%--				<ul class="gnb">--%>
<%--					<li><a id="1" href="#" ><span class="icons icon01"></span>홈페이지 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="20" href="/admin/sm/system/list" >홈페이지 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="21" href="/admin/mn/menu/sysList?mi=60" >메뉴 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="2358" href="/admin/au/authorList" >분기페이지 관리</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="2" href="#" ><span class="icons icon02"></span>서비스 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="22" href="/admin/bm/board/sysList" >게시판 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="23" href="/admin/bm/board/sysList" >게시물 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="24" href="/apple/cm/cntnts/selectCntntsSmList.do?mi=24" >콘텐츠 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="25" href="/apple/cf/cntntsFile/selectCntntsFileList.do?mi=25" >콘텐츠 파일 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="26" href="/apple/pm/popup/selectPopupSysList.do?mi=26" >팝업 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="27" href="/apple/ba/banner/selectBannerSysList.do?mi=27" >배너 관리</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="4" href="#" ><span class="icons icon03"></span>학교기능 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="34" href="/apple/gt/grt/selectGrtSmList.do?mi=34" >인사말 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="36" href="/apple/hm/hist/selectHistSmList.do?mi=36" >연혁 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="43" href="/apple/ss/schulSymbol/selectSchulSymbolSmList.do?mi=43" >학교상징 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="42" href="/apple/ss/schulSong/selectSchulSongSmList.do?mi=42" >교가관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="35" href="/apple/jo/jobshare/selectJobSmList.do?mi=35" >업무분장 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="31" href="/apple/ps/schdul/selectSchdulMngSysList.do?mi=31" >일정 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="37" href="/apple/fm/foodmenu/foodSmView.do?mi=37" >식단 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="28" href="/apple/lm/location/selectLocationSmList.do?mi=28" >오시는길 관리</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="3" href="#" ><span class="icons icon04"></span>부가 기능 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="30" href="/apple/dt/dta/selectDtaSysList.do?mi=30" >자료관리자 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="44" href="/apple/ph/prmot/selectHmpgPrmotList.do?mi=44" >진급 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="40" href="/apple/rm/reqst/selectReqstSmList.do?mi=40" >온라인 신청 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="41" href="/apple/vm/vote/selectVoteSmList.do?mi=41" >투표관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="29" href="/apple/qs/qustnr/selectQustnrSysList.do?mi=29" >설문관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="45" href="/apple/pn/presnatn/selectPresnatnSmMainList.do?mi=45" >발표 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="38" href="/apple/cl/clas/selectClasSysList.do?mi=38" >학급 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="39" href="/apple/cl/clas/selectClasHmpgSysList.do?mi=39" >학급 홈페이지 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="33" href="/apple/cs/csnst/selectCsnstSmList.do?mi=33" >만족도 평가 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="32" href="/apple/qm/qr/selectQrCodeSysList.do?mi=32" >QR코드 관리</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="1547" href="#" ><span class="icons icon05"></span>시설물 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="1548" href="/apple/fc/fclt/selectFcltSmList.do?mi=1548" >시설물 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="1549" href="/apple/fc/fclt/selectFcltBscSmList.do?mi=1549" >기본정보 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="1553" href="/apple/fc/fclt/selectFcltOpnDtSmList.do?mi=1553" >시설 개방기간 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="3544" href="/apple/fc/fclt/selectFcltRsvtSmList.do?mi=3544" >시설 예약현황 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="1550" href="/apple/fc/fclt/selectFcltFeeSmList.do?mi=1550" >시설 요금 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="3388" href="/apple/fc/fclt/selectFcltRsvtLmtSmList.do?mi=3388" >시설 예약제한 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="1552" href="/apple/fc/fclt/selectFcltStatsList.do?mi=1552" >시설 예약 통계</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="5" href="#" ><span class="icons icon06"></span>회원 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="46" href="/admin/mm/member/list" >회원 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="47" href="/apple/gr/group/selectGroupList.do?mi=47" >그룹 관리</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="6" href="#" ><span class="icons icon07"></span>코드 / 권한 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="48" href="/apple/ac/acs/selectAcsList.do?mi=48" >접근제어 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="49" href="/apple/im/instt/selectInsttList.do?mi=49" >기관코드 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="50" href="/admin/au/author/list?mi=50" >권한 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="51" href="/admin/cd/commonCode/list" >공통코드 관리</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="7" href="#" ><span class="icons icon11"></span>시스템 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="53" href="/apple/sm/systemInfo/selectSystemInfo.do?mi=53" >서버 현황</a>--%>
<%--							</li>--%>
<%--							<li><a id="54" href="/apple/sm/datamange/selectBackupSysList.do?mi=54" >게시물백업 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="55" href="/apple/sm/datamange/selectRecovrySysList.do?mi=55" >게시물복구 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="56" href="/apple/sm/datamange/selectDeleteSysList.do?mi=56" >게시물삭제 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="10356" href="/apple/bc/batch/selectBatchJobHist.do?mi=10356" >배치 작업 관리</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="8" href="#" ><span class="icons icon09"></span>이력 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="57" href="/apple/st/mberacces/selectMberAccesSmList.do?mi=57" >홈페이지 접속이력</a>--%>
<%--							</li>--%>
<%--							<li><a id="58" href="/apple/st/mngracces/selectMngrAccesSmList.do?mi=58" >관리자 접속이력</a>--%>
<%--							</li>--%>
<%--							<li><a id="59" href="/apple/mp/mph/selectMphSmList.do?mi=59" >비밀번호 변경이력</a>--%>
<%--							</li>--%>
<%--							<li><a id="60" href="/apple/ah/authorhist/selectAuthorHistSmList.do?mi=60" >권한 이력</a>--%>
<%--							</li>--%>
<%--							<li><a id="61" href="/apple/ag/agreHist/selectAgreHistSmList.do?mi=61" >개인정보 동의 이력</a>--%>
<%--							</li>--%>
<%--							<li><a id="62" href="/apple/mb/mberhist/selectMberHistSysList.do?mi=62" >회원정보 이력</a>--%>
<%--							</li>--%>
<%--							<li><a id="1537" href="/apple/cr/chckresult/selectChckResult.do?mi=1537" >개인정보 접속 기록 점검 결과</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="9" href="#" ><span class="icons icon08"></span>사이트 통계</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="63" href="/apple/st/visit/selectVisitSmList.do?mi=63" >방문 통계</a>--%>
<%--							</li>--%>
<%--							<li><a id="64" href="/apple/st/menu/selectMenuSmList.do?mi=64" >메뉴 통계</a>--%>
<%--							</li>--%>
<%--							<li><a id="65" href="/apple/st/mberacces/selectMberAccesSmStat.do?mi=65" >접속 통계</a>--%>
<%--							</li>--%>
<%--							<li><a id="9868" href="/apple/st/mberstats/selectmberStatsList.do?mi=9868" >회원 통계</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="10" href="#" ><span class="icons icon10"></span>개인정보처리방침 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="66" href="/apple/ft/indvdl/selectIndvdlSysList.do?mi=66" >개인정보처리방침 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="67" href="/apple/ft/vidoper/selectVidoperSysList.do?mi=67" >영상정보처리방침 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="68" href="/apple/ft/cpyrht/selectCpyrhtSysList.do?mi=68" >저작권 관리</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--					<li><a id="1524" href="#" ><span class="icons icon11"></span>데이터 관리</a>--%>
<%--						<ul class="dep2">--%>
<%--							<li><a id="1525" href="/apple/dm/StdCode/stdCodeList.do?mi=1525" >행정 표준 용어 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="1526" href="/apple/dm/domn/domnList.do?mi=1526" >추가 표준 도메인 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="1527" href="/apple/dm/snwd/snwdList.do?mi=1527" >추가 컬럼 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="1528" href="/apple/dm/table/selectTableList.do?mi=1528" >테이블 정보 관리</a>--%>
<%--							</li>--%>
<%--							<li><a id="1529" href="/apple/dm/confirm/dataConfirmList.do?mi=1529" >데이터 표준 준수 여부</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</li>--%>
<%--				</ul>--%>
			<!--END-->
		</div>
	</nav>

<script type="text/javascript">
$(function(){
    var mi = $("#leftCurrMi").val();
    $('#mainMenu .gnb a[id="' + mi + '"]').parent('li').parent('ul').parent('li').addClass('active');
    $('#mainMenu .gnb a[id="' + mi + '"]').parent('li').addClass('active');
});
</script>
