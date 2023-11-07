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
					<th scope="col" class="ac"><span class="ess_itm"></span>아이디</th>
					<td scope="col">
						<c:out value="${member.memberId}"/>
					</td>
					<th scope="col" class="ac">성명</th>
					<td scope="col">
						<c:out value="${member.memberName}"/>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac">휴대폰전화</th>
					<td colspan="3">
						<c:out value="${member.telNo}"/>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac">이메일</th>
					<td colspan="3">
						<c:out value="${member.email}"/>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac">시스템 구분</th>
					<td colspan="3">
						<c:out value="${member.memberType.system.systemName}"/>
					</td>
				</tr>
				<tr>
					<th scope="col" class="ac">회원 구분</th>
					<td colspan="3">
						<c:out value="${member.memberType.memberType}"/>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

</form>
<p class="btns ar">
	<a href="javascript:" class="btn_bl updateBtn">수정</a>
	<a href="javascript:" class="btn_gr backBtn">취소</a>
</p>
