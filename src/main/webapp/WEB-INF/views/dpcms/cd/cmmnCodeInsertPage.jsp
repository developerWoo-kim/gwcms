<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	$(function(){
		// 코드 중복 체크
		$('.codeDupChk').click(function(){
			if($("#commonCode").valueEmpty()) {
	            alert("공통코드를 입력해주세요.");
	            $("#commonCode").focus();
	            return false;
	        }
			//공백체크
			if(!$("#commonCode").valueEmpty()) {
	            var cmmnCode_val = $.trim($("#commonCode").val());
	            $("#commonCode").val(cmmnCode_val);
	        }
			$.ajax({
				type: "GET",
				url: "/admin/cd/commonCode/" + $("#commonCode").val() + "/code-duplicationCheck",
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
		
		//등록
		$('.cmmncodeInsertInfo').click(function(){
			if($("#commonCode").valueEmpty()) {
	            alert("공통코드를 입력해주세요.");
	            $("#commonCode").focus();
	            return false;
	        }
			if($("#cmmnCodeUseYn").val() == 'N') {
	            alert("공통코드 중복확인을 해주세요.");
	            $(".codeDupChk").focus();
	            return false;
	        }
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
			if(!$("#commonCode").valueEmpty()) {
	            var cmmnCode_val = $.trim($("#commonCode").val());
	            $("#commonCode").val(cmmnCode_val);
	        }
			if(!$("#commonCodeName").valueEmpty()) {
	            var cmmnCodeNm_val = $.trim($("#commonCodeName").val());
	            $("#commonCodeName").val(cmmnCodeNm_val);
	        }
			                   
			if(confirm("공통코드를 등록하시겠습니까?")){
				var data = $("#cdForm").serialize();
				
				$.ajax({
					type: "POST",
					url: "/admin/cd/commonCode",
					dataType : "json",
					data : data,
					success:function(result){
						alert(result.message);
						if(result.status == "success") {
							location.href="/admin/cd/commonCode/list";
						}
					},
					error:function(data) {   
						alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
					}
							
				});
			}
		});
		
		$('#commonCode').change(function(){
			$('#cmmnCodeUseYn').val('N');
		});
		
		$('#commonCodeName').change(function(){
			$('#cmmnCodeNmUseYn').val('N');
		});
		
		//취소
		$('.cmmncodeInsertCancel').click(function(){
			$('#searchForm').attr('action','/admin/cd/commonCode/list')
					.attr('method', 'GET').submit();
		});
	})
</script>
<form id="searchForm" method="GET" >
	<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
	<input type="hidden" id="size" name="size" value="<c:out value='${condition.size}'/>">
	<input type="hidden" id="page" name="page" value="${condition.page}" />
	<input type="hidden" id="searchText" name="searchText" value="<c:out value='${condition.searchText}'/>">
</form>

<form id="cdForm" name="cdForm" method="POST" >
	<input type="hidden" id="cmmnCodeUseYn" name="cmmnCodeUseYn" value="N" />
	<input type="hidden" id="cmmnCodeNmUseYn" name="cmmnCodeNmUseYn" value="N" />
	
	<h4 class="tit1">공통코드 신규등록</h4>
	<h6 class="tit2 mgt20">공통코드 정보</h6>
	<div class="bbs_WriteA">
		<table>
			<colgroup>
				<col style="width:20%;">
				<col style="width:80%;">
			</colgroup>
			<tbody>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>공통코드</th>
					<td scope="col">
						<input type="text" id="commonCode" name="commonCode" class="col-sm-2" title="공통코드" maxlength="60"/>
						<button class="btn_gr mini codeDupChk" type="button">중복확인</button>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>공통코드명</th>
					<td scope="col">
						<input type="text" id="commonCodeName" name="commonCodeName" class="col-sm-2" title="공통코드명"  maxlength="80"/>
						<button class="btn_gr mini codeNmDupChk" type="button">중복확인</button>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>사용여부</th>
					<td scope="col">
						<span class="col-sm-2 form-select">
							<select name="useAt" id="useAt" title="사용여부">
								<option title="사용" value="Y">사용</option>
								<option title="미사용" value="N">미사용</option>
							</select>
						</span>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac">공통코드설명</th>
					<td scope="col">
						<input type="text" id="commonCodeDescription" name="commonCodeDescription" class="col-sm-6" title="공통코드설명"  maxlength="330"/>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
<p class="btns ar">
	<button class="btn_bl cmmncodeInsertInfo" type="button">등록</button>
	<button class="btn_gr cmmncodeInsertCancel" type="button">취소</button>
</p>

