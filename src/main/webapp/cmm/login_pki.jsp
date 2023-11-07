<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.ksign.access.api.SSOService" %>
<%@ page import="com.ksign.access.api.*" %>
<%@ page import="ksign.jce.util.Base64"%>
<%@ page import="java.security.SecureRandom"%>

<% 
	String SSO_SERVER = SSOService.getInstance().getServerScheme();
	String GID = SSOService.getInstance().getGid();
	String AGENT_ADDR = "http://" + request.getServerName()+ ":" + request.getServerPort() + request.getContextPath();

	SecureRandom sr= new SecureRandom();
	sr.nextBoolean();
	byte[]  bChallenge = new byte[30]; 
	sr.nextBytes(bChallenge);
	String sChallenge = Base64.encode2(bChallenge);
	session.setAttribute("challenge", sChallenge);
%>
<html>
<head>
<title>login</title>

<script type="text/javascript" src="http://www.java.com/js/deployJava.js" ></script>
<script type="text/javascript" src="../pki/scripts/KcaseAppletConfig.js"  charset="utf-8"></script>
<script type="text/javascript" src="../pki/scripts/KCaseInstall.js"  charset="utf-8"></script>
<script type="text/javascript" src="../pki/scripts/KCaseAppletService.js"  charset="utf-8"></script>
<script type="text/javascript" src="../pki/scripts/example.js"  charset="utf-8"></script>  

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

<input type="hidden" name="signData" id="signData" value="" /> 
<input type="hidden" name="signAndEnvData" id="signAndEnvData" value="" />
<input type="hidden" value="" id="signeddata"  name="signeddata" size="0">
<input type="hidden" name="ssd" id="ssdcheck"/>
<input type="hidden" id="plaintext" >
<input type="hidden" id="sChallenge" value="<%=sChallenge %>"/>

<input type="submit" value="Login">
<input name="login_cert" value="Cert_Login" type="button" onClick="javascript:this.form.action='<%=SSO_SERVER %>/pmi-sso-login-certificate.jsp'; login(this.form);"> 

</form>

</body>
</html>
