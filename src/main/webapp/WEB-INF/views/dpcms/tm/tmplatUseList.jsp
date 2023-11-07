<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
</style>

<script>
	$(document).ready(function(){
		$("#tabs").tabs().addClass( "ui-tabs-vertical ui-helper-clearfix" );
		$("#tabs li").removeClass( "ui-corner-top" ).addClass( "ui-corner-left" );

		/** 템플릿 선택 */
		$(".tmpltSelect").click(function() {
			if(!confirm('템플릿을 선택하시겠습니까?')){
				return;
			}

			$('#templateId').val($(this).attr('data-id'));
			$('#templateType').val($(this).attr('data-ty'));

			$('.selTmplatId').text($(this).attr('data-id'));

			$('#tmpltDiv').bPopup().close();
		})
	});
</script>
<div id="tabs" class="tmplatTab_st">
	<ul>
	<c:forEach var="tmplat" items="${templateList }" varStatus="status">
		<li><a style="width: 100%" href="#tabs-<c:out value="${status.count }"/>">템플릿<c:out value="${status.count }"/>번 - <c:out value="${tmplat.templateName }"/>
		</a></li>
	</c:forEach>
	</ul>
	
	<c:forEach var="template" items="${templateList }" varStatus="status">
	<div id="tabs-<c:out value="${status.count }"/>">
		<c:if test="${template.templateId ne retMap.currTmplatId }">
			<button type="button" class="btnTy_blue01 fr tmpltSelect" data-id="<c:out value="${template.templateId }"/>" data-ty="<c:out value="${template.templateType }"/>">템플릿 선택</button>
		</c:if>
		<h2 class="tit1 mgt30">템플릿 상세정보
		</h2>
		<p>
			<div class="bbs_WriteA">
				<table class="detail_tb">
					<colgroup>
						<col style="width:10%">
						<col style="width:15%">
						<col style="width:10%">
						<col style="width:15%">
						<col style="width:10%">
						<col style="width:15%">
						<col style="width:10%">
						<col style="width:15%">
					</colgroup>
					<tbody id="tmpltContent">
						<tr>
							<th scope="row">템플릿 <br>아이디</th>
							<td class="font_b" colspan="3"><c:out value="${template.templateId }"/>&nbsp;<c:if test="${template.templateId eq retMap.currTmplatId }">(현재 템플릿)</c:if></td>
							<th scope="row">템플릿명</th>
							<td class="font_b" colspan="3"><c:out value="${template.templateName }" escapeXml="false" /></td>
						</tr>   
						<tr>
							<th scope="row">미리보기</th>
							<td colspan="7">
								<div class="txtbox">
<%--									<p><img src="<c:out value="${tmplat.filePath}"/>" width="100%"  alt="<c:out value="${tmplat.orignlFileNm  }"/>" /></p>--%>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">설명</th>
							<td colspan="7"><c:out value="${template.templateDescription }" escapeXml="false"/></td>
						</tr>
					</tbody>
				</table>
			</div>
		</p>
	</div>
	</c:forEach>
</div>
