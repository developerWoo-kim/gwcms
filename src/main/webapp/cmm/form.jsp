<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="com.ksign.access.api.*"%>
<%
	
	String retURL = (String)request.getParameter("returnUrl");
	
	if(retURL != null){
		response.sendRedirect(retURL);
	} else {
		response.sendRedirect("/");
	}
%>
