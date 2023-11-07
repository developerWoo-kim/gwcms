<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="/css/ap/st/Nwagon.css" type="text/css">
<style>
	.vote_box .box .vote_ques {margin-top:10px; overflow:hidden;}
	.vote_box .box .vote_ques li {position:relative; padding:15px 0; border-bottom:1px dashed #b2b7c7;}
	.vote_box .box .vote_ques li .ques {position:relative; min-height:20px; padding:5px 80px 5px 40px;}
	.vote_box .box .vote_ques li .num {position:absolute; top:0; left:0; display:block; width:30px; height:30px; line-height:30px; color:#fff; font-family:'NanumBold'; text-align:center; border-radius:15px; background:#757e9b;}
</style>
<script type="text/javascript">
	$(document).ready(function(){
	});
</script>
<!-- table -->
<h4 class="tit1">설문 결과</h4>
	<div class="bbs_WriteA">
		<table class="basic_tb">
			<caption>설문 결과를 그래프 형태로 확인할 수 있습니다.</caption>
			<colgroup>
				<col style="width: 15%;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row"><label>설문 제목</label></th>
					<td><c:out value="${result.surveyTitle}" escapeXml="false"/></td>
				</tr>
				<tr>
					<th scope="row"><label>설문 내용</label></th>
					<td><c:out value="${result.surveyContents}" escapeXml="false"/></td>
				</tr>
				<tr>
					<th scope="row"><label>참여 인원</label></th>
					<td><c:out value="${result.memberCount}"/>명</td>
				</tr>
				<tr>
					<th scope="row">설문결과 다운로드</th>
					<td>
<%--						<a href="/<c:out value='${ctx}'/>/qr/qrspns/downloadResult.do?qestnrSn=<c:out value='${qrpMap.qestnrSn}' />&sysId=<c:out value='${qrpMap.sysId}' />&qustnrSn=<c:out value='${qrpMap.qustnrSn}' />" class="btn_blL mini">결과 다운로드</a>--%>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<!-- 결과그래프 -->
	<br><br>
	<div class="tab_st1">
		<ul>
			<li><a href="/admin/sv/survey/resultPage-table"><span>결과표</span></a></li>
			<li class="on"><a href="javascript:" title="선택된 페이지"><span>결과 그래프</span></a></li>
		</ul>
	</div>
	<h4 class="tit1">결과 그래프</h4>
	<div class="vote_box">
		<div class="box">
			<ul class="vote_ques">
				<c:forEach var="item" items="${result.pieChartResultList}" varStatus="status">
					<li>
						<p class="ques"><span class="num">문항</span><c:out value="${item.surveyItemTitle}"/></p>
						<div class="graphBox" style="height:85%;"><canvas id="itemDetailId_<c:out value="${item.surveyItemId}"/>"></canvas></div>
						<script type="text/javascript">
							var labelsArray = [<c:forEach items="${item.labels}" var="label" varStatus="status">'<c:out value="${label}"/>'${!status.last ? ',' : ''}</c:forEach>];
							var chartData = {
								data: [<c:forEach items="${item.chartData.data}" var="data" varStatus="status">${data}${!status.last ? ',' : ''}</c:forEach>],
								backgroundColor: [<c:forEach items="${item.chartData.backgroundColor}" var="color" varStatus="status">'${color}'${!status.last ? ',' : ''}</c:forEach>]
							};
							var ctx = document.getElementById("itemDetailId_${item.surveyItemId}");
							var chart = new Chart(ctx, {
								type: 'doughnut',
								data: {
									labels: labelsArray,
									datasets: [chartData],
								},
								options : {
									maintainAspectRatio : false,
									legend : {
										position : 'right',
									},
								},
							});
						</script>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
<p class="btns ar">
	<button id="cancelQusBtn" class="btn_gr" type="button">목록</button>
</p>