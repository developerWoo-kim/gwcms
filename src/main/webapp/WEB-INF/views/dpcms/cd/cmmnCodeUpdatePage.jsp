<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	$(function(){

		// 코드명 중복 체크
		$('.codeNmDupChk').click(function(){
			if($("#commonCodeName").valueEmpty()) {
				alert("공통코드명을 입력해주세요.");
				$("#commonCodeName").focus();
				return false;
			}

			if(!$("#commonCodeName").valueEmpty()) {
				var cmmnCodeNm_val = $.trim($("#commonCodeName").val());
				$("#commonCodeName").val(cmmnCodeNm_val);
			}

			$.ajax({
				type: "GET",
				url: "/admin/cd/commonCode/" + $("#commonCodeName").val() + "/name-duplicationCheck",
				dataType : "json",
				success:function(result){
					alert(result.message);

					if(result.status == 'success'){
						$('#cmmnCodeNmUseYn').val('Y');
					}else{
						$('#cmmnCodeNmUseYn').val('N');
					}
				},
				error : function(result){
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				}
			});
		});
		
		$('.cmmncodeUpdateInfo').click(function(){
			if($("#commonCodeName").valueEmpty()) {
	            alert("공통코드명을 입력해주세요.");
	            $("#commonCodeName").focus();
	            return false;
	        }
			if($("#cmmnCodeNmUseYn").val() == 'N') {
	            alert("공통코드명 중복확인을 해주세요.");
	            $(".codeNmDupChk").focus();
	            return false;
	        }
			
			//공백체크
			if(!$("#commonCodeName").valueEmpty()) {
	            var cmmnCodeNm_val = $.trim($("#commonCodeName").val());
	            $("#commonCodeName").val(cmmnCodeNm_val);
	        }
			
			if(confirm("공통코드를 수정하시겠습니까?")){
				var data = $("#cdForm").serialize();
				
				$.ajax({
					type: "PUT",
					url: "/admin/cd/commonCode",
					dataType : "json",
					data:data,
					success:function(result){
						alert(result.message);
						if(result.status == "success") {
							goSearch();
						}
					},
					error:function(result) {
						var obj = result.responseJSON;
						if(typeof obj == "undefined" || obj == null || obj == "") {
							alert("오류가 발생했습니다. 관리자에게 문의해주세요.");
						} else {
							alert(obj.message);
						}
					}
							
				});
			}
		});
		
		$('#commonCodeName').change(function(){
			$('#cmmnCodeNmUseYn').val('N');
		});

		//취소
		$('.cmmncodeUpdateCancel').click(function(){
			goSearch();
		});
	})

	function goSearch() {
		$('#searchForm').attr('action','/admin/cd/commonCode/list')
				.attr('method', 'GET').submit();
	}
</script>

<form id="searchForm" method="GET" >
	<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
	<input type="hidden" name="size" value="<c:out value='${condition.size}'/>" />
	<input type="hidden" name="page" value="<c:out value='${condition.page}'/>" />
	<input type="hidden" name="searchText" value="<c:out value='${condition.searchText}'/>" />
</form>

<form id="cdForm" name="cdForm" method="post" >
	<input type="hidden" id="cmmnCodeNmUseYn" name="cmmnCodeNmUseYn" value="Y" />
	<input type="hidden" id="commonCode" name="commonCode" value="<c:out value="${commonCode.commonCode }"/>" />
	
	<h4 class="tit1">공통코드 수정</h4>
	<h6 class="tit2 mgt20">공통코드 정보</h6>
	<div class="bbs_WriteA">
		<table>
			<colgroup>
				<col style="width:20%;">
				<col style="width:80%;">
			</colgroup>
			<tbody>
				<tr>
					<th scope="col" class="ac">공통코드</th>
					<td scope="col">
						<c:out value="${commonCode.commonCode }"/>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>공통코드명</th>
					<td scope="col">
						<input type="text" id="commonCodeName" name="commonCodeName" class="col-sm-2" title="공통코드명" value="<c:out value="${commonCode.commonCodeName }"/>"  maxlength="80"/>
						<button class="btn_gr mini codeNmDupChk" type="button">중복확인</button>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>사용여부</th>
					<td scope="col">
						<span class="col-sm-2 form-select">
							<select name="useAt" id="useAt" title="사용여부">
								<option title="사용" value="Y" <c:if test="${commonCode.useAt eq 'Y' }">selected</c:if>>사용</option>
								<option title="미사용" value="N" <c:if test="${commonCode.useAt eq 'N' }">selected</c:if>>미사용</option>
							</select>
						</span>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac">공통코드설명</th>
					<td scope="col">
						<input type="text" id="commonCodeDescription" name="commonCodeDescription" class="col-sm-6" title="공통코드설명" value="<c:out value="${commonCode.commonCodeDescription }"/>"  maxlength="330"/>
					</td>
				</tr>
			</tbody>
		</table>     
	</div>
</form>
<p class="btns ar">
	<button class="btn_bl cmmncodeUpdateInfo" type="button">수정</button>
	<button class="btn_gr cmmncodeUpdateCancel" type="button">취소</button>
</p>