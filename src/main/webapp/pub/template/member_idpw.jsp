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
	
	<!-- idpw_container -->
	<div id="idpw_container">
		<div class="total_idpw_wrap">
		<h1>통합 로그인 서비스</h1>
		
		<div class="tab_wrap">
			<ul class="total_idpw_tab">
				<li>
					<a href="#idpw_con1" class="current">
						<span>아이디 찾기</span>
					</a>
				</li>
				<li>
					<a href="#idpw_con2" class>
						<span>비밀번호 찾기</span>
					</a>
				</li>
			</ul>
		</div>
		<div class="idpw_wrap"><!-- 로그인일 경우 join대신 login을 넣어서 넓이값 조절할 것 -->
			<div class="idpw_con on" id="idpw_con1">
				<div class="idpw_box">
					<div class="idpw_txt">
						<p>휴대폰인증, 아이핀인증, 교직원 인증을 통해 아이디를 찾을 수 있습니다.</p>
					</div>
					<div class="idpwFrm idpw_ty1">
						<h2>인증방법</h2>
						<ul class="idpw_btn_box">
							<li class="idpw_ipin">
								<a href="#">
									<span>아이핀 인증</span>
								</a>
							</li>
							<li class="idpw_phone">
								<a href="#">
									<span>휴대폰 인증</span>
								</a>
							</li>
							<li class="idpw_staff">
								<a href="#">
									<span>교직원 인증</span>
								</a>
							</li>
						</ul>
						<div class="id_info">
							<span class="id_tit">아이디</span>
							<span></span>
						</div>				
					</div>
					<div class="idpw_btn">
						<a href="#" class="btn_cancel" id="appleidpwBtn"><span>취소</span></a>
						<a href="#" class="btn_confirm" id="appleidpwBtn"><span>확인</span></a>
					</div>
				</div>
			</div>
			<div class="idpw_con" id="idpw_con2">
				<div class="idpw_box">
					<div class="idpw_txt">
						<p>휴대폰인증, 아이핀인증, 교직원 인증을 통해 아이디를 찾을 수 있습니다.</p>
					</div>
					<div class="idpwFrm idpw_ty1">
						<h2>사용자정보</h2>
						<ul class="idpw_btn_box">
							<li class="idpw_ipin">
								<a href="#">
									<span>아이핀 인증</span>
								</a>
							</li>
							<li class="idpw_phone">
								<a href="#">
									<span>휴대폰 인증</span>
								</a>
							</li>
							<li class="idpw_staff">
								<a href="#">
									<span>교직원 인증</span>
								</a>
							</li>
						</ul>
						<div class="id_info">
							<span class="id_tit">아이디</span>
							<form><input type="text"></form>
						</div>				
					</div>
					<div class="idpw_btn">
						<a href="#" class="btn_cancel" id="appleidpwBtn"><span>취소</span></a>
						<a href="#" class="btn_confirm" id="appleidpwBtn"><span>확인</span></a>
					</div>
				</div>
			</div>
		</div>
		
		</div>
	</div>
	<!-- //idpw_container -->
	<script>
		$(function() {
			$(document).on('click', 'div[class*="tab_wrap"] .total_idpw_tab li > a', function(e){
					var contents = $(this.hash);

				$(this).addClass('current').parent('li').siblings().find('a').removeClass('current');
				$(contents).addClass('on').siblings().removeClass('on');
				e.preventDefault();
			});
		})
	</script>
</body>
</html>