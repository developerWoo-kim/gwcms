<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	//String errorMsg = new String(request.getParameter("errorMsg").getBytes("8859_1"), "MS949");
	String errorMsg = request.getParameter("errorMsg");
	String errorCode = request.getParameter("errorCode");
	String msg = "";
%>
<html>
<head>
<title>
errorPage
</title>
</head>
<body bgcolor="#ffffff">
<h1>
<li> error message :: <%=errorMsg%>
<li> error code :: <%=errorCode%>
</h1>siteId:<%=request.getParameter("siteId") %>
</body>
</html>