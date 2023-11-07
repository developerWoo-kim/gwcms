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
					<h3 class="join_tit step4_tit">회원정보 작성</h3>
					<h4 class="join_tit3">축하드립니다! 회원가입이 완료되었습니다.</h4>
				</div>
				<div class="joinStep5">
					<p class="joinEnd">모든 회원가입절차가 완료되었습니다. 관리자 승인 후 모든 서비스를 이용하실 수 있습니다.<br>
						사용 중이신 SNS계정과 연동하시면 더욱 편리하게 홈페이지 이용이 가능합니다.</p>
				</div>
				<!-- //가입완료 -->
				<p class="ac_end"><a href="" class="btn_joinS">SNS연동</a> <a href="" class="btn_joinC">다음에 할게요</a></p>
			</div>
			<!-- //회원가입 -->
			<!-- 여기까지 -->
		</div>
		
	</div>
	<!-- //join_container -->
	
</body>
</html>