<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	
<c:if test="${!empty popCallAt}">
	<!-- 리스트 팝업 창 -->
	<div id="listPopup" class="listPopup" style="display:none;">
		<div class="list_box">
			<ul>
				<c:forEach var="pop" items="${popList}" varStatus="status">
					<input type="hidden" id="popupData<c:out value="${pop.popupInsttSn}"/>"   
						data-width="<c:out value="${pop.popupWidth+45}"/>" data-height="<c:out value="${pop.popupHeight + 115}"/>"
						data-widthLc="<c:out value="${pop.widthLc}"/>" data-heightLc="<c:out value="${pop.heightLc}"/>"						   
						data-fileId="<c:out value="${pop.atchmnflId}"/>" data-fileList="<c:out value="${pop.atchFileList}"/>"
					/>
					<li>
						<a href="javascript:" id ="viewPopupBtn<c:out value="${pop.popupInsttSn}"/>" class="viewPopupBtn" data-seq="<c:out value="${pop.popupInsttSn}"/>" title="<c:out value="${pop.popupTitle}"/>">
							<c:out value="${pop.popupTitle}" escapeXml="false"/>
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</c:if>

<!-- 팝업 리스트 -->
<c:forEach var="pop" items="${popList}" varStatus="status">
	<div id="popupNormal${pop.popupInsttSn}" style="display:none;">
		<c:if test="${pop.popupTemp eq 'A'}">
			<a href="${pop.url}" <c:if test="${pop.url ne '#'}">rel="noopener noreferrer"</c:if> <c:if test="${pop.url ne '#' && pop.newWinAt eq 'Y'}">target="_blank"</c:if> title="${pop.popupTitle}">
				<div id="popupBg${pop.popupInsttSn}" style="background:url('${pop.bcrnImagePath}') no-repeat; background-size:${pop.popupWidth}px ${pop.popupHeight}px; width:${pop.popupWidth}px; height:${pop.popupHeight}px">
					<div class="popupContent" style="margin:0 auto; width:88%; height:90%; padding-top:5%; overflow-y:auto;">
						${pop.popupCn}
					</div>
				</div>
			</a>
		</c:if>
		<c:if test="${pop.popupTemp eq 'B'}">
			<a href="${pop.url}" <c:if test="${pop.url ne '#'}">rel="noopener noreferrer"</c:if> <c:if test="${pop.url ne '#' && pop.newWinAt eq 'Y'}">target="_blank"</c:if> title="${pop.popupTitle}">
				<div id="popupBg${pop.popupInsttSn}" style="background:url('${pop.fileStreCours}') no-repeat; background-size:${pop.popupWidth}px ${pop.popupHeight}px; width:${pop.popupWidth}px; height:${pop.popupHeight}px">
					<div class="popupContent" style="margin:0 auto; width:88%; height:90%; padding-top:5%; overflow-y:auto;">
						${pop.popupCn}
					</div>
				</div>
			</a>
		</c:if>
		<c:if test="${pop.popupTemp eq 'C'}">
			<a href="${pop.url}" <c:if test="${pop.url ne '#'}">rel="noopener noreferrer"</c:if> <c:if test="${pop.url ne '#' && pop.newWinAt eq 'Y'}">target="_blank"</c:if> title="${pop.popupTitle}">
				<img src="${pop.fileStreCours}" width="${pop.popupWidth}" height="${pop.popupHeight}" alt="${pop.popupTitle}"/>
			</a>
		</c:if>
		<c:if test="${!empty pop.atchmnflId && !empty pop.atchFileList}">
			<c:set var="fileCnt" value="${fn:length(pop.atchFileList)}"/>
			<%-- <c:set var="fileHeight" value="${fileCnt*20}"/> --%>
			<%-- <c:choose>
				<c:when test="${fileCnt eq '1'}"><c:set var="fileHeight" value="${33}"/></c:when>
				<c:when test="${fileCnt eq '2'}"><c:set var="fileHeight" value="${55}"/></c:when>
				<c:when test="${fileCnt eq '3'}"><c:set var="fileHeight" value="${77}"/></c:when>
				<c:otherwise></c:otherwise>
			</c:choose> --%>
			<div style="width:${pop.popupWidth}px;height:${fileHeight}px;padding-top:10px; padding-left:20px; border:1px solid #ddd;">
				<c:forEach var="files" items="${pop.atchFileList }" varStatus="status">
					첨부${status.count } : 
					<a href="javascript:" onclick="javascript:mfn_fileDownload('${files.fileKey}')" title="첨부자료 다운로드" style="padding-right:25px; background: url(/images/ap/pm/icoFile.png) right center no-repeat;">
						${files.orignlFileNm }
					</a>
					<br/>
				</c:forEach>
			</div>
		</c:if>
		<!-- <div style="background-color:#3b568f; height:20px; text-align:right; width:100%"> -->
		<%-- <div style="background-color:#3b568f; height:20px; text-align:right; width:${pop.popupWidth}px"> --%>
		<div style="background-color:#3b568f;background-size:${pop.popupWidth}px;width:${pop.popupWidth}px; height:20px; text-align:right;">
			<a href="javascript:" class="popupCookieSet" style="color:#fff;margin-right: 7px;" data-seq="${pop.popupInsttSn}">하루동안 열지 않음 [ 클릭 ]</a>
		</div>
	</div>
</c:forEach>
<!-- /팝업리스트 -->
