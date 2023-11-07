<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	.addQesItm{
		margin-top:10px;
	}
	.qesitmClass{
		margin-top:10px;
	}
	.qiemTitle{
		width:400px;
	}
	.qesitmOrdr{
		width:70px;
	}

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

<form method="post" id="surveyInsertForm" name="surveyInsertForm" enctype="multipart/form-data">
	<h4 class="tit1">설문 등록</h4>
	<div class="bbs_WriteA">
		<table class="basic_tb">
			<caption>설문 등록</caption>
			<colgroup>
				<col style="width: 20%">
				<col style="width: 80%">
			</colgroup>
			<tbody>
				<tr>
					<th class="ac"><span class="ess_itm">*</span>설문 제목</th>
					<td>
						<label for="surveyTitle"></label>
						<input type="text" name="surveyTitle" id="surveyTitle" class="col-sm-12" value="" size="78" maxlength="100" />
					</td>
				</tr>
				<tr>
					<th class="ac">설문 안내</th>
					<td><label for="surveyContent"></label>
						<textarea name="surveyContent" id="surveyContent" rows ="10" class="input_w90"></textarea>
					</td>
				</tr>
				<tr>
					<th class="ac">기간 설정 여부</th>
					<td>
						<ul class="custom-input">
							<li><input type="radio" class="faqChk" name="periodAt" id="periodAt1" value="Y" checked="checked"/><label for="periodAt1">사용</label></li>
							<li><input type="radio" class="faqChk" name="periodAt" id="periodAt2" value="N"/><label for="periodAt2">미사용</label></li>
						</ul>
					</td>
				</tr>
				<tr>
					<th class="ac">기간 설정</th>
					<td>
						<p class="pdChk" style="display:block;">
							<input type="text" name="startDate" id="beginDt" class="col-sm-5" value="" readonly="readonly">
							<span class="col-sm-wave">~</span>
							<input type="text" name="endDate" id="endDt" class="col-sm-5" value="" readonly="readonly">
						</p>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
		
	<div class ="itemList">
	</div>

	<br><br>

	<div class="bbs_srch">
		<fieldset>
			<button type="button" title="저장" class="btnTy_pur02 saveSurvey">저장</button>
			<button type="button" title="문항 추가" class="btnTy_blue01" onclick="addItem()">항목 추가</button>
		</fieldset>
	</div>
</form>
<!-- //셀렉트table -->
<form id="searchForm" method="GET" >
	<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
	<input type="hidden" id="size" name="size" value="<c:out value='${condition.size}'/>">
	<input type="hidden" id="page" name="page" value="${condition.page}" />
	<input type="hidden" id="searchText" name="searchText" value="<c:out value='${condition.searchText}'/>">
</form>

