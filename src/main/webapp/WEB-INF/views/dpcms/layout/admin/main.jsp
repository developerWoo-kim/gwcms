<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 차트  -->
<script type="text/javascript" src="/js/Chart.js"></script>
<script type="text/javascript" src="/js/Chart.min.js"></script>
<script type="text/javascript" src="/js/Chart.bundle.js"></script>
<script type="text/javascript" src="/js/Chart.bundle.min.js"></script>
<!-- //차트  -->

<script type="text/javascript">
$(document).ready(function(){
	// bar 공통 사용
	var backgroundColor = ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)',
		                'rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)'];
	var borderColor = ['rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)',
		                'rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)'];
	
	// 월별 방문자 수 시작----------------------------------------------------------------------------------------------------- 
	var monthLabels = [];
	var monthData = [];
	
	// $.ajax({
	// 	type : "get",
	// 	url : "/apple/am/selectMonthList.do",
	// 	dataType : "json",
	// 	success : function(data){
	// 		$.each(data, function(i, item){
	// 			monthLabels.push(item.currMonth);
	// 			monthData.push(item.cnt);
	// 		})
	//
	// 		monthChart();
	// 	},
	// 	error : function(error) {
	// 		alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
	// 	}
	// });
	
	function monthChart(){
		var ctx1 = document.getElementById("monthVisitChart");
		var myChart1 = new Chart(ctx1, {
		    type : 'line',
		    data : {
		        labels : monthLabels,
		        datasets : [{
			            data : monthData,
			            label : "",
		            	borderColor : borderColor[3],
		            	backgroundColor : backgroundColor[1],
			            fill : true
			        }
		        ]
		    },
		    options : {
		    	maintainAspectRatio : false,
		    	legend : {
					display : false
				},
		        scales : {
		            yAxes : [{
		                ticks : {
		                    beginAtZero : true
		                }
		            }]
		        }
		    }
		});
	}
	// 월별 방문자 수 끝-----------------------------------------------------------------------------------------------------//
	
	// 서버현황 시작---------------------------------------------------------------------------------------------------------
	var ctx3 = $("#serverState");
	
	// 소수점까지 다나옴
	/*
 	Number($("#per").val());
 	Number($("#restPer").val());
 	*/
	var myChart3 = new Chart(ctx3, {
		type : 'doughnut',
	    data : {
	        labels : ["사용량", "남은용량"],
	        datasets : [{
	            data : [Math.round($("#per").val()), Math.round($("#restPer").val())],
	            backgroundColor : [
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor : [
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
	            ],
	            borderWidth : 1
	        }]
	    },
	    options : {
	    	maintainAspectRatio : false,
	    	legend : {
				position : 'right',
			},
	    },
	});
	// 서버현황 끝---------------------------------------------------------------------------------------------------------//	
})
</script>

		<div class="MC_statistics">
			<ul class="statistics">
				<li id="statisticsBox1"><a href="#statisticsBox1" class="hashToggleClass"><span class="icons icon01"></span>오늘등록된 글 수
						<div class="fr">
							<span class="view">View + </span><strong><c:out value="${uploadTotalCnt.cnt}"/></strong>
					</div></a>
					<ul class="lstDetailView" id="uploadCntView">
						<li>필요시 디자인 또는 입력 형태 제공 요망</li>
					</ul>
				</li>
				<li id="statisticsBox2"><a href="#statisticsBox2" class="hashToggleClass"><span class="icons icon02"></span>회원 수
					<div class="fr">
						<span class="view">View + </span><strong><c:out value="${mberTotalCnt.cnt}"/></strong>
					</div></a>
					<ul class="lstDetailView" id="mberCntView">
						<li>교직원<strong class="fr">4</strong></li>
						<li>기타회원<strong class="fr">21</strong></li>
						<li>학생<strong class="fr">10</strong></li>
						<li>학부모<strong class="fr">2</strong></li>
						<li>졸업생<strong class="fr">0</strong></li>
						<li>담임교사<strong class="fr">11</strong></li>
					</ul>
				</li>
				<li id="statisticsBox3"><a href="#statisticsBox3" class="hashToggleClass"><span class="icons icon03"></span>오늘 방문자 수
					<div class="fr">
						<span class="view">View + </span><strong><c:out value="${visitTotalCnt.cnt}"/></strong>
					</div></a>
					<ul class="lstDetailView" id="visitCntView">
						<li>필요시 디자인 또는 입력 형태 제공 요망</li>
					</ul>
				</li>
				<li id="statisticsBox4"><a href="#statisticsBox4" class="hashToggleClass"><span class="icons icon04"></span>가입 대기건수
					<div class="fr">
						<span class="view">View + </span><strong><c:out value="${confmTotalCnt.cnt}"/></strong>
					</div></a>
					<ul class="lstDetailView" id="confmCntView">
						<li>필요시 디자인 또는 입력 형태 제공 요망</li>
					</ul>
				</li>
			</ul>
		</div>		
		<div id="contents">
			<!-- 섹션1 -->
			<section class="section section1">
				<div class="MC_box1">
					<h2>공지사항</h2>
					<ul>
						<c:forEach var="list" items="${nttList}" varStatus="status">
							<li>
								<a href="/apple/am/selectNoticeInfo.do?nttSn=<c:out value="${list.nttSn}"/>">
								<span class="date"><c:out value="${list.regDt1}"/>.<em><c:out value="${list.regDt2}"/></em></span>
								<strong><c:if test="${list.newCheck eq 'Y'}"><em class="alert type02">새글</em></c:if><c:out value="${list.nttSj}"/></strong>
								<p class="ntt_cn_view${status.index}"><c:out value="${list.nttCn}" escapeXml="false"/></p>
								</a>
							</li>					
						</c:forEach>
						<!--  
						<li><a href="">
							<span class="date">2019.00.<em>00</em></span>
							<strong><em class="alert type01">고정</em>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</strong>
							<p>공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항 공지사항</p>
						</a></li>
						<li><a href="">
							<span class="date">2019.00<em>00</em></span>
							<strong><em class="alert type02">새글</em>공지사항 공지사항 공지사항 공지사항 공지사항</strong>
							<p>공지사항 공지사항 공지사항 공지사항</p>
						</a></li>
						<li><a href="">
							<span class="date">2019.00<em>00</em></span>
							<strong>공지사항 공지사항 공지사항 공지사항 공지사항</strong>
							<p>공지사항 공지사항 공지사항 공지사항</p>
						</a></li>
						-->
					</ul>
					<a href="/apple/am/selectNttList.do" class="btnMore">공지사항 더보기</a> 
				</div>
				<div class="MC_box2">
					<h2>캘린더</h2>
					<div class="inBox">
						<div class="MC_box2_1">
							<div class="dateBox">
								<input type="hidden" id="sYear" value="${dateMap.year}" />
								<input type="hidden" id="sMonth" value="${dateMap.month}" />
								<span class="date thisDate">${dateMap.year}<em><c:if test="${dateMap.month < 10}">0</c:if>${dateMap.month}</em></span>
								<p class="btns"><a href="javascript:" class="prev preM" onclick="setCalenDar('preM')">${dateMap.preM}</a><a href="javascript:" class="next nextM" onclick="setCalenDar('nextM')">${dateMap.nextM}</a></p>
							</div>
							<div class="calenderBox">
								<table class="calender">
									<caption>5월 달력</caption>
									<colgroup>
										<col style="width:14.25%;" />
										<col style="width:14.25%;" />
										<col style="width:14.25%;" />
										<col style="width:14.25%;" />
										<col style="width:14.25%;" />
										<col style="width:14.25%;" />
										<col style="width:auto;" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="sun">SUN</th>
											<th scope="col">MON</th>
											<th scope="col">TUE</th>
											<th scope="col">WED</th>
											<th scope="col">THU</th>
											<th scope="col">FRI</th>
											<th scope="col" class="sat">SAT</th>
										</tr>
									</thead>
									<tbody class="calTbody">
									</tbody>
								</table>							
							</div>
						</div>
						<div class="MC_box2_2">
							<h3>상세일정</h3>
							<ul class="lstSchedule">
								<li><span class="date">05.06</span>일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분</li>
								<li><span class="date">05.14</span>일정 내용 나오는 부분</li>
								<li><span class="date">05.18</span>일정 내용 나오는 부분</li>
								<li><span class="date">05.00</span>일정 내용 나오는 부분</li>
								<li><span class="date">05.00</span>일정 내용 나오는 부분</li>
								<li><span class="date">05.00</span>일정 내용 나오는 부분</li>
							</ul>
						</div>
					</div>
				</div>
				<%--				
 				<div class="MC_box2">
					<h2>캘린더</h2>
					<div class="inBox">
						<div class="MC_box2_1">
							<div class="dateBox">
								<span class="date">2020<em>05</em></span>
								<p class="btns"><a href="" class="prev">04</a><a href="" class="next">06</a></p>
							</div>
							<div class="calenderBox">
								<table class="calender">
									<caption>5월 달력</caption>
									<colgroup>
										<col style="width: 14.25%;" />
										<col style="width: 14.25%;" />
										<col style="width: 14.25%;" />
										<col style="width: 14.25%;" />
										<col style="width: 14.25%;" />
										<col style="width: 14.25%;" />
										<col style="width: auto;" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="sun">SUN</th>
											<th scope="col">MON</th>
											<th scope="col">TUE</th>
											<th scope="col">WED</th>
											<th scope="col">THU</th>
											<th scope="col">FRI</th>
											<th scope="col" class="sat">SAT</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="sun"></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td><a href="">1</a></td>
											<td class="sat"><a href="">2</a></td>
										</tr>
										<tr>
											<td class="sun"><a href="">3</a></td>
											<td><a href="">4</a></td>
											<td class="sun"><a href="">5</a></td>
											<td class="type01"><a href="">6</a></td>
											<td><a href="">7</a></td>
											<td><a href="">8</a></td>
											<td class="sat"><a href="">9</a></td>
										</tr>
										<tr>
											<td class="sun"><a href="">10</a></td>
											<td><a href="">11</a></td>
											<td><a href="">12</a></td>
											<td><a href="">13</a></td>
											<td><a href="">14</a></td>
											<td><a href="">15</a></td>
											<td class="sat"><a href="">16</a></td>
										</tr>
										<tr>
											<td class="sun"><a href="">17</a></td>
											<td class="type02"><a href="">18</a></td>
											<td><a href="">19</a></td>
											<td><a href="">20</a></td>
											<td><a href="">21</a></td>
											<td><a href="">22</a></td>
											<td class="sat"><a href="">23</a></td>
										</tr>
										<tr>
											<td class="sun"><a href="">24</a></td>
											<td><a href="">25</a></td>
											<td><a href="">26</a></td>
											<td><a href="">27</a></td>
											<td><a href="">28</a></td>
											<td><a href="">29</a></td>
											<td class="sat"><a href="">30</a></td>
										</tr>
										<tr>
											<td class="sun"><a href="">31</a></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td class="sat"></td>
										</tr>
									</tbody>
								</table>							
							</div>
						</div>
						<div class="MC_box2_2">
							<h3>상세일정</h3>
							<ul class="lstSchedule">
								<li><span class="date">05.06</span>일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분일정 내용 나오는 부분</li>
								<li><span class="date">05.14</span>일정 내용 나오는 부분</li>
								<li><span class="date">05.18</span>일정 내용 나오는 부분</li>
								<li><span class="date">05.00</span>일정 내용 나오는 부분</li>
								<li><span class="date">05.00</span>일정 내용 나오는 부분</li>
								<li><span class="date">05.00</span>일정 내용 나오는 부분</li>
							</ul>
						</div>
					</div>
				</div> 
				--%>
			</section>
			<!-- // 섹션1 -->
			
			<!-- 섹션2 -->
			<section class="section section2">
				<div class="MC_box3">
					<h2>월별 방문자 수</h2>
					<div class="inBox">
						<canvas id="monthVisitChart"></canvas>
					</div>
				</div>
			</section>
			<!-- // 섹션2 -->
			
			<!-- 섹션3 -->
			<section class="section section3">
				<div class="MC_box4">
					<h2>관리자 접속 리스트</h2>
					<div class="inBox">
						<ul class="lstPerson">
							<c:forEach var="list" items="${mngrConectList}" begin="0" end="4" step="1"> 
								<li>
									<a href="" style="cursor:default;">
										<span class="name"><c:out value="${list.conectrNm}"/></span>
										<span class="job"><c:out value="${list.insttNm}"/></span>
										<p class=""><c:out value="${list.conectDate}"/></p>
									</a>
								</li>								
							</c:forEach>
							<!--						
 							<li><a href="">
								<span class="name">홍길동</span>
								<span class="job">케이엘정보통신</span>
								<p class="">2020-05-00 09:58:40</p>
							</a></li>
							<li><a href="">
								<span class="name">홍길동</span>
								<span class="job">케이엘정보통신</span>
								<p class="">2020-05-00 09:58:40</p>
							</a></li>
							<li><a href="">
								<span class="name">홍길동</span>
								<span class="job">케이엘정보통신</span>
								<p class="">2020-05-00 09:58:40</p>
							</a></li>
							<li><a href="">
								<span class="name">홍길동</span>
								<span class="job">케이엘정보통신</span>
								<p class="">2020-05-00 09:58:40</p>
							</a></li> 
							-->
						</ul>
					</div>
					<a href="/apple/st/mngracces/selectMngrAccesList.do?mi=43" class="btnMore">관리자 접속 리스트 더보기</a> 
				</div>
				<div class="MC_box5">
					<h2>방문자 접속 리스트</h2>
					<div class="inBox">
						<ul class="lstPerson">
								<c:forEach var="list" items="${visitorConectList}" begin="0" end="4" step="1"> 
									<li>
										<a href="" style="cursor:default;">
											<span class="name"><c:out value="${list.conectrNm}"/></span>
											<span class="job"><c:out value="${list.insttNm}"/></span>
											<p class=""><c:out value="${list.conectDate}"/></p>
										</a>
									</li>									
								</c:forEach>
							<!--						
 							<li><a href="">
								<span class="name">홍길동</span>
								<span class="job">케이엘정보통신</span>
								<p class="">2020-05-00 09:58:40</p>
							</a></li>
							<li><a href="">
								<span class="name">홍길동</span>
								<span class="job">케이엘정보통신</span>
								<p class="">2020-05-00 09:58:40</p>
							</a></li>
							<li><a href="">
								<span class="name">홍길동</span>
								<span class="job">케이엘정보통신</span>
								<p class="">2020-05-00 09:58:40</p>
							</a></li>
							<li><a href="">
								<span class="name">홍길동</span>
								<span class="job">케이엘정보통신</span>
								<p class="">2020-05-00 09:58:40</p>
							</a></li> 
							-->
						</ul>
					</div>
					<a href="/apple/st/mberacces/selectMberAccesList.do?mi=42" class="btnMore">방문자 접속 리스트 더보기</a> 
				</div>
				<div class="MC_box6">
					<h2>서버현황</h2>
					<div class="inBox">
						<input type="hidden" value="<c:out value="${server.per}"/>" id="per">
						<input type="hidden" value="<c:out value="${server.restPer}"/>" id="restPer">
						<div class="graphBox" style="height:85%;"><canvas id="serverState"></canvas></div>						
					</div>
					<a href="/apple/sm/systemInfo/selectSystemInfo.do?mi=38" class="btnMore">서버현황 더보기</a> 
				</div>
			</section>
			<!-- // 섹션3 -->
		</div>
		
