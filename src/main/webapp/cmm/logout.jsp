<%@ page contentType="text/html; charset=euc-kr" %>
<%@page import="com.ksign.access.api.*" %>
<%
	String SSO_SERVER = SSOService.getInstance().getServerScheme();
	//   returnUrl : 응용 커스터 마이징 필요
	String returnUrl = "http://" + request.getServerName() + "/";	
%>
<html>
<head>
<title>
login out
</title>


</head>
<body bgcolor="#ffffff">
<%
	String logoutParam = request.getParameter("logout");
	System.out.println("lgout PARAM: " + logoutParam);
	System.out.println("lgout SSO_SERVER: " + SSO_SERVER);

	request.getSession().invalidate();

	if(SSO_SERVER != null && !"1".equals(logoutParam)) {
		response.setHeader("Set-Cookie", "JSESSIONID="+session.getId()+"; Secure; SameSite=None; path=/; ");
%>
<script language="JavaScript">
//top.document.location = "<%=SSO_SERVER%>/sso/pmi-logout-url.jsp?pmi-logout-url=<%=SSO_SERVER%>/sso/pmi-logout.jsp&returl=<%=returnUrl%>";
</script>
<%
    }
%>
<a href="<%=request.getContextPath() %>/index.jsp"> 메인 페이지로 이동 </a>
</body>
</html>
