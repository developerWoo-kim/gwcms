<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="com.ksign.access.api.*" %>
<%@page import="com.ksign.access.sso.sso10.SSO10Conf"%>
<%
	SSORspData rspData = null;
	SSOService ssoService = SSOService.getInstance();
    rspData = ssoService.ssoGetLoginData(request);
%>

UID : <%=rspData.getAttribute(SSO10Conf.UIDKey)%> <br />
TS : <%=rspData.getAttribute(SSO10Conf.TSKey)%> <br />
AM : <%=rspData.getAttribute(SSO10Conf.AMKey)%> <br />
CP : <%=rspData.getAttribute(SSO10Conf.CPKey)%> <br />
<BR>
SITE_ID : <%=rspData.getAttribute("SITE_ID")%> <br />
SITE_NM : <%=rspData.getAttribute("SITE_NM")%> <br />
SYS_TY_CODE : <%=rspData.getAttribute("SYS_TY_CODE")%> <br />
INSTT_CODE : <%=rspData.getAttribute("INSTT_CODE")%> <br />
USER_SE_CODE : <%=rspData.getAttribute("USER_SE_CODE")%> <br />
USER_ID : <%=rspData.getAttribute("USER_ID")%> <br />
USER_NM : <%=rspData.getAttribute("USER_NM")%> <br />
EMAIL_ADRES : <%=rspData.getAttribute("EMAIL_ADRES")%> <br />
MOBLPHON_NO : <%=rspData.getAttribute("MOBLPHON_NO")%> <br />
PHOTO_STRE_FILE_NM : <%=rspData.getAttribute("PHOTO_STRE_FILE_NM")%> <br />
ESTN_AUTH : <%=rspData.getAttribute("ESTN_AUTH")%> <br />
SNS_EMAIL : <%=rspData.getAttribute("SNS_EMAIL")%> <br />
ST_YEAR : <%=rspData.getAttribute("ST_YEAR")%> <br />
ST_GRADE : <%=rspData.getAttribute("ST_GRADE")%> <br />
ST_SEMSTR : <%=rspData.getAttribute("ST_SEMSTR")%> <br />
ST_CLASS : <%=rspData.getAttribute("ST_CLASS")%> <br />
ST_CLASS_NM : <%=rspData.getAttribute("ST_CLASS_NM")%> <br />
ST_NUMBER : <%=rspData.getAttribute("ST_NUMBER")%> <br />
PASSWORD_UPDUSR_PNTTM : <%=rspData.getAttribute("PASSWORD_UPDUSR_PNTTM")%> <br />
RECENT_LOGIN_PNTTM : <%=rspData.getAttribute("RECENT_LOGIN_PNTTM")%> <br />
ACCES_APPN_IP : <%=rspData.getAttribute("ACCES_APPN_IP")%> <br />
LOGIN_FAILR_CO : <%=rspData.getAttribute("LOGIN_FAILR_CO")%> <br />

</body>
</html>
