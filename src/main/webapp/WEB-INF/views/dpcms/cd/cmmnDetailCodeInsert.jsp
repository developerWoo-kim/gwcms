<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	$(function(){

		// 코드 중복 체크
		$('.codeDupChk').click(function(){
			if($("#commonDetailCode").valueEmpty()) {
	            alert("공통상세코드를 입력해주세요.");
	            $("#commonDetailCode").focus();
	            return false;
	        }

			//공백체크
			if(!$("#commonDetailCode").valueEmpty()) {
				var cmmnDetailCode_val = $.trim($("#commonDetailCode").val());
				$("#commonDetailCode").val(cmmnDetailCode_val);
			}
			var commonCode = $('#commonCode option:selected').val();
			var commonDetailCode = $('#commonDetailCode').val();
			$.ajax({
				type: "GET",
				url: "/admin/cd/commonDetailCode/"+commonCode+"/"+commonDetailCode+"/code-duplicationCheck",
				dataType : "json",
				success:function(result){
					alert(result.message);
					if(result.status == 'success'){
						$('#cmmnCodeUseYn').val('Y');
					}else{
						$('#cmmnCodeUseYn').val('N');
					}
				},
				error : function(result){   
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				}					
			});
		});
		
		$('.codeNmDupChk').click(function(){
			if($("#commonDetailCodeName").valueEmpty()) {
	            alert("공통상세코드명을 입력해주세요.");
	            $("#commonDetailCodeName").focus();
	            return false;
	        }

			if(!$("#commonDetailCodeName").valueEmpty()) {
				var cmmnDetailCodeNm_val = $.trim($("#commonDetailCodeName").val());
				$("#commonDetailCodeName").val(cmmnDetailCodeNm_val);
			}

			var commonCode = $('#commonCode option:selected').val();
			var commonDetailCodeName = $('#commonDetailCodeName').val();
			$.ajax({
				type: "GET",
				url: "/admin/cd/commonDetailCode/"+commonCode+"/"+commonDetailCodeName+"/name-duplicationCheck",
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
		
		$('.cmmnDetailcodeInsertInfo').click(function(){
			//상세코드 체크
			if($("#commonDetailCode").valueEmpty()) {
	            alert("공통상세코드를 입력해주세요.");
	            $("#commonDetailCode").focus();
	            return false;
	        }
			if($("#cmmnCodeUseYn").val() == 'N') {
	            alert("공통상세코드 중복확인을 해주세요.");
	            $(".codeDupChk").focus();
	            return false;
	        }
			
			// // 회원구분은 숫자만
			// var codeStr = $("#commonDetailCode").val();
			// var check = /^[0-9]+$/;
			// if (!check.test(codeStr) && ($("select[name=commonCode]").val() == "memberType")) {
			// 	alert("회원구분의 공통상세코드는 숫자만 입력가능합니다.");
			// 	return false;
			// }
			
			//상세코드명 체크
			if($("#commonDetailCodeName").valueEmpty()) {
	            alert("공통상세코드명을 입력해주세요.");
	            $("#cmmnCodeNm").focus();
	            return false;
	        }
			if($("#cmmnDetailCodeNmUseYn").val() == 'N') {
	            alert("공통상세코드명 중복확인을 해주세요.");
	            $(".codeNmDupChk").focus();
	            return false;
	        }
			
			//정렬순서 체크
			if($("#sortOrder").val() == '') {
	            alert("정렬순서를 입력해주세요");
	            $("#sortOrder").focus();
	            return false;
	        }
			
			if(confirm("공통상세코드를 등록하시겠습니까?")){
				var data = $("#cdForm").serialize();
				
				$.ajax({
					type: "POST",
					url: "/admin/cd/commonDetailCode",
					dataType : "json",
					data : data,
					success:function(result){
						alert(result.message);
						if(result.status == "success") {
							var commonCode = $('#commonCode option:selected').val();
							$('#searchForm').attr('action','/admin/cd/commonDetailCode/list')
									.append($('<input/>', {type: 'hidden', name: 'commonCode', value:commonCode }))
									.attr('method', 'GET').submit();
						}

					},
					error:function(data) {   
						alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
					}
							
				});
			}
		});
		
		$('#commonDetailCode').change(function(){
			$('#cmmnCodeUseYn').val('N');
		});
		
		$('#commonDetailCodeName').change(function(){
			$('#cmmnCodeNmUseYn').val('N');
		});

		// 목록으로
		$('.cmmnDetailcodeInsertCancel').click(function(){
			var commonCode = $('#commonCode option:selected').val();
			$('#searchForm').attr('action','/admin/cd/commonDetailCode/list')
					.append($('<input/>', {type: 'hidden', name: 'commonCode', value:commonCode }))
					.attr('method', 'GET').submit();
		});
	})
</script>

<form id="searchForm" method="GET" >
	<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
	<input type="hidden" name="size" value="<c:out value='${condition.size}'/>">
	<input type="hidden" name="page" value="${condition.page}" />
	<input type="hidden" name="searchText" value="<c:out value='${condition.searchText}'/>">
</form>
<form id="cdForm" name="cdForm" method="post">
	<input type="hidden" id="cmmnCodeUseYn" name="cmmnCodeUseYn" value="N" />
	<input type="hidden" id="cmmnCodeNmUseYn" name="cmmnCodeNmUseYn" value="N" />
	
	<h4 class="tit1">공통상세코드 신규등록</h4>
	<h6 class="tit2 mgt20">공통상세코드 정보</h6>
	<div class="bbs_WriteA">
		<table>
			<colgroup>
				<col style="width: 20%;">
				<col style="width: 80%;">
			</colgroup>
			<tbody>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>공통코드</th>
					<td scope="col">
						<span class="col-sm-2 form-select">
							<select id="commonCode" name="commonCode" title="공통코드">
								<c:forEach var="commonCode" items="${commonCodeList }">
									<option value="<c:out value="${commonCode.commonCode }"/>" title="<c:out value="${commonCode.commonCodeName }"/>"
										<c:if test="${condition.commonCode eq commonCode.commonCode }">selected</c:if> ><c:out value="${commonCode.commonCodeName }"/>
									</option>
								</c:forEach>
							</select>
						</span>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>공통상세코드</th>
					<td scope="col">
						<input type="text" id="commonDetailCode" name="commonDetailCode" class="col-sm-2" title="공통상세코드" maxlength="60" />
						<button class="btn_gr mini codeDupChk" type="button">중복확인</button>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>공통상세코드명</th>
					<td scope="col">
						<input type="text" id="commonDetailCodeName" name="commonDetailCodeName" class="col-sm-2" title="공통상세코드명" maxlength="80" />
						<button class="btn_gr mini codeNmDupChk" type="button">중복확인</button>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>사용여부</th>
					<td scope="col">
						<span class="col-sm-2 form-select">
							<select name="useAt" id="useAt" title="사용여부">
								<option title="사용" title="사용" value="Y">사용</option>
								<option title="미사용" title="미사용" value="N">미사용</option>
							</select>
						</span>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac">공통상세코드설명</th>
					<td scope="col">
						<input type="text" id="commonDetailCodeDescription" name="commonDetailCodeDescription" class="col-sm-6" title="공통상세코드설명" maxlength="330" />
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>정렬순서</th>
					<td scope="col">
						<input type="text" id="sortOrder" name="sortOrder" class="col-sm-6 onylNum" title="정렬순서" maxlength="3"/>
					</td>
				
				</tr>
			</tbody>
		</table>
	</div>
</form>
<p class="btns ar">
	<button class="btn_bl cmmnDetailcodeInsertInfo" type="button">등록</button>
	<button class="btn_gr cmmnDetailcodeInsertCancel" type="button">취소</button>
</p>  
