<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>세종시 학교통합 회원가입</title>
<!-- CSS -->
<link rel="stylesheet" href="/00_common/css/member.css" media="all">
</head>
<body class="member_bg">
	
	<!-- join_container -->
	<div id="join_container">
		
		<h1>회원가입</h1>
		
		<div class="join_wrap"><!-- 로그인일 경우 join대신 login을 넣어서 넓잉값 조절할 것 -->
		 	<!-- 회원가입 -->
			 <div class="mber_join_box">
				<!-- 회원가입 순서도 -->
				<ol class="join_step">
					<li><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep1.png" alt="약관동의"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">01</span><br><strong>약관동의</strong></div></li>
					<li class="on" title="현재단계"><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep2.png" alt="회원구분"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">02</span><br><strong>회원구분</strong></div></li>
					<li><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep3.png" alt="본인확인"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">03</span><br><strong>본인확인</strong></div></li>
					<li><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep4.png" alt="정보입력"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">04</span><br><strong>정보입력</strong></div></li>
					<li><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep5.png" alt="가입완료"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">05</span><br><strong>가입완료</strong></div></li>
				</ol>
				<!-- //회원가입 순서도 -->
				<!-- 회원구분 -->
				<div class="join_txt">
					<h3 class="join_tit">회원유형 선택</h3>
					<h4 class="join_tit2">해당하는 권한의 회원가입버튼을 클릭하여 주시기 바랍니다.</h4>
				</div>
				<div class="joinStep2">
					<div class="joinBox">
						<span class="joinBico"><img src="/00_common/images/member/ico_joinChild.png" alt="어린이회원"></span>
						<dl>
							<dt>만 14세 미만 학생</dt>
							<dd>휴대폰 인증 및 아이핀인증을 진행합니다.<br>보호자와 함게 회원가입을 진행 해주세요.</dd>
						</dl>
						<a href="">가입하기</a>
					</div>

					<div class="joinBox">
						<span class="joinBico"><img src="/00_common/images/member/ico_joinGnrl.png" alt="일반회원"></span>
						<dl>
							<dt>만 14세 이상 학생</dt>
							<dd>휴대폰 인증 및 <br>아이핀인증을 진행합니다.</dd>
						</dl>
						<a href="">가입하기</a>
					</div>

					<div class="joinBox">
						<span class="joinBico"><img src="/00_common/images/member/ico_joinParnt.png" alt="학부모"></span>
						<dl>
							<dt>학부모</dt>
							<dd>휴대폰 인증 및<br>아이핀인증을 진행합니다.</dd>
						</dl>
						<a href="">가입하기</a>
					</div>

					<div class="joinBox">
						<span class="joinBico"><img src="/00_common/images/member/ico_joinStaff.png" alt="교직원"></span>
						<dl>
							<dt>교직원</dt>
							<dd>EPKI 인증을 진행합니다.<br>인증서를 준비하여 주시기 바랍니다.</dd>
						</dl>
						<a href="">가입하기</a>
					</div>
				</div>
				<!-- //회원구분 -->
				<p class="ac"><a href="" class="btn_joinB">이전</a> <a href="" class="btn_joinG">취소</a></p>
			</div>
			<!-- //회원가입 -->
			<!-- 여기까지 -->
		</div>
		
	</div>
	<!-- //join_container -->
	
</body>
</html>