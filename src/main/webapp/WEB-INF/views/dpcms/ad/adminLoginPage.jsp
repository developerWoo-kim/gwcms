<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- <!–[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]–> -->
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<title>로그인</title>
<link href="/css/ap/admin.css" rel="stylesheet" />
<link href="/css/ap/common.css" rel="stylesheet" />

<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
<script src="/js/web/common/common.js"></script>

<link href="/css/com/jquery/jquery-confirm.min.css" rel="stylesheet">
<script src="/js/jquery-confirm.min.js"></script>
</head>

<body>

<div class="LoginBox">
	<h2>관리자 시스템 로그인</h2>
	<form name="adminLoginForm" id="adminLoginForm" method="post">
    <div class="box_ml">
        <p class="Log_img"><img src="/images/ap/am/login_img.png"></p>
        <c:if test="${!empty loginError}">
            <p class="error"><c:out value="${loginError}"/></p>
        </c:if>
        <div class="login_form">
        	<p class="id"><input name="username" id="mberId" type="text" placeholder="아이디" maxlength="80"></p>
        	<p class="pw"><input name="password" id="mberPassword" type="password" placeholder="비밀번호" autocomplete="off" maxlength="80"></p>
        	<p class="login"><a href="javascript:" id="appleLoginBtn" class="btn_Login">로그인</a></p>
        </div>
<%--        <div class="area_btn">--%>
<%--            <ul>--%>
<%--                <li><a href="">아이디찾기</a></li>--%>
<%--                <li><a href="">비밀번호 초기화/변경</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
    </div>
	</form>
</div>  
</body>

<script>

$(function(){
	//검색 (엔터)
	$('#mberId').keypress(function(event){
	     if ( event.which == 13 ) {
	    	 appleLogin();
	         return false;
	     }
	});
	
	//검색 (엔터)
	$('#mberPassword').keypress(function(event){
	     if ( event.which == 13 ) {
	    	 appleLogin();
	         return false;
	     }
	});
	
	//로그인
	$("#appleLoginBtn").click(function() {

        var mberId = $("#mberId").val();
        var mberPassword = $("#mberPassword").val();

        if (mberId == "") {
            $("#mberId").focus();
            alert("아이디를 입력해주세요.");
            return;
        }

        if (mberPassword == "") {
            $("#mberPassword").focus();
            alert("비밀번호를 입력해주세요.");
            return;
        }
        // 시큐리티 로그인
        $("#adminLoginForm")
            .attr("action", "/admin/ad/login")
            .submit();

	});

	// function appleLogin() {
	// 	var mberId = $("#mberId").val();
	// 	var mberPassword = $("#mberPassword").val();
	//
	// 	if (mberId == "") {
	// 		$("#mberId").focus();
	// 		alert("아이디를 입력해주세요.");
	// 		return;
	// 	}
	//
	// 	if (mberPassword == "") {
	// 		$("#mberPassword").focus();
	// 		alert("비밀번호를 입력해주세요.");
	// 		return;
	//
	// 	}
	//
	// 	$.ajax({
	// 		type: "POST",
	// 		dataType:"json",
	// 		data: $("#adminLoginForm").serialize(),
	// 		url: "/admin/ad/login",
	// 		success:function(result){
    //             if(result.status == "success") {
    //                 location.href =  "/admin/index";
    //             }
	//    		},
	//    		error:function(result) {
    //             var obj = result.responseJSON;
    //             if(typeof obj == "undefined" || obj == null || obj == "") {
    //                 alert("오류가 발생했습니다. 관리자에게 문의해주세요.");
    //             } else {
    //                 alert(result.responseJSON.message);
    //             }
	//    		}
	// 	});
	// }
	
	
});
</script>
</html>
