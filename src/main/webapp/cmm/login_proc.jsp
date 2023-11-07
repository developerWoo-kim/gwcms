<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>
<%@ page import="com.ksign.access.sso.conf.SSOConfManager" %>
<%@ page import="com.ksign.access.api.*"%>
<%!
    // -------------------------------------------------------------------------
    //  [��ƿ] �α��� ���� �߻� ��, alert() ��� �� ���� �������� �̵��ϴ� �޼ҵ�
    // -------------------------------------------------------------------------
    public void sendAlert(HttpServletResponse resp, String alertMsg, String nextURI) throws IOException {

        alertMsg = alertMsg.replaceAll("\"", "\\\"");
        alertMsg = alertMsg.replaceAll("\r", "\\r");
        alertMsg = alertMsg.replaceAll("\n", "\\n");

        String msg = 
            "<script language=\"javascript\">\r\n" +
            "  alert(\"" + alertMsg + "\");\r\n" +
            "  top.location.href = \"" + nextURI + "\";\r\n" +
            "</script>\r\n";

        resp.setCharacterEncoding("MS949");
        // resp.setContentLength();

        PrintWriter out = resp.getWriter();
        out.println(msg);
        out.flush();
    }
%>
<%
	String uid = request.getParameter("uid");
   	String passwd = request.getParameter("password");
	//String federation = request.getParameter("federation");
	//String mac_add = request.getParameter("mac");
	
	// =========================================================================
	//  [AP.1] ���̵�/�н����� ����
	// =========================================================================
	if(uid == null || passwd == null){
		String alertMsg = "����� ID�� �Է��Ͻñ� �ٶ��ϴ�.";
		String nextURI = "../index.jsp";
		sendAlert(response, alertMsg, nextURI);
		return;
	} 

	// =========================================================================
	//  [AP.2] was ���� ���� ����
	// =========================================================================
	session.setAttribute("uid", uid);
	session.setAttribute("ip", request.getRemoteAddr());
		
	// ============================= SSO ���� ���� =============================
	
	// =========================================================================
	//  <SSO.1> SSO ���� ��ü ȹ��
	// =========================================================================
	SSOService ssoService = null;
	ssoService = SSOService.getInstance();		
			
	// =========================================================================
    //  <SSO.2> ������ū �߱�: �߰� �Ӽ����� ����
    //    - ����ý��ۿ��� SSO ó�� �� �ʿ���ϴ� �߰� ������ ������ū�� ����
    //      �����ϰ� �ŷ��Ҽ� �ִ� ������� �����ϱ� ���� ���
    //    - eg. �̸�/�μ�/����/����/���� ��
    // =========================================================================
    String avps = "name=hong$nick=ong$test=testValue$order=view";
	    	
   	// =========================================================================
	//  <SSO.3> ���� ��ū ���� ��û 
	//   returnUrl : ���� Ŀ���� ����¡ �ʿ�
	// =========================================================================
	String reqCtx = request.getContextPath();
	String returnUrl = "http://" + request.getServerName()+":"+ request.getServerPort() + reqCtx + "/index.jsp";
	//String agentIp = request.getLocalAddr();
	String agentIp = request.getRemoteAddr();
	
	// case.1. SSO API ������ SSO ������ �����̷�Ʈ ����

		SSORspData rspData = null;	

		rspData = ssoService.ssoReqIssueToken(
								  request,	               	// ���� ��û ��ü
								  response,					// ���� ���� ��ü
								  "form-based",				// ���� ���
								  uid,						// ���̵�
								  avps,						// ������ū : �߰� �Ӽ����� ����
								  returnUrl, 				// return url
								  agentIp,	// agent ip
								  request.getRemoteAddr());			    	// client ip
		
		if(rspData != null && rspData.getResultCode() == -1) {
			String alertMsg = "����� ������ū ��û���� ������ ���� �Ͽ����ϴ�. �ý��� ��ü �α����� �����մϴ�.";
			String nextURI = reqCtx + "/index.jsp";
			sendAlert(response, alertMsg, nextURI);
			return;
		}
	

	/*
	// case.2. ���� jsp ����  SSO ������ �����̷�Ʈ ����  
	String issue = 
	ssoService.ssoReqIssueTokenToString(
							  request,	            	// ���� ��û ��ü
        				      response,					// ���� ���� ��ü
                              "form-based",				// ���� ���
                              uid,				    	// ���̵�
                              avps,		            	// ������ū : �߰� �Ӽ����� ����
                              returnUrl,            	// return url
                              request.getRemoteAddr(),	// client ip
                              agentIp);					// agent ip

	if(issue == null ){
		String alertMsg = "����� ������ū ��û���� ������ ���� �Ͽ����ϴ�. �ý��� ��ü �α����� �����մϴ�.";
		String nextURI = "index.jsp";
		sendAlert(response, alertMsg, nextURI);
		return;
	} 
    response.sendRedirect(issue);
    */
    
	if(true) return;
	
	// ============================= SSO ���� �� =============================	
%>