<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="/css/ap/st/Nwagon.css" type="text/css">
<link href="/css/com/jquery/jquery-confirm.min.css" rel="stylesheet">
<style>
	/* 이미지 삽입 부분 디자인 */
	.image-row {
		text-align: center; /* 가운데 정렬 */
	}

	.image-container {
		width: 100px; /* 이미지 너비 조절 */
		height: 100px; /* 이미지 높이 조절 */
		/*background-image: url('/upload/c5aa10b1-7afe-4618-a10a-63b3b35165b51698222701191.png'); !* 이미지 경로 설정 *!*/
		background-size: cover; /* 이미지 크기를 컨테이너에 맞게 조절 */
		background-position: center; /* 이미지 가운데 정렬 */
		border: 1px solid #ccc; /* 테두리 추가 */
	}
</style>
<script src="/js/jquery-confirm.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	});
</script>

<!-- 셀렉트table -->
<h4 class="tit1">설문 상세</h4>

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
					<th scope="row">설문 결과</th>
					<td>
<%--						<a href="/<c:out value='${ctx}'/>/qr/qrspns/downloadResult.do?qestnrSn=<c:out value='${qrpMap.qestnrSn}' />&sysId=<c:out value='${qrpMap.sysId}' />&qustnrSn=<c:out value='${qrpMap.qustnrSn}' />" class="btn_blL mini">결과 다운로드</a>--%>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<!-- 결과그래프 -->
	<br><br>
	<h4 class="tit1">설문지</h4>
	<p class="mgt20"></p>
	<c:forEach var="item" items="${survey.surveyItemList}" varStatus="status">
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
			<c:if test="${!empty item.fileMaster}">
				<c:forEach var="fileList" items="${item.fileMaster.fileList}">
					<tr class="image-row">
						<td colspan="2">
							<img src="<c:out value="${fileList.path}"/>" onerror="this.src='/images/co/na/noImg.gif'" alt="이미지" class="image-container">
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${item.surveyItemType == 'SC'}">
				<c:forEach var="itemDetail" items="${item.surveyItemDetailList}">
					<tr>
						<td class="font_blue"><c:out value="${itemDetail.itemDetailName}"/></td>
						<td nowrap="">
							<input type="radio" name="qSingle<c:out value="${item.surveyItemId}"/>" class="qSingle" value="N" />
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${item.surveyItemType == 'MC'}">
				<c:forEach var="itemDetail" items="${item.surveyItemDetailList}">
					<tr>
						<td class="font_blue"><c:out value="${itemDetail.itemDetailName}"/></td>
						<td nowrap="">
							<input type="checkbox" class="qMulti" value="" />
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${item.surveyItemType == 'LS'}">
				<tr>
					<td colspan="2">
						<c:out value="${item.preferenceTypeStartText}"/>&nbsp;&nbsp;
						<c:forEach var="itemDetail" items="${item.surveyItemDetailList}">
						<input type="radio" id="preference<c:out value="${itemDetail.itemDetailName}"/>" name="preference<c:out value="${item.surveyItemId}"/>" class="qSingle" value="N" />
						<label for="preference<c:out value="${itemDetail.itemDetailName}"/>"><c:out value="${itemDetail.itemDetailName}"/></label>
						</c:forEach>
						<c:out value="${item.preferenceTypeEndText}"/>
					</td>
				</tr>
			</c:if>
			</tbody>
		</table>
	</div>
	<br>
	</c:forEach>
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