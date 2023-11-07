<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script>
function goClose() {
	if (!confirm('로그아웃 하시겠습니까?')) {
		return;
	}
		location.href="/admin/ad/logout";
	}
</script>
<c:set var="SSmberInfo" value="${ssId }_SSmberInfo_apple" />
<c:set var="SSmanageSysInfo" value="SSmanageSysInfo" />
<c:set var="manageSysList" value="${sessionScope[SSmberInfo].mberId }_manageSysList" />
				
			<form id="appleHeaderForm" name="appleHeaderForm" method="post">
                <div class="nav_menu">
					<nav>
						<div class="toggle"><a id="menu_toggle"><img src="/images/ap/btn_menu_toggle.png" alt=""></a></div>
						<ul class="nav navbar-nav navbar-right">
							<li class=""> 
								<a href="javascript:" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><img src="/images/ap/img2.png" alt=""><c:out value="${sessionScope[SSmberInfo].mberNm }"/><span class="arrow-down"></span> </a>
								<ul class="dropdown-menu dropdown-usermenu fr">
									<!-- <li><a href="#">환경설정</a></li>
									<li><a href="#">도움말</a> </li> -->
									<li><a href="javascript:goClose()"><span class="sign-out fr"></span>종료</a></li>
								</ul>
							</li>
							<!-- <li role="presentation" class="dropdown"> <a href="javascript:" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false"><img src="/images/ap/messege.png" alt="알림"> <span class="badge bg-green">6</span> </a>
								<ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
									<li> <a> <span class="image"><img src="/images/ap/icon_message.png" alt="" /></span> <span> <span>공지</span> <span class="time">18-04-26[12:22]</span> </span> <span class="message">공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지... </span> </a> </li>
									<li> <a> <span class="image"><img src="/images/ap/icon_message.png" alt="" /></span> <span> <span>홍길동</span> <span class="time">18-04-26[12:22]</span> </span> <span class="message">메시지메시지메시지메시지메시지메시지메시지메시지메시지메시지메시지메시지메시지... </span> </a> </li>
									<li> <a> <span class="image"><img src="/images/ap/icon_message.png" alt="" /></span> <span> <span>공지</span> <span class="time">18-04-26[12:22]</span> </span> <span class="message">공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지공지... </span> </a> </li>
									<li> <a> <span class="image"><img src="/images/ap/icon_message.png" alt="" /></span> <span> <span>홍길동</span> <span class="time">18-04-26[12:22]</span> </span> <span class="message">메시지메시지메시지메시지메시지메시지메시지메시지메시지메시지메시지메시지메시지... </span> </a> </li>
									<li>
										<div class="ac"> <a> <strong>전체알림 &gt; </strong></a> </div>
									</li>
								</ul>
							</li> -->
							<li><a href="/apple/main.do" class="btnHome"><img src="/images/ap/home.png" alt="HOME"></a></li>
							
							<!--  
								작업자 : sjlee
								작업일 : 0708
								작업안 : 
									  - 시스템 전환 사용할 경우 : 두개이상의 홈페이지를 관리할때 
							  -->
							<%-- <c:if test="${multiPageAt ne 'Y' && sessionScope[manageSysList].size() > 1 }"> --%> 
							<c:if test="${ sessionScope[manageSysList].size() > 1 }"> 

								<li>
									<a href="javascript:" id="changeSysBtn" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><strong>시스템 전환</strong><span class="arrow-down"></span></a> 
								</li>
								<li class="manageSysNm"> 
									<span><strong><c:out value="${sessionScope[SSmanageSysInfo].sysNm }"/>&nbsp;관리자 시스템</strong></span> 
								</li>
							</c:if>
						</ul>
<!--                             <div style="padding:12px 0 0 80px;"> -->
<!--                             	<a href="/common/nttFileDownload.do?fileKey=91d85fc35027d6287c886a0bf4f0ddcd" ><button class="btn btn_red">제품 이용가이드</button></a> -->
<!--                             </div> -->
					</nav>
				</div>
				
					<!-- 시스템 리스트 -->
					<div id="selectSysInfoDiv" class="sysPstyle" style="display: none; width: 60%; height: 80%; overflow-y: scroll">
						<div id="selectSysInfoDivCnt"></div>
					</div>

			</form>
<script>
$(function() {
	
	// 홈페이지 전환 
	$("#changeSysBtn").click(function() {
		
			$.ajax({
				type : "post",
				url : "/apple/am/selectManageList.do",
				success : function(data) {
					
					$('#selectSysInfoDivCnt').html(data);
					
					$('#selectSysInfoDiv').bPopup({
						modalClose : false,
						opacity : 0.9
					});
					
				},
				error : function(data) {
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				}		
			});	
			
	});
	
});

</script>