<script type="text/javascript">
<%--$(function(){--%>
<%--	// 회원 수 상세보기--%>
<%--	$.ajax({--%>
<%--		type : "get",--%>
<%--		url : "/apple/am/selectMberCnt.do",--%>
<%--		dataType : "json",--%>
<%--		success:function(data){--%>
<%--			html ="";--%>
<%--			--%>
<%--			$.each(data, function(i, item) { --%>
<%--				html += "<li>"+item.codeNm;--%>
<%--				html += "<strong class='fr'>"+item.cnt+"</strong>";--%>
<%--				html += "</li>";--%>
<%--			})--%>
<%--			--%>
<%--			$("#mberCntView").html(html);--%>
<%--		},--%>
<%--		error : function(error) {--%>
<%--			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");--%>
<%--		}	--%>
<%--	});--%>
<%--	--%>
<%--	// 오늘 방문자수 상세보기   --%>
<%--	$.ajax({--%>
<%--		type : "get",--%>
<%--		url : "/apple/am/selectVisitCnt.do",--%>
<%--		dataType : "json",--%>
<%--		success:function(data){--%>
<%--			html ="";--%>
<%--			--%>
<%--			if (isEmpty(data)) {--%>
<%--				html += "<li>방문자가 없습니다</li>";--%>
<%--			} else {--%>
<%--				$.each(data, function(i, item) { --%>
<%--					html += "<li>"+item.nm;--%>
<%--					html += "<strong class='fr'>"+item.cnt+"</strong>";--%>
<%--					html += "</li>";--%>
<%--				})--%>
<%--			}			--%>
<%--			$("#visitCntView").html(html);--%>
<%--			--%>
<%--		},--%>
<%--		error : function(error) {--%>
<%--			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");--%>
<%--		}	--%>
<%--	});--%>
<%--	--%>
<%--	// 가입대기건수 상세보기--%>
<%--	$.ajax({--%>
<%--		type : "get",--%>
<%--		url : "/apple/am/selectConfmCnt.do",--%>
<%--		dataType : "json",--%>
<%--		success : function(data){  --%>
<%--			html ="";--%>
<%--			--%>
<%--			if (isEmpty(data)) {--%>
<%--				html += "<li>가입신청이 없습니다</li>";--%>
<%--			} else {--%>
<%--				$.each(data, function(i, item) { --%>
<%--					html += "<li>"+item.nm;--%>
<%--					html += "<strong class='fr'>"+item.cnt+"</strong>";--%>
<%--					html += "</li>";--%>
<%--				})--%>
<%--			}--%>
<%--			--%>
<%--			$("#confmCntView").html(html);--%>
<%--		},--%>
<%--		error : function(error) {--%>
<%--			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");--%>
<%--		}	--%>
<%--	});--%>
<%--	--%>
<%--	// 오늘 등록된 글 수 상세보기--%>
<%--	 $.ajax({--%>
<%--		type : "get",--%>
<%--		url : "/apple/am/selectUploadCnt.do",--%>
<%--		dataType : "json",--%>
<%--		success:function(data){--%>
<%--			html ="";--%>
<%--			--%>
<%--			if (isEmpty(data)) {--%>
<%--				html += "<li>등록된 글이 없습니다</li>";--%>
<%--			} else {--%>
<%--				$.each(data, function(i, item) { --%>
<%--					html += "<li>"+item.sj;--%>
<%--					html += "<strong class='fr'>"+item.cnt+"</strong>";--%>
<%--					html += "</li>";--%>
<%--				})--%>
<%--			}--%>
<%--			--%>
<%--			$("#uploadCntView").html(html);--%>
<%--		},--%>
<%--		error : function(error) {--%>
<%--			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");--%>
<%--		}	--%>
<%--	});--%>
<%--	--%>
<%--})--%>