<script type="text/javascript">
	//설문 등록
	$(".saveSurvey").on("click", function(){
		var surveyTitle = $("#surveyTitle").val();

		if (surveyTitle == "") {
			alert("설문지 제목을 입력해주세요.");
			$("#surveyTitle").focus();
			return;
		}

		//문항 체크
		if ($(".itemTb").length == 0) {
			alert("설문 문항을 추가해주세요.");
			return;
		}

		if (!confirm("등록하시겠습니까?")) return;

		// input index 재정렬
		reorderItemIndexes();

		var formData = new FormData($("#surveyInsertForm")[0]);
		$("#surveyInsertForm").ajaxForm({
			url : "/admin/sv/survey",
			method : "POST",
			formData : formData,
			dataType : "json",
			success : function(result) {
				alert(result.message);
				if(result.status == "success") {
					$('#searchForm').attr('action','/admin/sv/survey/manage-list')
							.attr('method', 'GET').submit();
				}
			},
			error : function(result) {
				errorMessage(result);
			}
		}).submit();

	});

	//문항 카운트
	var addItemCount = 0;

	/**
	 * 설문 문항 추가
	 */
	function addItem(){
		addItemCount++;

		var viewList = "";
		viewList += "<h6 class='qesitmClass tit2 mgt20' id='itemTbTitle"+addItemCount+"'>설문 문항&nbsp;&nbsp;<a href='javascript:' class='btnTy_red' onClick='javascript:cancelSurveyItem("+addItemCount+")'>문항삭제</a>&nbsp;&nbsp;<a href='javascript:' class='btnTy_navy' id='addImage"+addItemCount+"' onClick='javascript:addImage("+addItemCount+")'>이미지 추가</a></h6>";
		viewList += "<div class='bbs_WriteA' id='itemDiv"+addItemCount+"'>";
		viewList += "	<table class='detail_tb itemTb' id='itemTb"+addItemCount+"' data-sn="+addItemCount+">";
		viewList += "		<colgroup>";
		viewList += "			<col style='width: 20%'>";
		viewList += "			<col style='width: 80%'>";
		viewList += "		</colgroup>";
		viewList += "		<tbody>";
		viewList += "			<tr>";
		viewList += "				<th class='ac'>필수 여부</th>";
		viewList += "				<td><input type='checkbox' name ='surveyItemList["+(addItemCount-1)+"].essentialAt' id ='essentialAt"+addItemCount+"' value='Y'/>&nbsp;필수여부</td>";
		viewList += "			</tr>";
		viewList += "			<tr>";
		viewList += "				<th class='ac'>문항 제목</th>";
		viewList += "				<td><input type='text' name='surveyItemList["+(addItemCount-1)+"].surveyItemTitle' id ='surveyItemTitle"+addItemCount+"' value='' maxlength='128' class=\"col-sm-12\" /></td>";
		viewList += "			</tr>";
		viewList += "			<tr>";
		viewList += "				<th class='ac'>문항 설명</th>";
		viewList += "				<td><input type='text' name='surveyItemList["+(addItemCount-1)+"].surveyItemContents' id ='surveyItemContents"+addItemCount+"' value='' maxlength='128' class=\"col-sm-12\" /></td>";
		viewList += "			</tr>";
		viewList += "			<tr id='surveyTypeTr"+addItemCount+"'>";
		viewList += "				<th class='ac'>유형</th><td>";
		viewList += "					<input type='radio' name ='surveyItemList["+(addItemCount-1)+"].surveyItemType'  id ='surveyItemType"+addItemCount+"' value='OE'";
		viewList += "					onClick='surveyTypeEvent("+addItemCount+", this)'checked/>&nbsp;서술형&nbsp;&nbsp;&nbsp;";
		viewList += "					<input type='radio' name ='surveyItemList["+(addItemCount-1)+"].surveyItemType'  id ='surveyItemType"+addItemCount+"' value='SC'";
		viewList += "					onClick='surveyTypeEvent("+addItemCount+", this)'/>&nbsp;단일 선택형&nbsp;&nbsp;&nbsp;";
		viewList += "					<input type='radio' name ='surveyItemList["+(addItemCount-1)+"].surveyItemType'  id ='surveyItemType"+addItemCount+"' value='MC'";
		viewList += "					onClick='surveyTypeEvent("+addItemCount+", this)'/>&nbsp;복수 선택형&nbsp;&nbsp;&nbsp;";
		viewList += "					<input type='radio' name ='surveyItemList["+(addItemCount-1)+"].surveyItemType'  id ='surveyItemType"+addItemCount+"' value='LS'";
		viewList += "					onClick='surveyTypeEvent("+addItemCount+", this)'/>&nbsp;선호도형&nbsp;&nbsp;&nbsp;";
		viewList += "			</td></tr>";
		// viewList += "			<tr>";
		// viewList += "				<th class='ac'><span class='ess_itm'>*</span>문항순서</th>";
		// viewList += "				<td><input type='number' name ='qesitmOrdr"+addItemCount+"'  id ='qesitmOrdr"+addItemCount+"' class='qesitmOrdr onylNum' placeholder='예시 : 1'  max=\"20\" min=\"1\"/>&nbsp;&nbsp;문항순서를 입력해주세요.</td>";
		// viewList += "			</tr>";
		// viewList += "			<tr id='itemDetailAddBtnTr"+addItemCount+"'>";
		// viewList += "				<th class='ac'>답변 항목</th>";
		// viewList += "				<td><a href='javascript:' class='btnTy_grn01' id='addQiemBtn' onClick ='javascript:addItemDetail("+addItemCount+")'>답변항목 추가</a></td>";
		// viewList += "			</tr>";
		viewList += "		</tbody>";
		viewList += "	</table>";
		viewList += "</div>";
		$(".itemList").append(viewList);
		$(".itemList").show();
	}

	/**
	 * 문항 취소
	 */
	function cancelSurveyItem(addItemCount) {
		$("#itemTbTitle"+addItemCount).remove();
		$("#itemDiv"+addItemCount).remove();
	}

	/**
	 * 이미지 추가
	 */
	function addImage(addItemCount) {
		var itemTb = $("#itemTb" + addItemCount);
		var existingCheck = itemTb.find('.image-container');

		// 이미지 미리보기를 위한 콜백
		var callback = function (event) {
			var reader = new FileReader();
			reader.onload = function (event) {
				var itemDetailList = "";
				itemDetailList += "<tr id='imageTr"+addItemCount+"' class='image-row'>";
				itemDetailList += "   <td colspan='2'>";
				itemDetailList += "      <img class='image-container' src='"+event.target.result+"'/>";
				itemDetailList += "   </td>";
				itemDetailList += "</tr>";
				$(itemTb).find("tr:first").before(itemDetailList);
			}
			reader.readAsDataURL(event.target.files[0]);

			$("#addImage"+addItemCount).remove();
			var delBtn = "<a href='javascript:' class='btnTy_red' id='delImage"+addItemCount+"' onClick='javascript:delImage("+addItemCount+")'>이미지 삭제</a>";
			$("#itemTbTitle" + addItemCount).append(delBtn);
		}

		// 이미지가 이미 존재하는 경우에만 추가하지 않도록 확인
		if (existingCheck.length === 0) {
			var findFile = fileFinder.find("jpeg,png,jpg", callback)
					.attr("id", "surveyItemList[" + addItemCount + "].file")
					.attr("name", "surveyItemList[" + (addItemCount-1) + "].file")

			$(itemTb).find("tr:first").before(findFile);
		} else {
			alert("이미지는 한개만 등록할 수 있습니다.");
		}
	}

	function delImage(addItemCount) {
		$("#delImage"+addItemCount).remove();
		var addBtn = "<a href='javascript:' class='btnTy_navy' id='addImage"+addItemCount+"' onClick='javascript:addImage("+addItemCount+")'>이미지 추가</a>";
		$("#itemTbTitle" + addItemCount).append(addBtn);
		$("#surveyItemList\\[" + addItemCount + "\\]\\.file").remove();
		$("#imageTr"+addItemCount).remove();
	}

	/**
	 * 설문 유형 클릭 이벤트
	 *
	 * @param addItemCount 문항 카운트
	 * @param elm element
	 */
	function surveyTypeEvent(addItemCount, elm) {
		var surveyType = $(elm).val();

		// 단일 선택형 or 복수 선택형 일 경우
		if(surveyType == "SC" || surveyType == "MC") {
			var existCheck = $("#itemDetailAddBtnTr" + addItemCount).length;
			if(existCheck == 0) {
				createItemDetailAddBtnTr(addItemCount);
			}
		} else {
			$("#itemDetailAddBtnTr"+addItemCount).remove();
			$(".itemDetailTr"+addItemCount).remove();

		}

		// 선호도형 일 경우
		if(surveyType == "LS") {
			var existCheck = $("#preferenceTypeRangeTr" + addItemCount).length;
			if(existCheck == 0) {
				preferenceTypeRangeTr(addItemCount);
			}
		} else {
			$("#preferenceTypeRangeTr"+addItemCount).remove();
		}
	}

	/**
	 * 항목 추가 tr 생성
	 *
	 * @param addItemCount 문항 카운트
	 */
	function createItemDetailAddBtnTr(addItemCount) {
		var itemDetailAddBtnTr = "";
		itemDetailAddBtnTr += " <tr id='itemDetailAddBtnTr"+addItemCount+"'>";
		itemDetailAddBtnTr += "	 <th class='ac'>답변 항목</th>";
		itemDetailAddBtnTr += "    	<td>";
		itemDetailAddBtnTr += "     	<a href='javascript:' class='btnTy_grn01' onClick ='javascript:addItemDetail("+addItemCount+")'>답변항목 추가</a>";
		itemDetailAddBtnTr += "     	<a href='javascript:' class='btnTy_grn01' onClick ='javascript:addEtcItemDetail("+addItemCount+")'>기타 추가</a>";
		itemDetailAddBtnTr += "    	</td>";
		itemDetailAddBtnTr += "</tr>";
		// $('#itemTb'+addItemCount+'> tbody:last').append(itemDetailAddBtnTr);
		$('#surveyTypeTr'+addItemCount).after(itemDetailAddBtnTr);
	}

	/**
	 * 선호도 유형 tr 생성
	 *
	 * @param addItemCount 문항 카운트
	 */
	function preferenceTypeRangeTr(addItemCount) {
		var scoreRangeTr = "";
		scoreRangeTr += " <tr id='preferenceTypeRangeTr"+addItemCount+"'>";
		scoreRangeTr += "	 <th class='ac'>범위 선택</th>";
		scoreRangeTr += "    	<td>";
		scoreRangeTr += "			<input type='text' name='surveyItemList["+(addItemCount-1)+"].preferenceTypeStartText' value='' maxlength='128' placeholder='예시)이용하지 않는다.'/>&nbsp;&nbsp;"
		scoreRangeTr += "			<select name='surveyItemList["+(addItemCount-1)+"].preferenceTypeRange'>";
		scoreRangeTr += "				<option value='5'>5</option>";
		scoreRangeTr += "				<option value='6'>6</option>";
		scoreRangeTr += "				<option value='7'>7</option>";
		scoreRangeTr += "				<option value='8'>8</option>";
		scoreRangeTr += "				<option value='9'>9</option>";
		scoreRangeTr += "				<option value='10'>10</option>";
		scoreRangeTr += "			<select/>&nbsp;&nbsp;"
		scoreRangeTr += "			<input type='text' name='surveyItemList["+(addItemCount-1)+"].preferenceTypeEndText' value='' maxlength='128' placeholder='예시)자주 이용한다.'/>&nbsp;&nbsp;"
		scoreRangeTr += "		</td>";
		scoreRangeTr += "</tr>";
		$('#itemTb'+addItemCount+'> tbody:last').append(scoreRangeTr);
	}

	// 항목 추가
	function addItemDetail(addItemCount){
		// var itemTbVal = $("#itemTb"+addItemCount+" tbody tr").length;
		var surveyItemTypeVal = $("#surveyItemType"+addItemCount+":checked").val();

		var addItemDetailCount = $(".itemDetailTr" + addItemCount).length;

		var itemDetailList = "";
		itemDetailList += " <tr id='itemDetailTr"+addItemCount+"_"+addItemDetailCount+"' class='itemDetailTr itemDetailTr"+addItemCount+"'>";
		itemDetailList += "	 <th class='ac'></th>";
		itemDetailList += "    	<td><input type='text' name='surveyItemList["+(addItemCount-1)+"].itemDetailList["+addItemDetailCount+"].itemDetailName' value='' class='qiemTitle' maxlength='128'/>&nbsp;&nbsp;";
		// itemDetailList += "    	<input type='checkbox' name='qetcAtObj"+addItemCount+"/"+addItemDetailCount+"'  id ='qetcAtObj"+addItemDetailCount+"' onClick ='qetcAtEvnet("+addItemDetailCount+")'  value=''  />&nbsp;기타여부";
		// itemDetailList += "    	<input type='hidden' name='qetcAt"+addItemCount+"/"+addItemDetailCount+"'  id ='qetcAt"+addItemDetailCount+"' value='N'  />&nbsp;&nbsp;";
		itemDetailList += "    	<a href='javascript:' class='btnTy_red' onClick='javascript:cancelItemDetail("+addItemCount+","+addItemDetailCount+")' >취소</a></td>";
		itemDetailList += "</tr>";
		$('#itemTb'+addItemCount+'> tbody:last').append(itemDetailList);
	}

	function addEtcItemDetail(addItemCount) {

	}

	// 항목 취소
	function cancelItemDetail(addItemCount, addItemDetailCount){
		$("#itemDetailTr"+addItemCount +"_"+addItemDetailCount).remove();
	}

	// 항목 순서를 다시 정렬하는 함수
	function reorderItemIndexes() {
		// 모든 항목 테이블에 대해 순회
		$('.itemTb').each(function(itemIndex) {


			$(this).find("input[name^='surveyItemList']").each(function() {
				var newName = $(this).attr("name").replace(/\[\d+\]/, "[" + itemIndex + "]");
				$(this).attr("name", newName);
			});

			$(this).find("input[name*='itemDetailList']").each(function(index) {
				var newName = $(this).attr("name").replace(/(itemDetailList\[\d+\])/, "itemDetailList[" + index + "]");
				$(this).attr("name", newName);
			});

		});
	}


</script>