<%@page import="com.ksign.access.sso.sso10.SSO10Conf"%>
<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="com.ksign.access.api.*"%>
<%
	SSORspData rspData = null;

	SSOService ssoService = SSOService.getInstance();

	rspData = ssoService.ssoGetLoginData(request);

	String retURL = (String)request.getParameter("returnurl");
	
	if(retURL != null){
		response.sendRedirect(retURL);
	}
%>
