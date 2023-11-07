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
					<li class="on" title="현재단계"><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep4.png" alt="정보입력"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">04</span><br><strong>정보입력</strong></div></li>
					<li><div class="join_IcoBox"><span class="ico_joinStep"><img src="/00_common/images/member/img_joinStep5.png" alt="가입완료"></span></div><div><span class="point_col1">STEP</span> <span class="point_col2">05</span><br><strong>가입완료</strong></div></li>
				</ol>
				<!-- //회원가입 순서도 -->
				<!-- 정보입력 -->
				<div class="join_txt step4_box">
					<h3 class="join_tit step4_tit">회원정보 작성</h3>
					<h4 class="join_tit2">가입하신 정보는 회원님의 동의없이 공개되지 않으며, 개인정보보호정책에 의해 보호를 받습니다.</h4>
				</div>
				<div class="joinStep4">
					<form name="JoinForm" id="JoinForm" method="POST">
						<input type="hidden" name="JoinFormA" id="JoinFormA" value="">
						<fieldset>
							<legend>회원가입 양식 입력폼</legend>
							<div class="bbs_WriteA"><!-- board.css 추가 해야합니다 -->
								<table>
									<caption>회원가입 양식 작성 (아이디, 이름, 비밀번호, 비밀번호확인, 성별, 연락처, 이메일, 주소 포함)</caption>
									<colgroup>
										<col style="width:15%;">
										<col style="width:37.5%;">
										<col style="width:15%;">
										<col style="width:27.5%;">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row"><span class="pc_red">*</span><label for="Join_school">학교</label></th>
											<td colspan="3">
												<div class="select-arrow">
													<select name="school" id="Join_school_up">
														<option value="" selected>학교를 선택해주세요.</option>
														<option value="세종초등학교">세종초등학교</option>
													</select>
												</div></td>
										</tr>
										<tr>
											<th scope="row"><span class="pc_red">*</span><label for="Join_name">이름</label></th>
											<td><input name="Join_name" id="Join_name" type="text" value="" class="InpSel_150"></td>
											<th scope="row" class="sec_row"><span class="pc_red">*</span><label for="Join_prnt">보호자 이름</label></th>
											<td><input name="Join_prnt" id="Join_prnt" type="text" value="" class="inp_st InpSel_150"></td>
										</tr>
										<tr>
											<th scope="row"><span class="pc_red">*</span><label for="Join_id">아이디</label></th>
											<td colspan="3"><input name="Join_id" id="Join_id" type="text" value="" class="InpSel_150 inp_short"> <button type="submit" title="중복아이디 검색" class="btn_Join_id">중복확인</button></td>
										</tr>
										<tr>
											<th scope="row"><span class="pc_red">*</span><label for="Join_pw">비밀번호</label></th>
											<td class="join_inpheigt"><input name="Join_pw" id="Join_pw" type="password" value="" class="InpSel_150"> <span class="bbs_atte">비밀번호는 문자,숫자,특수문자의 조합으로 9~16자리로 입력해주세요.</span></td>
											<th scope="row" class="sec_row"><span class="pc_red">*</span><label for="Join_pw2">비밀번호 확인</label></th>
											<td class="join_inpheigt"><input name="Join_pw2" id="Join_pw2" type="password" value="" class="inp_st InpSel_150"><span class="bbs_atte2">비밀번호와 동일하게 입력해주세요.</span></td>
										</tr>
										<tr>
											<th scope="row"><label for="Join_mail">이메일</label></th>
											<td colspan="3">
												<input name="Join_mail" id="Join_mail" type="text" value="" class="InpSel_150 inp_short" title="이메일 입력">@
												<input name="Join_mail" id="Join_mail" type="text" value="" class="InpSel_150 inp_short2" title="이메일 입력">
												<div class="select-arrow">
													<select name="Join_mail" class="Join_mail">
														<option value="" selected>선택해주세요.</option>
														<option value="naver">네이버</option>
														<option value="kakao">카카오</option>
													</select>
												</div></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="bbs_WriteB"><!-- board.css 추가 해야합니다 -->
								<div class="choice_txt">
									<span>사이트 부가정보</span>
									<p>회원가입시 필요한 부가정보입니다.</p>
								</div>
								<table>
									<caption>사이트 부가정보(학교, 반)</caption>
									<colgroup>
										<col style="width:15%;">
										<col style="width:35%;">
										<col style="width:15%;">
										<col style="width:35%;">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row"><label for="Join_school">학교/반</label></th>
											<td colspan="3">
										<div class="select-arrow sht">
											<select name="school" class="Join_school">
												<option value="" selected>선택해주세요.</option>
												<option value="세종초등학교">세종초등학교</option>
											</select>
											</div>
										<div class="select-arrow sht">
											<select name="school" class="Join_school">
												<option value="" selected>선택해주세요.</option>
												<option value="세종초등학교">세종초등학교</option>
											</select>
											</div>
											반
										</td>
										</tr>
									</tbody>
								</table>
							</div>
						</fieldset>
					</form>
				</div>
				<!-- //정보입력 -->
				<p class="ac"><a href="" class="btn_joinB btn_col">&emsp;이전&emsp;</a> <a href="" class="btn_joinG btn_col">회원가입</a></p>
			</div>
			<!-- //회원가입 -->
			<!-- 여기까지 -->
		</div>
		
	</div>
	<!-- //join_container -->
	
</body>
</html>