<%--function isEmpty(value){ --%>
<%--	if (value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length)) { --%>
<%--		return true --%>
<%--	} else {--%>
<%--		return false --%>
<%--	}--%>
<%--}--%>

<%--/* 일정 */--%>
<%--$(document).ready(function(){--%>
<%--	setCalenDar('curM');	--%>
<%--});--%>

<%--function setCalenDar(actM){--%>
<%--	--%>
<%--	var date = new Date(); --%>
<%--	var y = $("#sYear").val();--%>
<%--	var m = $("#sMonth").val();--%>
<%--	var d = date.getDate();--%>
<%--	--%>
<%--	if (actM == 'preM') {--%>
<%--		m--;--%>
<%--		--%>
<%--		if (m < 1) {--%>
<%--			y--;--%>
<%--			m = 12;--%>
<%--		}--%>
<%--		--%>
<%--		var full_m = m;--%>
<%--		--%>
<%--		if (full_m < 10) {--%>
<%--			full_m = "0" + m;--%>
<%--		}--%>
<%--		--%>
<%--		var thisDate = "" + y + "<em>" + full_m + "</em>";--%>
<%--		$(".thisDate").html(thisDate)--%>
<%--		$(".calenderBox .calTbody tr td").remove();--%>
<%--	}--%>
<%--	--%>
<%--	if (actM == 'nextM') {--%>
<%--		m++;--%>
<%--		--%>
<%--		if (m > 12) {--%>
<%--			y++;--%>
<%--			m = 1;--%>
<%--		}--%>
<%--		--%>
<%--		var full_m = m;--%>
<%--		--%>
<%--		if (full_m < 10) {--%>
<%--			full_m = "0" + m;--%>
<%--		}		--%>
<%--		--%>
<%--		var thisDate = "" + y + "<em>" + full_m + "</em>";--%>
<%--		$(".thisDate").html(thisDate)--%>
<%--		$(".calenderBox .calTbody tr td").remove();--%>
<%--	}--%>
<%--	--%>
<%--	if (actM != "curM") {--%>
<%--		$("#sYear").val(y);--%>
<%--		$("#sMonth").val(m);--%>
<%--		--%>
<%--		var preVal = m-1;--%>
<%--		var nextVal = m+1;--%>
<%--		--%>
<%--		if (preVal < 10) {--%>
<%--			if (preVal < 1) {--%>
<%--				preVal = 12;--%>
<%--			} else {--%>
<%--				preVal = "0" + preVal;--%>
<%--			}--%>
<%--		}--%>
<%--		--%>
<%--		if (nextVal < 10) {--%>
<%--			nextVal = "0" + nextVal;--%>
<%--		} else {--%>
<%--			if (nextVal == 13) {--%>
<%--				nextVal = "01";--%>
<%--			}													--%>
<%--		}--%>
<%--		--%>
<%--		$(".preM").text(preVal);--%>
<%--		$(".nextM").text(nextVal);--%>
<%--	}--%>
<%--	--%>
<%--	var theDate = new Date(y,m-1,1);--%>
<%--	var theDay = theDate.getDay();--%>
<%--	var last = [0,31,28,31,30,31,30,31,31,30,31,30,31];--%>
<%--	--%>
<%--&lt;%&ndash;	--%>
<%--		// 4년마다 있는 윤년을 계산합니다.(100년||400년 주기는 제외)--%>
<%--		if (y%4 && y%100 !=0 || y%400==0) {--%>
<%--		     last[1] = 29;--%>
<%--		}--%>
<%--&ndash;%&gt;--%>
<%--	    --%>
<%--	var lastDate = last[m];--%>

<%--	var row = Math.ceil((theDay+lastDate)/7);--%>
<%--	var calendar = "";--%>
<%--	var dNum = 1;--%>
<%--	var realDate = date.getFullYear() + "/" + (date.getMonth() + 1);--%>
<%--	var selDate = y + "/" + m;--%>
<%--	--%>
<%--	for (var i = 1; i <= row; i++) {--%>
<%--	    calendar += "<tr>";--%>
<%--	    --%>
<%--	    for (var k= 1; k <= 7; k++) {--%>
<%--	        if(i == 1 && k <= theDay || dNum > lastDate) {--%>
<%--	            calendar += "<td> &nbsp; </td>";--%>
<%--	        } else {--%>
<%--				var addClass = "";--%>
<%--				--%>
<%--				if (realDate == selDate && dNum == d) {--%>
<%--					addClass = "type02";--%>
<%--				}--%>
<%--				--%>
<%--				if (k == 1) {--%>
<%--					addClass = "sun";--%>
<%--				}--%>
<%--				--%>
<%--				if (k == 7) {--%>
<%--					addClass = "sat";--%>
<%--				}--%>
<%--				--%>
<%--	            calendar += "<td id = 'dateTd"+dNum+"' class='"+addClass+"'><a id ='aChkDate"+dNum+"' class=''>" + dNum + "</a></td>";--%>
<%--	            dNum++;--%>
<%--	        }--%>
<%--	    }--%>
<%--	    --%>
<%--	    calendar += "</tr>";--%>
<%--	}--%>
<%--	--%>
<%--	$(".calenderBox .calTbody").append(calendar);--%>
<%--	selectScheduleInfo(actM,y,m);--%>
<%--}--%>

