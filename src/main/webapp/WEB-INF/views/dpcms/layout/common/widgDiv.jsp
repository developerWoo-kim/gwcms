<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="parWidgId" value="${param.parWidgId }" />
<c:set var="parWidgClass" value="${param.parWidgClass }" />
<c:set var="RSwidgInfoNm" value="RSwidgInfo${parWidgId }" />
<c:set var="widgDivUrlNm" value="widgDiv${parWidgId }Url" />

					<div id="widgDiv<c:out value="${parWidgId }"/>" class="widgDiv <c:out value="${parWidgClass }" escapeXml="false"/>" 
						data-id="<c:out value="${parWidgId }" />" data-seq="<c:out value="${requestScope[RSwidgInfoNm].sysWidgSn }"/>" 
						data-widgSn="<c:out value="${requestScope[RSwidgInfoNm].widgSn }"/>">
						<c:if test="${!empty requestScope[widgDivUrlNm] }">
							<c:import url="${requestScope[widgDivUrlNm] }">
								<c:param name="sysWidgId" value="${parWidgId }" />
							</c:import>
						</c:if>
					</div>