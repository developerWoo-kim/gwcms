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
<h4 class="tit1 mgt30">권한 역할 등록</h4>
<div class="box_st1 mgb5">
	<p class="ac">권한 역할을 등록할 수 있습니다.</p>
</div>
<!-- TABLE -->
<form method="post" name="authorGroupRoleInsertForm" id="authorGroupRoleInsertForm">
	<input type="hidden" name="authorGroupRoleNameChk" id="authorGroupRoleNameChk" value="N">
	<input type="hidden" name="authorGroupId" id="authorGroupId" value="<c:out value='${authorGroup.authorGroupId}'/>">
	<div class="bbs_WriteA">
		<table>
			<colgroup>
				<col style="width: 20%">
				<col style="width: 80%">
			</colgroup>
			<tbody>
				<tr>
					<th scope="row" class="ac"><label for="authorGroupName"><span class="ess_itm">*</span>권한그룹</label></th>
					<td>
						<input type="text" name="authorGroupName" id="authorGroupName" class="col-sm-6" maxlength="40" value="<c:out value='${authorGroup.authorGroupName}'/>" readonly/>
					</td>
				</tr>
				<tr>
					<th scope="row" class="ac"><label for="authorGroupRoleName"><span class="ess_itm">*</span>권한 역할</label></th>
					<td>
						<input type="text" name="authorGroupRoleName" id="authorGroupRoleName" class="col-sm-6" maxlength="40" value=""/>
						<a href="javascript:" onClick="authorGroupRoleNameChk();" title="중복체크" class="btn_gr mini">중복체크</a>
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
	<a href="javascript:" onclick="authorGroupRoleInsert();" class="btn_bl"><span>등록</span></a>
	<a href="javascript:" onclick="authorCancle();" class="btn_gr"><span>취소</span></a>
</p>
<script type="text/javascript"> 
				
	//권한 역할 중복체크
	function authorGroupRoleNameChk() {
		var authorGroupRoleName = $("#authorGroupRoleName").val();
		
		if (authorGroupRoleName == "") {
			alert("권한 역할을 입력해주십시오");
			$("#authorGroupRoleName").focus();
			return;
			
		} else {		
			$("#authorGroupRoleName").val($.trim(authorGroupRoleName));
		}

		// 중복체크
		$.ajax({
			type : "GET",
			dataType : "json",
			url : "/admin/au/author-role/"+authorGroupRoleName+"/roleName-duplicationCheck",
			success : function(result) {
				alert(result.message);
				if(result.status == 'success'){
					$("#authorGroupRoleNameChk").val("Y");
				}else{
					$('#authorGroupRoleNameChk').val('N');
				}
			},
			error : function(result) {
				errorMessage(result);
			}
		});

	}

	//입력
	function authorGroupRoleInsert() {

		var authorGroupRoleName = $("#authorGroupRoleName").val();
		var authorGroupRoleNameChk = $("#authorGroupRoleNameChk").val();
		
		if ( authorGroupRoleName == "") {
			 alert("권한 역할을 입력해주십시오");
			 return;
		} else {
			$("#authorGroupRoleName").val($.trim(authorGroupRoleName));
		}

		if ( authorGroupRoleNameChk == "N") {
			 alert("권한 역할을 중복체크를 해주세요");
			 return;
		}


		if (!confirm(authorGroupRoleName + " 권한 역할을 등록하시겠습니까?")) return;

		$.ajax({
			type : "POST",
			dataType : "json",
			data : $("#authorGroupRoleInsertForm").serialize(),
			url : "/admin/au/author-role",
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
