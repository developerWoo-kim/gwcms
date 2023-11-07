<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.ksign.access.api.SSOService" %>
<%@ page import="com.ksign.access.api.*" %>
<%@ page import="ksign.jce.util.Base64"%>


<% 
	String SSO_SERVER = SSOService.getInstance().getServerScheme();
	String GID = SSOService.getInstance().getGid();
	String AGENT_ADDR = "http://" + request.getServerName()+ ":" + request.getServerPort() + request.getContextPath();

%>
<html>
<head>
<title>login</title>

</head>
<body bgcolor="#ffffff">
<center>통합인증 데모사이트-통합형 </center>
<form  method="post" name="login_form" action="<%=SSO_SERVER %>/pmi-sso-login-uid-password.jsp">
<center>
<label>User  id </label>&nbsp;&nbsp;  <input id="uid" name="uid" type="text" value="admin" size="20" maxlength="20"><br>
<label>password</label> <input id="password" name="password" type="password" value="123" size="20" maxlength="20">

<br>
<label>gid:</label>  <input name="gid" type="text" value="<%=GID %>" size="20" maxlength="20"> <br>
<label>returl:</label>  <input name="returl" type="text" size="20" maxlength="20" value="<%=AGENT_ADDR %>/sso/index.jsp"> <br>

<input type="submit" value="Login">

</form>

</body>
</html>
