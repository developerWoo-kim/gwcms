<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
	var type ="${resultMap.type}";
	var userKey ="${resultMap.userKey}";
	var userEmail ="${resultMap.userEmail}";
	var userName ="${resultMap.userName}";
<c:choose>
	<c:when test="${!empty resultMap}">
		opener.parent.snsLogin(userKey, userName, userEmail, type);
		self.close();
	</c:when>
</c:choose>
</script>

