<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--공통 메뉴 Form -->
<form name="mainMenuForm" id="mainMenuForm" method="post">
	<input type="hidden" name="mi" id="nowMenuId" value="<c:out value="${mi}"/>" />
	<input type="hidden" name="paramNm" id="paramNm" value=""/>
	<input type="hidden" name="paramVal" id="paramVal" value=""/>
</form>
<!--/공통 메뉴 Form -->
	
<script>
$(function() {
	
	//공통 submit
	$(".menuFormBtn").click(function(){
		var paramVal = $(this).attr('data-param'); 
		var paramNm = $(this).attr('data-nm');
		var paramUrl = $(this).attr('data-url');
		$("#paramVal").val(paramVal);
		$("#paramNm").val(paramNm);
		setTrimMenuId();
		$("#mainMenuForm").attr('action', paramUrl).submit();
	});
	
});

//파라미터 페이지 이동 
function goParamPage( setVal, setNm, setUrl ) {
	$("#paramNm").val(setNm);
	$("#paramVal").val(setVal);
	setTrimMenuId();
	$("#mainMenuForm").attr('action', setUrl).submit();
};

//메뉴 아이디 공백제거
function setTrimMenuId(){
	var nowMenuId = $.trim($("#nowMenuId").val());
	$("nowMenuId").val(nowMenuId);
};
</script>
	
	 
	
	

	