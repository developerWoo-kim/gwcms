<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<script>
$(function () {
	
	//리스트 팝업 : 보기, 취소
	$(".viewPopListBtn").click(function(){
		var btnTy = $(this).attr("id");
		
		if ( btnTy == "close" ) {
				//팝업 목록 닫기
				$(".pop_header").hide();	
			
		} else {
			
			$("#listPopup").dialog({
			    autoOpen: true,
			    modal: false,
			    resizeable : false,
			    title: "${htmlTitle} 팝업 목록",
			    width: 380,
			    height: 350,
			    show:{
			  		effect:"blind",
			  		duration: 100
			    },
			    hide:{
			   	 	effect:"blind",
			   	 	duration: 100
			    },						    
			    position: {my:'left+50 top+50', at: 'left top' }
			}).dialog('open');	
			
		}
		
	});
	
	//리스트 팝업 : 팝업 보기 
	$(".viewPopupBtn").click(function(){
		var popupSn = $(this).attr("data-seq");
		var popupTitle = $(this).attr("title"); 
		var popupWidth = $("#popupData"+popupSn).attr("data-width");
		var popupHeight = $("#popupData"+popupSn).attr("data-height");
		var popupWidthLc = $("#popupData"+popupSn).attr("data-widthLc");
		var popupHeightLc = $("#popupData"+popupSn).attr("data-heightLc");
		var popupFileId = $("#popupData"+popupSn).attr("data-fileId");
		var popupFileList = $("#popupData"+popupSn).attr("data-fileList");
		
		
		var fileHeight = "";
		if( popupFileId != "" && popupFileList != "" ) {
			fileHeight = popupFileList.split("},").length;
			popupHeight = parseInt(popupHeight) + parseInt(fileHeight)*20;
			popupWidth = parseInt(popupWidth) + parseInt(fileHeight)*5;
			
		}
			$("#popupNormal"+popupSn).dialog({
			    autoOpen: true,
			    modal: false,
			    resizeable : false,
			    title: popupTitle,
			    width: popupWidth,
			    height: popupHeight,
			    show:{
			  		effect:"blind",
			  		duration: 100
			    },
			    hide:{
			   	 	effect:"blind",
			   	 	duration: 100
			    },						    
			    position: {my:'left+'+popupWidthLc+' top+'+popupHeightLc+'', at: 'left top'}
			}).dialog('open');	
		
	});
	
	
	
});
	
$(document).ready(function(){
	
	// 리스트 팝업 호출 여부	
	var popCallAt = "<c:out value="${popCallAt}"/>";
	
	// 팝업 호출 : 기본 창 팝업
	if (popCallAt == "") {
		
		<c:forEach var="pop" items="${popList}" varStatus="status">
		
		<c:set var="popWidth" value="${pop.popupWidth + 45}"/>
		<c:set var="popHeight" value="${pop.popupHeight + 115}"/>
		<c:if test="${!empty pop.atchmnflId && !empty pop.atchFileList}">
			<c:set var="fileCnt" value="${fn:length(pop.atchFileList)}"/>
			<c:set var="fileHeight" value="${fileCnt*20}"/>
			<c:set var="popHeight" value="${popHeight + fileHeight}"/>
		</c:if>
		
		var popupWidthLc = parseInt(<c:out value="${pop.widthLc}"/>);
		var popupheightLc = parseInt(<c:out value="${pop.heightLc}"/>);
		
		var usePopYN = getCookie("popCookie${pop.popupInsttSn}");
		if(usePopYN != "hide") {
			$("#"+"popupNormal${pop.popupInsttSn}").dialog({
			    autoOpen: true,
			    modal: false,
			    resizeable : false,
			    title: "${pop.popupTitle}",
			    width: ${popWidth},
			    height: ${popHeight},
			    show:{
			  		effect:"blind",
			  		duration: 100
			    },
			    hide:{
			   	 	effect:"blind",
			   	 	duration: 100
			    },						    
			    position: {my:'left+'+popupWidthLc+' top+'+popupheightLc+'', at: 'left top'}
			}).dialog('open');		
		}
		
		</c:forEach>
	}
});
	
</script>	
