<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
<title>
login
</title>
</head>
<body bgcolor="#ffffff">
<center>통합인증 데모사이트-독립형</center>
<form action="./login_proc.jsp" method="post" name="login_form">
<center>
<label>User  id </label>&nbsp;&nbsp;  <input name="uid" type="text" value="admin" size="20" maxlength="20">
<br>
<label>password</label> <input name="password" type="password" value="123" size="20" maxlength="20">

<br>
<input name="login" value="Login" type="submit">
</center>
</form>
</body>

<iframe src="" width=0 height=0/>
</html>
