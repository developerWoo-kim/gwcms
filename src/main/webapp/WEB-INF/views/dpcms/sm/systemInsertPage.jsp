<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.Pstyle {
	opacity:0;
	display:none;
	position:relative;
	width:auto;
	border:5px solid #fff;
	padding:20px;
	background-color:#fff;
}
</style>
<script type="text/javascript">
	$(document).ready(function(){

		/** 템플릿 조회 */
		$(".selTmplat").on("click", function() {
			$.ajax({
				type : "POST",
				url : "/admin/tm/template/list-view",
				success : function(result){
					$('.tmplatList').html(result);
					$('#tmpltDiv').bPopup({
						modalClose : false,
						opacity : 0.35
						//position:[230, 60]
					});
				},
				error : function(result){
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				}
			});
		})

		/**
		 * 템플릿 조회 닫기
		 */
		$(".sysPclose").click(function(){
			$('#tmpltDiv').bPopup().close();
		});

		/**
		 * 홈페이지 아이디 중복 검사
		 */
		$('.sysIdDupChk').click(function(){

			if($("#systemId").valueEmpty()) {
				alert("홈페이지아이디를 입력해주세요.");
				$("#systemId").focus();
				return false;
			}

			var input_char = /^[a-z|A-Z][a-z|A-Z|0-9|_|-]+$/;

			if(!input_char.test($("#systemId").val())) {
				alert("홈페이지아이디는 영문으로 시작해야하고 영문/숫자/'_' 문자만 가능합니다.");
				return false;
			}

			$.ajax({
				type : "GET",
				url : "/admin/sm/system/"+$("#systemId").val()+"/id-duplicationCheck",
				dataType : "json",
				success : function(result){
					alert(result.message);
					if(result.status == "success") {
						$('#sysIdUseYn').val('Y');
					} else {
						$('#sysIdUseYn').val('M');
					}
				},
				error : function(result){
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				}
			});
		});

		/**
		 * 홈페이지 명 중복검사
		 */
		$('.sysNmDupChk').click(function(){

			if($("#systemName").valueEmpty()) {
				alert("홈페이지명을 입력해주세요.");
				$("#systemName").focus();
				return false;
			}

			var input_char = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣][a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|0-9]+$/;

			if(!input_char.test($("#systemName").val())) {
				alert("홈페이지명은 한글/영문으로 시작해야하고 한글/영문/숫자만 가능하며 공백은 포함할수 없습니다.");
				return false;
			}

			$.ajax({
				type : "GET",
				url : "/admin/sm/system/"+$("#systemName").val()+"/nm-duplicationCheck",
				dataType : "json",
				success : function(result){
					alert(result.message);
					if(result.status == "success") {
						$('#sysNmUseYn').val('Y');
					} else {
						$('#sysNmUseYn').val('N');
					}
				},
				error : function(result){
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				}
			});
		});

		/**
		 * 홈페이지 등록
		 */
		$(".sysInsert").click(function() {
			if($("#systemId").valueEmpty()) {
				alert("홈페이지아이디를 입력해주세요.");
				$("#systemId").focus();
				return false;
			}
			var input_char = /^[a-z|A-Z][a-z|A-Z|0-9|_|-]+$/;
			if(!input_char.test($("#systemId").val())) {
				alert("홈페이지아이디는 영문으로 시작해야하고 숫자나 '_'/'-'문자만 가능합니다.");
				return false;
			}
			if($("#sysIdUseYn").val() == "N") {
				alert("홈페이지아이디 중복확인을 해주세요.");
				$("#sysIdDupChkBtn").focus();
				return false;
			}
			if($("#systemName").valueEmpty()) {
				alert("홈페이지명을 입력해주세요.");
				$("#systemName").focus();
				return false;
			}

			if($("#sysNmUseYn").val() == "N") {
				alert("홈페이지명 중복확인을 해주세요.");
				$("#sysNmDupChkBtn").focus();
				return false;
			}
			if($("#templateId").valueEmpty()) {
				alert("템플릿을 선택해주세요.");
				$("#selTmplatBtn").focus();
				return false;
			}

			if(!confirm("홈페이지를 등록하시겠습니까?")){
				return false;
			}

			loadingStart();

			var data = $("#sysInsertForm").serialize();

			$.ajax({
				type: "POST",
				datatype:"json",
				data: data,
				url: "/admin/sm/system",
				success:function(result){
					alert(result.message);
					if(result.status == "success") {
						goSearch();
					}
				},
				error : function(result){
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				}
			});
		})

		/** 취소 */
		$(document).on('click','.sysCancel',function(){
			goSearch();
		});
	});

	function goSearch() {
		$('#searchForm').attr('action','/admin/sm/system/list')
				.attr('method', 'GET').submit();
	}
