<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="/css/ap/st/Nwagon.css" type="text/css">
<link href="/css/com/jquery/jquery-confirm.min.css" rel="stylesheet">
<script src="/js/jquery-confirm.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	});
</script>

<!-- 셀렉트table -->
<form method="post" id="resultQustnrForm" name="resultQustnrForm">
	<input type = "hidden" id ="sysId" name="sysId" value ="<c:out value="${qrpMap.sysId}"/>"> 
	<input type = "hidden" id ="qustnrSn" name="qustnrSn" value ="<c:out value="${qrpMap.qustnrSn}"/>"> 

<h4 class="tit1">설문 결과</h4>

	<div class="bbs_WriteA">
		<table class="basic_tb">
			<caption>설문 제목, 내용을 확인할 수 있습니다.</caption>
			<colgroup>
				<col style="width: 15%;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row"><label>설문 제목</label></th>
					<td><c:out value="${survey.surveyTitle}" escapeXml="false"/></td>
				</tr>
				<tr>
					<th scope="row"><label>설문 내용</label></th>
					<td><c:out value="" escapeXml="false"/></td>
				</tr>
				<tr>
					<th scope="row"><label>참여인원</label></th>
					<td><c:out value="${survey.memberCount}"/>명</td>
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
			<li class="on"><a href="javascript:" title="선택된 페이지"><span>결과표</span></a></li>
			<li><a href="/admin/sv/survey/resultPage-graph"><span>결과 그래프</span></a></li>
		</ul>
	</div>
<%--	<h4 class="tit1">결과 그래프</h4>--%>
	<br>
	<h4 class="tit1">결과표</h4>
	<p class="mgt20"></p>
	<c:forEach var="item" items="${survey.itemList}" varStatus="status">
	<div class="bbs_WriteA">
		<table class="basic_tb">
			<caption>설문 결과 표 입니다.</caption>
			<colgroup>
				<col width="50%">
				<col width="50%">
			</colgroup>
			<tbody>
			<tr>
				<th colspan="2" class="tb_bg al"><c:out value="${item.surveyItemTitle} "/></th>
			</tr>
			<c:forEach var="itemDetail" items="${item.answerDetailList}">
				<c:if test="${item.surveyItemType == 'OE'}">
					<tr>
						<td class="font_blue" colspan="2">
							<a href="javascript:" onclick="viewOpenEndedAnswerList(<c:out value="${itemDetail.itemDetailId} "/>,this)" class="btnTy_blue01">서술형 응답 조회</a>
						</td>
					</tr>
				</c:if>
				<c:if test="${item.surveyItemType == 'SC' || item.surveyItemType == 'MC'}">
					<tr>
						<td class="font_blue"><c:out value="${itemDetail.itemDetailName}"/></td>
						<td><c:out value="${itemDetail.answerCount}"/>명</td>
					</tr>
				</c:if>
				<c:if test="${item.surveyItemType == 'LS'}">
					<tr>
						<td class="font_blue"><c:out value="${itemDetail.itemDetailName}"/></td>
						<td><c:out value="${itemDetail.answerCount}"/>명</td>
					</tr>
				</c:if>
			</c:forEach>

			</tbody>
		</table>
	</div>
	<br>
	</c:forEach>
</form>
<p class="btns ar">
	<button id="cancelQusBtn" class="btn_gr" type="button">목록</button>
</p>

<script type="text/javascript">
		/**
		 * 서술형 응답 내용 조회
		 * @param itemDetailId : 항목 상세 아이디
		 * @param el : 선택 엘리먼트
		 */
		function viewOpenEndedAnswerList(itemDetailId, el){
			   $.ajax({
				   type : "GET",
				   url : "/admin/sv/"+itemDetailId+"/survey-result/open-ended",
				   dataType : "json",
				   success : function(result){
					   $(".answerViewTr"+itemDetailId).remove();
					   if(result.status == "success") {
						   var dataList = result.body;
						   var html = "";
						   html += "<div className='tbl_st_row al'>";
						   html += "	<table>";
						   html += "		<colgroup>";
						   html += "			<col style='width:100%'>";
						   html += "		</colgroup>";
						   html += "		<tbody>";
						   for( var idx=0 ; idx < dataList.length ; idx++){
							   html += "			<tr class=answerViewTr"+itemDetailId+">";
							   html += "				<td>" + dataList[idx].openEndedAnswer + "</td>";
							   html += "			</tr>";
						   }
						   html += "		</tbody>";
						   html += "	</table>";
						   html += "</div>";

						   $.confirm({
							   title : '<h3 class="tit1">서술형 응답 목록<h3>',
							   boxWidth : '50%',
							   useBootstrap : false,
							   content : html,
							   buttons : {
								   close : {
									   text: '닫기',
									   btnClass: 'bbs_Tbtn1 popClose',
									   action : function () {
										   menuInsertClickStatus = "N";
									   }
								   }
							   },
						   })

						   // $(el).closest("tr").after(openEndedAnswerList);
					   }
					},
				    error : function(result){   
						errorMessage(result);
					}					
				 });
			
		}
		//기타내용 닫기
		function closeEtcInfo(itemDetailId,el){
			$(".answerViewTr"+itemDetailId).remove();
		}
	
</script>