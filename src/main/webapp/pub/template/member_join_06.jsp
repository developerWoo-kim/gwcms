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
					<li><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep2.png" alt="회원구분"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">02</span><br><strong>회원구분</strong></div></li>
					<li><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep3.png" alt="본인확인"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">03</span><br><strong>본인확인</strong></div></li>
					<li><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep4.png" alt="정보입력"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">04</span><br><strong>정보입력</strong></div></li>
					<li class="on" title="현재단계"><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep5.png" alt="가입완료"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">05</span><br><strong>가입완료</strong></div></li>
				</ol>
				<!-- //회원가입 순서도 -->
				<!-- 가입완료 -->
				<div class="join_txt step4_box">
					<h3 class="join_tit step4_tit">SNS계정 연동</h3>
					<h4 class="join_tit3">홈페이지 계정과 연동할 SNS종류를 선택해주세요.</h4>
				</div>
				<div class="joinStep6">
					<div class="sns_connect">
						<ul>
							<li class="connect_sns_ka"><a href="">
								<span>카카오 로그인</span>
							</a></li>
							<li class="connect_sns_na"><a href="">
								<span>네이버 로그인</span>
							</a></li>
							<li class="connect_sns_fa"><a href="">
								<span>페이스북 로그인</span>
							</a></li>
							<li class="connect_sns_in"><a href="">
								<span>인스타 로그인</span>
							</a></li>
							<li class="connect_sns_tw"><a href="">
								<span>트위터 로그인</span>
							</a></li>
						</ul>
					</div>
					<p class="joinEnd">SNS 회원정보 연동은 추후 마이페이지에서 추가 진행 하실 수 있습니다.<br>
						회원 연동을 희망하지 않으시면 다음에 하기 버튼을 클릭해 주세요.</p>
				</div>
				<!-- //가입완료 -->
				<p class="ac_end"><a href="" class="btn_joinE">SNS연동 완료</a> <a href="" class="btn_joinR">다음에 하기</a></p>
			</div>
			<!-- //회원가입 -->
			<!-- 여기까지 -->
		</div>
		
	</div>
	<!-- //join_container -->
	
</body>
</html>