</script>

<form id="searchForm" name="searchForm" method="GET" >
	<input type="hidden" id="size" name="size" value="<c:out value='${condition.size}'/>">
	<input type="hidden" id="page" name="page" value="${condition.page}" />
	<input type="hidden" id="searchText" name="searchText" value="<c:out value='${condition.searchText}'/>">
</form>

<form id="sysInsertForm" name="sysInsertForm" method="post">
	<input type="hidden" id="sysIdUseYn" name="sysIdUseYn" value="N" />
	<input type="hidden" id="sysNmUseYn" name="sysNmUseYn" value="N" />
	<input type="hidden" id="templateId" name="templateId" />
	<input type="hidden" id="templateType" name="templateType" />
	<input type="hidden" name="systemStatus" value="S" />

	<!-- 홈페이지 관리 -->
	<h4 class="tit1">홈페이지 등록</h4>
	<div class="box_st1 mgb5">
		<p class="ac">홈페이지의 정보를 입력하여 홈페이지를 등록합니다.</p>
	</div>
	<h6 class="tit2 mgt20">기본 정보</h6>
	<!-- 홈페이지 정보 -->
	<div class="bbs_WriteA">
		<table>
			<colgroup>
					<col style="width: 15%;">
					<col style="width: 35%;">
					<col style="width: 15%;">
					<col style="width: 35%;">
			</colgroup>
			<tbody>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>홈페이지 아이디</th>
					<td scope="col">
						<input type="text" id="systemId" name="systemId" class="col-sm-8" maxlength="20"/>
						<button class="btnTy_gray01 sysIdDupChk" id="sysIdDupChkBtn" type="button">중복확인</button>
					</td>
					<th scope="col" class="ac"><span class="ess_itm">*</span>홈페이지 명</th>
					<td scope="col"><input type="text" id="systemName" name="systemName" class="col-sm-8" maxlength="20" />
						<button class="btnTy_gray01 sysNmDupChk" id="sysNmDupChkBtn" type="button">중복확인</button>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><span class="ess_itm">*</span>홈페이지 타입</th>
					<td scope="col">
						<span class="col-sm-8 form-select">
							<select name="systemType" id="systemType" title="홈페이지 타입을 선택해 주세요.">
								<option value="">홈페이지 타입을 선택해주세요.</option>
							<c:forEach var="systemType" items="${systemTypeList}">
							 	<option value="<c:out value="${systemType.id.commonDetailCode }"/>" title="<c:out value="${systemType.commonDetailCodeName }"/>">
						     		<c:out value="${systemType.commonDetailCodeName }"/>
						     	</option>
							</c:forEach>
							</select>
						</span>
					</td>
					<th scope="col" class="ac"><span class="ess_itm">*</span>템플릿선택</th>
					<td scope="col">
						<span class="selTmplatId">선택안함</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btnTy_blue01 selTmplat" id="selTmplatBtn" type="button">템플릿선택</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- /홈페이지 관리 -->
</form>
<!-- /검색 form -->
<div class="mgt20 ar">
	<button class="btn_bl sysInsert" type="button">등록</button>
	<button class="btn_gr sysCancel" type="button">취소</button>
</div>

<div id="tmpltDiv" class="sysPstyle" style="width: 95%; height:auto; max-width:60rem; display:none;">
	<form name="tmpltForm" id="tmpltForm" method="POST" class="sysPwrap">
		<h4>템플릿 선택</h4>
		<div style="width: 100%; max-height: 70vh; overflow-y:auto;" class="tmplatList"></div>
		<a href="#cancel" class="sysPclose" title="닫기"><i class="xi-close" aria-hidden="true"></i><em class="hid">닫기</em></a>
	</form>
</div>

