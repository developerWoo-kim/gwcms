<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<script>
function goClose() {
	if (!confirm('로그아웃 하시겠습니까?')) {
		return;
	}
	location.href="/admin/ad/logout";
}
</script>
<header id="header">

	<h1 class="logo"><a href="/admin/index"></a></h1>

	<%-- 로그인 유지시간 관리 --%>
	<input type="hidden" id="timeLimit" value="<c:out value="${timeLimit}"/>">

	<div id="util">
		<!-- 211026 홈페이지 접속이 번거로워서 추가. 추후 도메인 정보 받아와서 도메인 정보까지 추가할 것(지금은 기능 없어서 패스). chkim -->
		<c:if test="${sessionScope[SSmanageSysInfo].sysId ne 'apple'}">
			<p class="util_darkNavy">
				<%-- <a href="/<c:out value="${sessionScope[SSmanageSysInfo].sysId}"/>/main.do" target="_blank">
					<i class="xi-check" aria-hidden="true"></i> <c:out value="${sessionScope[SSmanageSysInfo].sysNm }"/>
				</a> --%>
				<a href="/<c:out value="${sessionScope[SSmanageSysInfo].sysId}"/>/main.do" target="_blank">
					<i class="xi-check" aria-hidden="true"></i> <c:out value="${sessionScope[SSmanageSysInfo].sysNm }"/>
				</a>
			</p>
		</c:if>
		<!-- 211026 홈페이지 접속이 번거로워서 추가. 추후 도메인 정보 받아와서 도메인 정보까지 추가할 것(지금은 기능 없어서 패스). chkim -->
		<c:if test="${ sessionScope[manageSysList].size() > 1 }">
			<p class="util_purple">
				<a href="http://helpdesk.sje.go.kr/" target="_blank">
					<i class="xi-desktop" aria-hidden="true"></i> 학교홈페이지 지원센터
				</a>
			</p>
			<p class="util_navy">
				<a href="javascript:" id="changeSysBtn" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					<i class="xi-renew" aria-hidden="true"></i> 시스템전환
				</a>
			</p>
		</c:if>
		<!-- <li><a href="/common/fileDownload.do?fileKey=1578" class="icons icon01">사용자 매뉴얼</a></li> -->
		<ul class="userInfo">
			<li><a href="#boxAdmin" class="icons icon02 hashToggleClass">관리자</a>
				<div id="boxAdmin">
					<div class="memInfo">
						<span class="memPhoto"><!-- <img src="" alt="홍길동"> --></span><!-- 사진 들어갑니다. 사진 없을시 img 태그 삭제처리로 개발해 주세요. -->
						<p class="memName"><strong><sec:authentication property="principal.member.memberName"/></strong>님</p>
						<p class="memId"><sec:authentication property="principal.member.memberId"/></p>
						<a href="javascript:" onclick="goClose();" class="btnLog">LOGOUT</a>
					</div>
					<ul class="conInfo">
						<!--
						<li><strong>최종접속일 : </strong>2020.05.00 15:24:38</li>
						<li><strong>접속아이피 : </strong>115.94.11.18</li>
						-->
						<li><strong>최종접속일 : </strong></li>
						<li><strong>접속아이피 : </strong></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
</header>
<!-- 시스템 리스트 -->
<div id="selectSysInfoDiv" class="sysPstyle" style="width: 95%; height:auto; max-width:60rem; display:none;">
	<div id="selectSysInfoDivCnt"></div>
</div>


<script>
$(function() {
	// 홈페이지 전환
	var changeSysCheck = false;
	$("#changeSysBtn").click(function() {
		$.ajax({
			type : "post",
			url : "/apple/am/selectManageList.do",
			async : false,
			success : function(data) {
				if(changeSysCheck == false){ $('#selectSysInfoDivCnt').html(data); }
				$('#selectSysInfoDiv').bPopup({
					modalClose : true,
					escClose : false,
					opacity : 0.35
				});
			},
			error : function(data) {
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}
		});
		changeSysCheck = true;
	});
});

/*  confirm으로 하려했는데 form을 호출해서 bpopup으로
$(document).ready(function(){
	$("#changeSysBtn").click(function() {
		$.confirm({})
	});
}); */

function goHmpg(id) {
	if (id != null) {
		$.ajax({
			type : "post",
			url : "/apple/am/selectDomn.do",
			data : {
				sysId : id
			},
			success : function(data) {
				if (data != null && data != "" && data != "null") {
					data = data.replace(/\"/gi, "");
					var newWindow = window.open("about:blank");
					newWindow.location.href = "https://" + data;
				} else {
					var newWindow = window.open("about:blank");
					newWindow.location.href = "/" + id + "/main.do";
					/* if (confirm("서브 디렉토리 방식으로 연결됩니다.\n정확한 도메인 연결을 원하신다면\n도메인 정보를 입력해주세요.\n(도메인 포워딩 입력 필수)")) {
						var newWindow = window.open("about:blank");
						newWindow.location.href = "/" + id + "/main.do";
					} */
				}
			},
			error : function(data) {
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}
		});
	}
}
</script>