<%--	// 일정 조회--%>
<%--	function selectScheduleInfo(paraAct,paraY,paraM){--%>
<%--		var sys_id    = "${sysId}";--%>
<%--		var srchDate  = "";--%>
<%--	    var dayArr    = "";--%>
<%--	    var dayArrObj = "";--%>
<%--		if (paraAct == "curM") {--%>
<%--			var monVal = $("#sMonth").val();--%>
<%--			srchDate = $("#sYear").val() + "/" + (monVal < 10 ? "0" + monVal : monVal);--%>
<%--		} else {--%>
<%--			srchDate = paraY + "/" + (paraM < 10 ? "0" + paraM : paraM);--%>
<%--		}--%>
<%--		--%>
<%--		$.ajax({--%>
<%--			type     : "post",--%>
<%--			datatype : "json",--%>
<%--			data     : {--%>
<%--				srchDate : srchDate,--%>
<%--				sysId : sys_id, --%>
<%--				orderCheck : "Y" },--%>
<%--			url      : "/${ctx}/sv/schdulView/selectSimpleSvList.do",--%>
<%--			success  : function(data){--%>
<%--			   	var schList = JSON.parse(data);--%>
<%--			   	var viewScList  = "";--%>
<%--			   	--%>
<%--			   	for (var i = 0 ; i < schList.length ; i++){--%>
<%--					if(schList[i].bgnde != ""){--%>
<%--						dayArr += schList[i].bgnde.substring(8,10)+"/";--%>
<%--				   		var tempVar = schList[i].bgnde.substring(5,10);--%>
<%--				       	viewScList += "<li><span class='date'>"+tempVar+"</span>"+schList[i].schdulTitle+"</li>"--%>
<%--					}--%>
<%--					--%>
<%--				}--%>
<%--			   	--%>
<%--			   	$(".lstSchedule").html(viewScList);    --%>
<%--			   	--%>
<%--			   	dayArrObj = dayArr.split("/");--%>
<%--			   	--%>
<%--			   	for (var j = 0 ; j < dayArrObj.length ; j ++){--%>
<%--			    	var dateObj = parseInt(dayArrObj[j]);--%>
<%--			  	 	if( dateObj == $("#dateTd"+dateObj).text() ){--%>
<%--			  		 	$("#aChkDate"+dateObj).attr("class","check");--%>
<%--			  		 	$("#aChkDate"+dateObj).attr("href","javascript:");--%>
<%--			  		 	var paraDate = srchDate + "/" + (dateObj < 10 ? "0" + dateObj : dateObj);--%>
<%--			  		 	$("#aChkDate"+dateObj).attr("onClick","javascript:selectScheduleDay('"+paraDate+"',this)");--%>
<%--			  		 	$("#dateTd"+dateObj).addClass("type01");--%>
<%--			  		}--%>
<%--			   	}							   	--%>
<%--	   		},--%>
<%--	   		error    : function(data){--%>
<%--	   			console.log("관리자에게 문의해주세요.");	--%>
<%--	   		}--%>
<%--		});--%>
<%--	}	--%>
<%--	--%>
<%--	function selectScheduleDay(paraDate,el){--%>
<%--		var sys_id    = "${sysId}";--%>
<%--		--%>
<%--		$.ajax({--%>
<%--			type     : "POST",--%>
<%--			datatype : "json",--%>
<%--			data     : {--%>
<%--				paraDate : paraDate,--%>
<%--				sysId : sys_id },--%>
<%--			url      : "/${ctx}/sv/schdulView/selectSimpleSvList.do",--%>
<%--			success  : function(data){--%>
<%--			   	var schList = JSON.parse(data);--%>
<%--			   	var viewScList  = "";--%>
<%--			   	--%>
<%--			   	for (var i = 0 ; i < schList.length ; i++){--%>
<%--					if(schList[i].bgnde != ""){--%>
<%--				   		var tempVar = schList[i].bgnde.substring(5,10);--%>
<%--				       	viewScList += "<li><span class='date'>"+tempVar+"</span>"+schList[i].schdulTitle+"</li>"--%>
<%--					}--%>
<%--					--%>
<%--				}--%>
<%--			   	--%>
<%--			   	$(".lstSchedule").html(viewScList);    --%>
<%--	   		},--%>
<%--	   		error    : function(data){--%>
<%--	   			console.log("관리자에게 문의해주세요.");	--%>
<%--	   		}--%>
<%--		});--%>
<%--	}--%>
<%--/* 일정 */--%>

<%--$(function(){--%>
<%--	for (var i = 0; i < 3; i++) {--%>
<%--		var rmTag = $(".ntt_cn_view" + i).text();--%>
<%--		rmTag = rmTag.replace(/<br\/>/ig, "\n"); --%>
<%--		rmTag = rmTag.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");--%>
<%--		$(".ntt_cn_view" + i).html(rmTag);--%>
<%--	}	--%>
<%--});--%>
</script>