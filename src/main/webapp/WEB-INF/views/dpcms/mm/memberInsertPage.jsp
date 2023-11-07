<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">

	//중복검사
	$(document).on("click", ".chkIdBtn", function() {
		var memberId = $("#memberId").val();
		if (memberId == "") {
			alert("아이디를 입력해주세요");
			return;
		}

		$.ajax({
			type : "GET",
			dataType : "json",
			url : "/admin/mm/member/"+memberId+"/duplicationCheck",
			success : function(result) {
				alert(result.message);
				if(result.status == "success") {
					$("#chkIdAt").val(memberId);
				} else {
					$("#memberId").val("");
				}
			}
		});

	});

	//이메일 변경 시 검색
	$('#subEmail3').on('change', function() {
		var email2_val = $('#subEmail3').val();
		$("#email2").val(email2_val);

	})

	// 생성
	$(document).on( "click", ".insertBtn", function() {

		if (!confirm('회원을 생성 하시겠습니까?')) return;

		var systemId = $("#systemId").val();

		// 홈페이지 관리자 여부
		var authAtChk = $("#authAtChk").is(':checked');
		if ( $("#authAtChk").is(':checked') == true ) {
			$('input[name=authAt]').val('Y');
		} else {
			$('input[name=authAt]').val('N');
		}

		//아이디 확인
		var memberId = $("#memberId").val();
		var chkIdAt = $("#chkIdAt").val();

		if ( memberId == "") {
			alert("아이디를 입력해주세요")
			return;
		}
		//중복검사 체크
		if ( chkIdAt == "") {
			alert("아이디 중복검사를 해주세요");
			return;
		}

		if ( chkIdAt != memberId) {
			alert("아이디 중복검사를 해주세요");
			return;
		}
		//성명
		var memberName = $("#memberName").val();
		if (memberName == "") {
			alert("성명을 입력해주세요");
			$("#memberName").focus();
			return;
		}

		/**비밀번호 유효성 체크*/
		var memberPassword1 = $("#memberPassword1").val();
		var chkPw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{9,16}/;

		if ( memberPassword1.search(memberId) > -1) {
			alert("비밀번호에 아이디가 포함되었습니다.");
			return;
		}

		if(memberPassword1.length < 9 || memberPassword1.length > 16){
			alert("비밀번호는 9~16 자리를 사용해야 합니다.");
			return;
		}

		if ( !chkPw.test(memberPassword1) ) {
			alert("비밀번호는 숫자와 영문자 특수문자 조합으로 9~16 자리를 사용해야 합니다.");
			$("#memberPassword1").val("");
			$("#memberPassword2").val("");
			$("#memberPassword1").focus();
			return;
		}

		var memberPassword2 = $("#memberPassword2").val();
		if ( memberPassword1 != memberPassword2) {
			alert("비밀번호가 일치하지 않습니다.\n 확인해주세요.");
			$("#mberPw2").focus();
			return;
		}
		$("#memberPassword").val(memberPassword1);
		/**비밀번호 유효성 체크 종료*/

		// 휴대폰번호 체크
		if ( $("#phone1").val() == "" || $("#phone2").val() == "" || $("#phone3").val() == "") {
			alert("휴대폰 번호를 입력해주세요.");
			return;
		}

		//핸드폰 번호 설정
		if ( $("#phone1").val() != "" || $("#phone2").val() != "" || $("#phone3").val() != "") {

			var mbtlChk = /^\d{3}-\d{3,4}-\d{4}$/;
			var telNo = $("#phone1").val() + "-" + $("#phone2").val() + "-" + $("#phone3").val();

			if ( !mbtlChk.test(telNo) ) {
				alert("잘못된 휴대폰 번호입니다.");
				$("#phone1").val("");
				$("#phone2").val("");
				$("#phone3").val("");
				$("#phone1").focus();
				return;

			} else {
				$("#telNo").val(telNo);
			}

		}

		//이메일 설정
		if ( $("#email1").val() != "" || $("#email2").val() != "" ) {

			var emailChk = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			var email = $("#email1").val() + "@" + $("#email2").val();

			if ( !emailChk.test( email ) ) {
				alert("잘못된 이메일 형식입니다.");
				$("#email1").val("");
				$("#email2").val("");
				$("#email1").focus();
				return;

			} else {
				$("#email").val(email);
			}

		}

		//사용자 구분
		var memberType = $("#memberType").val();
		if ( memberType == "") {
			alert("회원 구분을 선택해주세요.");
			$("#mberTy").focus();
			return;
		}

		$.ajax({
			type : "POST",
			dataType : "json",
			data : $("#mberCreateInsertForm").serialize(),
			url : "/admin/mm/member",
			success : function(result) {
				alert(result.message);
				if (result.status = 'success') {
					location.href = "/admin/mm/member/manageList";
				}
			},
			error: function (data) {
				alert("오류가 발생했습니다.\n 관리자에게 문의해주세요.");
			}

		});

	});

	//취소
	$(document).on("click", ".backBtn", function() {
		$('#searchForm').attr('action','/admin/mm/member/manageList')
				.attr('method', 'GET').submit();
	});
</script>

<form id="searchForm" method="GET" >
	<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
	<input type="hidden" id="size" name="size" value="<c:out value='${condition.size}'/>">
	<input type="hidden" id="page" name="page" value="${condition.page}" />
	<input type="hidden" id="searchText" name="searchText" value="<c:out value='${condition.searchText}'/>">
</form>

