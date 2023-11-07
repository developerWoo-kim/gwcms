<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.srchBtn { padding-top: 2px; }
.srchSysIdDrop { width: 11% !important }
.search_input { float: right; position: relative; margin-left: 20px; }
.sele { position: relative; float: left; margin-left: 10px; overflow: hidden; }
</style>

<!-- 콘텐츠 -->
<h4 class="tit1 mgt30">권한 상세 정보</h4>
<div class="box_st1 mgb5">
	<p class="ac">권한을 등록할 수 있습니다.</p>
</div>
<!-- TABLE -->
<form method="post" name="authorGroupInsertForm" id="authorGroupInsertForm">
	<input type="hidden" name="authorGroupNameChk" id="authorGroupNameChk" value="N">
	<input type="hidden" name="authorGroupDescriptionChk" id="authorGroupDescriptionChk" value="N">
	<div class="bbs_WriteA">
		<table>
			<colgroup>
				<col style="width: 20%">
				<col style="width: 80%">
			</colgroup>
			<tbody>
				<tr>
					<th scope="row" class="ac"><label for="authorGroupName"><span class="ess_itm">*</span>권한명</label></th>
					<td>
						<input type="text" name="authorGroupName" id="authorGroupName" class="col-sm-6" maxlength="40" value=""/>
						<a href="javascript:" onClick="authorGroupNameChk();" title="중복체크" class="btn_gr mini">중복체크</a>
					</td>
				</tr>
				<tr>
					<th scope="row" class="ac"><label for="authorGroupDescription"><span class="ess_itm">*</span>권한 설명</label></th>
					<td>
						<input type="text" name="authorGroupDescription" id="authorGroupDescription" class="col-sm-6" maxlength="40" value=""/>
						<a href="javascript:" onClick="authorGroupDescriptionChk();" title="중복체크" class="btn_gr mini">중복체크</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
<!-- 검색 폼 -->
<form id="searchForm" method="GET" >
	<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
	<input type="hidden" id="size" name="size" value="<c:out value='${condition.size}'/>">
	<input type="hidden" id="page" name="page" value="${condition.page}" />
	<input type="hidden" id="searchText" name="searchText" value="<c:out value='${condition.searchText}'/>">
</form>
<p class="btns ar">
	<a href="javascript:" onclick="authorInsert();" class="btn_bl"><span>등록</span></a>
	<a href="javascript:" onclick="authorCancle();" class="btn_gr"><span>취소</span></a>
</p>
<!-- <div class="ar mgt20">
	<a type="javascript:" onClick=" location.href='javascript:authorInsert();' " title="등록" class="btn btn_blue">등록</a>
	<a href="javascript:" onClick=" location.href='javascript:authorCancle();' " title="취소" class="btn btn_dark">취소</a>
</div> -->
<!-- //디테일Table -->


<script type="text/javascript"> 
				
	//권한명 중복체크
	function authorGroupNameChk() {
		var authorGroupName = $("#authorGroupName").val();
		
		if (authorGroupName == "") {
			alert("권한명을 입력해주십시오");
			$("#authorGroupName").focus();
			return;
			
		} else {		
			$("#authorGroupName").val($.trim(authorGroupName));
		}

		// 중복체크
		$.ajax({
			type : "GET",
			dataType : "json",
			url : "/admin/au/author/"+authorGroupName+"/authorGroupName-duplicationCheck",
			success : function(result) {
				alert(result.message);
				if(result.status == 'success'){
					$("#authorGroupNameChk").val("Y");
				}else{
					$('#authorGroupNameChk').val('N');
				}
			},
			error : function(result) {
				errorMessage(result);
			}
		});

	}

	//권한 설명 중복 체크
	function authorGroupDescriptionChk() {
		var authorGroupDescription = $("#authorGroupDescription").val();

		if ( authorGroupDescription == "") {
			alert("권한설명을 입력해주십시오");
			$("#authorGroupDescription").focus();
			return;

		} else {
			$("#authorGroupDescription").val($.trim(authorGroupDescription));
		}

		// 중복체크
		$.ajax({
			type : "GET",
			dataType : "json",
			url : "/admin/au/author/"+authorGroupDescription+"/authorGroupDescription-duplicationCheck",
			success : function(result) {
				alert(result.message);
				if(result.status == 'success'){
					$("#authorGroupDescriptionChk").val("Y");
				}else{
					$('#authorGroupDescriptionChk').val('N');
				}
			},
			error : function(result) {
				errorMessage(result);
			}
		});

	}

	//입력
	function authorInsert() {

		var authorGroupName = $("#authorGroupName").val();
		var authorGroupDescription = $("#authorGroupDescription").val();
		var authorGroupNameChk = $("#authorGroupNameChk").val();
		var authorGroupDescriptionChk = $("#authorGroupDescriptionChk").val();
		
		if ( authorGroupName == "") {
			 alert("권한명을 입력해주십시오");
			 return;
		} else {
			$("#authorGroupName").val($.trim(authorGroupName));
		}

		if ( authorGroupDescription == "") {
			alert("권한설명을 입력해주십시오");
			return;
		} else {
			$("#authorGroupDescription").val($.trim(authorGroupDescription));
		}

		if ( authorGroupNameChk == "N") {
			alert("권한명을 중복체크를 해주세요");
			return;
		}

		if ( authorGroupDescriptionChk == "N") {
			 alert("권한설명을 중복체크를 해주세요");
			 return;
		}


		if (!confirm(authorGroupName + " 권한을 등록하시겠습니까?")) return;

		$.ajax({
			type : "POST",
			dataType : "json",
			data : $("#authorGroupInsertForm").serialize(),
			url : "/admin/au/author",
			success : function(result) {
				alert(result.message);
				if(result.status == 'success'){
					authorCancle();
				}
			},
			error : function(result) {
				errorMessage(result);
			}
		});

	}
	// 취소
	function authorCancle() {
		$('#searchForm').attr('action','/admin/au/author/list')
				.attr('method', 'GET').submit();
	}
</script>
