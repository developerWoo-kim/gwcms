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
<!-- 공통파일 js -->
<script src="/00_common/js/jquery.min.js"></script>
<script src="/00_common/js/modernizr-2.6.2.min.js"></script>
<script src="/00_common/js/common.js"></script>
<script src="/00_common/js/con_com.js"></script>
</head>
<body class="member_bg">
	
	<!-- login_container -->
	<div id="login_container">
		<div class="total_login_wrap">
		<h1>통합 로그인 서비스</h1>
		
		<div class="tab_wrap">
			<ul class="total_login_tab">
				<li>
					<a href="#login_con1" class="current">
						<span>회원로그인</span>
					</a>
				</li>
				<li>
					<a href="#login_con2" class>
						<span>본인인증로그인</span>
					</a>
				</li>
			</ul>
		</div>
		<div class="login_wrap"><!-- 로그인일 경우 join대신 login을 넣어서 넓이값 조절할 것 -->
			<div class="login_con on" id="login_con1">
				<div class="login_box mem">
					<div class="box">
						<h2 class="heading">일반 로그인</h2>
						<a href="#" class="find_login_wrap" id="appleLoginBtn"><span>아이디/비밀번호 찾기</span></a>
						<form name="appleLoginForm" id="appleLoginForm" method="post">
							<div class="loginFrm login_ty1">
								<ul class="login_frm">
									<li class="login_id">
										<label for="mberId" style="display:none;">아이디 입력</label>
										<input name="mberId" id="mberId" type="text" title="아이디" placeholder="아이디를 입력하세요." maxlength="80">
									</li>
									<li class="login_pw">
										<label for="mberPassword" style="display:none;">비밀번호 입력</label>
										<input name="mberPassword" id="mberPassword" type="password" title="비밀번호" placeholder="비밀번호를 입력하세요." autocomplete="off" maxlength="80">
									</li>
								</ul>
								<div class="login_btn_wrap">
									<a href="#" class="btn_login btcon" id="appleLoginBtn"><span>로그인</span></a>
									<a href="#" class="btn_cancel btcon"><span>취소</span></a>
								</div>
							</div>
						</form>
					</div>
					<div class="sns_login">
						<h2 class="heading">간편 로그인</h2>
						<ul>
							<li class="login_sns_ph"><a href="">
								<span>휴대폰 로그인</span>
							</a></li>
							<li class="login_sns_ip"><a href="">
								<span>아이핀 로그인</span>
							</a></li>
							<li class="login_sns_pa"><a href="">
								<span>디지털원패스 로그인</span>
							</a></li>
							<li class="login_sns_na"><a href="">
								<span>네이버 로그인</span>
							</a></li>
							<li class="login_sns_ka"><a href="">
								<span>카카오 로그인</span>
							</a></li>
							<li class="login_sns_st"><a href="">
								<span>교직원인증서<em>PC만 가능</em>
								</span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="login_con" id="login_con2">
				<div class="login_box self">
					<div class="box">
						<div class="btnlink_login">
							<div class="self_login">
								<ul>
									<li class="login_self_phone"><a href="">
										<span>휴대폰 로그인</span>
									</a></li>
									<li class="login_self_ipin"><a href="">
										<span>아이핀 로그인</span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		</div>
	</div>
	<!-- //login_container -->
	<script>
		$(function() {
			// 탭 
		$(document).on('click', 'div[class*="tab_wrap"] .total_login_tab li > a', function(e){
			var contents = $(this.hash);

		$(this).addClass('current').parent('li').siblings().find('a').removeClass('current');
		$(contents).addClass('on').siblings().removeClass('on');
		e.preventDefault();
	});

		// 취소버튼 뒤로가기
		$('.btn_cancel').on('click', function(){
			history.back();
	});
		})
	</script>
</body>
</html>