<!-- 관리자 생성 : 회원정보입력 -->
<form id="mberCreateInsertForm" name="mberCreateInsertForm">
	<input type="hidden" id="telNo" name="telNo" value="">
	<input type="hidden" id="email" name="email" value="">
	<input type="hidden" id="memberPassword" name="memberPassword" value="">
	<input type="hidden" id="chkIdAt" name="chkIdAt" value="">

	<!-- 홈페이지 관리자 여부 -->
	<input type="hidden" id="authAt" name="authAt" value="">

	<h4 class="tit1">회원 생성</h4>
	<div class="box_st1 mgb5">
		<p class="ac">관리자가 회원을 생성할 수 있습니다.</p>
	</div>

	<h6 class="tit2 mgt20">회원 정보</h6>
	<div class="bbs_WriteA">
		<table>
			<colgroup>
				<col style="width: 15%">
				<col style="width: 35%">
				<col style="width: 15%">
				<col style="width: 35%">
			</colgroup>
			<tbody>
				<tr>
					<th scope="col" class="ac"><label for="memberId"><span class="ess_itm">*</span>아이디</label></th>
					<td scope="col">
						<input type="text" name="memberId" id="memberId" value="" class="col-sm-8 reChk" maxlength="80"><a href="#" title="새창" class="btn_grL mini chkIdBtn">ID중복확인</a>
					</td>
					<th scope="col" class="ac"><label for="memberName">* 성명</label></th>
					<td scope="col">
						<input type="text" name="memberName" id="memberName" class="col-sm-8 reChk" maxlength="80">
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><label for="memberPassword1">* 비밀번호</label></th>
					<td scope="col">
						<input type="password" name="memberPassword1" id="memberPassword1" value="" autocomplete="off" class="col-sm-8 reChk" maxlength="80">
						<br><br><p class="bu_wnrn">반드시 영문과 숫자, 특수문자를 혼합하여 9~16자 입력해주시기 바랍니다.</p>
					</td>
					<th scope="col" class="ac"><label for="memberPassword2">* 비밀번호 확인</label></th>
					<td scope="col">
						<input type="password" name="memberPassword2" id="memberPassword2" value="" autocomplete="off" class="col-sm-8 reChk" maxlength="80">
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><label for="phone1">* 휴대폰전화</label></th>
					<td colspan="3">
						<span class="col-sm-1 form-select"><select name="phone1" id="phone1" title="휴대폰전화 앞자리" class="reChk">
							<option value="">선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select></span>
						 -
						<input type="text" name="phone2" id="phone2" value="" class="col-sm-2 onylNum reChk" title="휴대폰전화 중간자리" maxlength="4">
						 -
						<input type="text" name="phone3" id="phone3" value="" class="col-sm-2 onylNum reChk" title="휴대폰전화 뒷자리" maxlength="4">
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><label for="email">이메일</label></th>
					<td colspan="3">
						<input type="text" name="email1" id="email1" value="" class="col-sm-4 reChk" title="이메일 아이디" maxlength="70">@
						<input type="text" name="email2" id="email2" value="" class="col-sm-4 reChk" title="이메일 나머지 주소" maxlength="50">
						<span class="col-sm-1 form-select"><select name="subEmail3" id="subEmail3" title="이메일 주소 선택" class="reChk">
							<option value="">선택</option>
							<option value="naver.com">naver.com</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="dreamwiz.com">dreamwiz.com</option>
							<option value="empal.com">empal.com</option>
							<option value="daum.net">daum.net</option>
							<option value="korea.com">korea.com</option>
							<option value="hotmail.com">hotmail.com</option>
							<option value="chol.com">chol.com</option>
							<option value="paran.com">paran.com</option>
							<option value="1">직접입력</option>
						</select></span>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><label for="memberType">* 시스템 구분</label></th>
					<td colspan="3">
						<span class="col-sm-1 form-select">
							<select name="systemId" id="systemId" class="reChk">
								<option value="" title = "선택" >선택</option>
								<c:forEach var="sysList" items="${systemList}">
								 <option value="<c:out value="${sysList.systemId }"/>" title="<c:out value="${sysList.systemName }"/>">
									<c:out value="${sysList.systemName }"/>
								 </option>
								</c:forEach>
							</select>
						</span>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac"><label for="memberType">* 회원 구분</label></th>
					<td colspan="3">
						<span class="col-sm-1 form-select">
							<select name="memberType" id="memberType" class="reChk">
								<option value="" title = "선택" >선택</option>
								<c:forEach var="mberTy" items="${memberTypeList}">
								 <option value="<c:out value="${mberTy.id.commonDetailCode }"/>" title="<c:out value="${mberTy.commonDetailCodeName }"/>">
									<c:out value="${mberTy.commonDetailCodeName }"/>
								 </option>
							  	</c:forEach>
							</select>
						</span>
					</td>
				</tr>
<%--				<tr>--%>
<%--					<th scope="col" class="ac"><label for="authAtChk">* 홈페이지 관리자 여부</label></th>--%>
<%--					<td colspan="3">--%>
<%--						<ul class="custom-input">--%>
<%--							<li><input type="checkbox" id="authAtChk" value="Y"/><label for="authAtChk">관리자 페이지 접속 허용</label></li>--%>
<%--						</ul>--%>
<%--						<br><p class="bu_wnrn">체크 후 생성시 관리자 권한이 생성됩니다.</p>--%>
<%--					</td>--%>
<%--				</tr>--%>
			</tbody>
		</table>
	</div>

</form>
<p class="btns ar">
	<a href="javascript:" class="btn_bl insertBtn">생성</a>
	<a href="javascript:" class="btn_gr backBtn">취소</a>
</p>
