<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<c:if test="${popupTy eq 'N' }">

			<script>
				$(document).ready(function() {
					var popCookie = getCookie("popCookie");
					if(popCookie != "hide") {
						$('.up_pop').show();
					}
				})
				
				$(function() {
					$('.showPopDetail').on('click', function() {
						
						$('#imgDetail').attr('src', $(this).data('image'));
						$('#imgDetail').attr('alt', $(this).data('alt'));
						
						$('#imgPop').show();
					});
				})
			</script>
			
			<!-- 템플릿-메인 미리보기 외 홈페이지  -->
			<c:if test="${ctx ne 'apple'}">
				<c:if test="${!empty popList}">
					<section class="up_pop" style="display:none">
						<ul id="upPopSlide">
							<c:forEach var="pop" items="${popList}" varStatus="status">
								<li>
									<input type="hidden" id="popupData<c:out value="${pop.popupInsttSn}"/>"
										data-width="<c:out value="${pop.popupWidth+30}"/>" data-height="<c:out value="${pop.popupHeight + 100}"/>"
										data-widthLc="<c:out value="${pop.widthLc}"/>" data-heightLc="<c:out value="${pop.heightLc}"/>"
										data-fileId="<c:out value="${pop.atchmnflId}"/>" data-fileList="<c:out value="${pop.atchFileList}"/>"
										data-image="<c:out value="${pop.bcrnImagePath}"/>"
									/>
									<a
										<c:if test="${pop.url eq '#' }">href="javascript:" class="showPopDetail"</c:if>
										<c:if test="${pop.url ne '#' }">href="${pop.url }"</c:if>
										<c:if test="${pop.url ne '#' and pop.newWinAt eq 'Y' }">target="_blank"</c:if>
										data-image="<c:out value="${pop.popupTemp eq 'A' ? pop.bcrnImagePath : pop.fileStreCours}"/>" data-alt="<c:out value="${pop.popupTitle }"/>">
										
											<c:if test="${pop.popupTemp eq 'A'}">
												<p class="img"><img src="${pop.bcrnImagePath}" alt="${pop.popupTitle}"></p>
											</c:if>
											<c:if test="${pop.popupTemp eq 'B' or pop.popupTemp eq 'C'}">
												<p class="img"><img src="${pop.fileStreCours}" alt="${pop.popupTitle}"></p>
											</c:if>
											<p class="txt"><c:out value="${pop.popupTitle}" escapeXml="false"/></p>
											<p class="btn viewPopupBtn" title="<c:out value="${pop.popupTitle}"/>" data-seq="<c:out value="${pop.popupInsttSn}"/>">자세히 보기</p>
									</a>
								</li>
							</c:forEach>
						</ul>
						<div class="control">
							<a href="#allPopupList" class="hash popuplst">팝업전체보기</a>
							<div class="count"><em class="current"></em><em class="total"></em></div>
							<a href="javascript:;" class="pop_close">오늘 하루 열지않기<i class="xi-close-circle" aria-hidden="true"></i></a>
						</div>
					</section>
				</c:if>
			</c:if>

			<!-- 템플릿-메인 미리보기  -->
			<!-- 레이어팝업 : 상단팝업 리스트-->
			<div class="lyrPopup" id="allPopupList">
				<div class="lyrWrap">
					<div class="inner">
						<h3><strong><c:out value="${htmlTitle }" /></strong> 팝업리스트</h3>
						<div class="cont">
							<div class="popuplst">
								<table>
									<caption><c:out value="${htmlTitle }" /> 팝업리스트 : 종류, 팝업타이틀, 바로가기링크 제공</caption>
									<%-- <colgroup>
										<col span="2" style="width:auto;">
										<col style="width:100px;">
									</colgroup> --%>
									<tbody>
										<c:if test="${!empty popList}">
										<c:forEach var="pop" items="${popList}" varStatus="status">
											<tr>
												<c:choose>
													<c:when test="pop.popUpTy eq 'Z'">
														<td class="cate"><span>팝업존</span></td>
													</c:when>
													<c:when test="pop.popUpTy eq 'N'">
														<td class="cate"><span>일반</span></td>
													</c:when>
												</c:choose>
												<td class="tit"><p>${pop.popupTitle}</p></td>

												<td>
													<a 
														<c:if test="${pop.url eq '#' }">href="javascript:" class="showPopDetail"</c:if>
														<c:if test="${pop.url ne '#' }">href="${pop.url }"</c:if>
														<c:if test="${pop.url ne '#' and pop.newWinAt eq 'Y' }">target="_blank"</c:if>
														data-image="<c:out value="${pop.popupTemp eq 'A' ? pop.bcrnImagePath : pop.fileStreCours}"/>" 
														data-alt="<c:out value="${pop.popupTitle }"/>" title="${pop.popupTitle}">바로가기
													</a>
												</td>
											</tr>
										</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="control">
						<a href="#allPopupList" class="hashClose">닫기 <i class="xi-close" aria-hidden="true"></i></a>
<!-- 						<a href="#allPopupList" class="hashClose">오늘하루열지않기</a> -->
					</div>
				</div>
			</div>
			<!-- //레이어팝업 : 상단팝업 리스트-->
			
			<!-- 레이어팝업 : 이미지 팝업 레이어 -->
			<div class="lyrPopup" id="imgPop">
				<div class="lyrWrap">
					<div class="inner">
						<div class="cont">
							<img id="imgDetail" src="" alt="">
						</div>
					</div>
					<div class="control">
						<a href="#imgPop" class="hashClose">닫기 <i class="xi-close" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
			<!-- //레이어팝업 : 이미지 팝업 레이어 -->
</c:if>

<c:if test="${popupTy eq 'B' }">

		<script type="text/javascript">
		$(function() {
			
			//리스트 팝업 호출 여부	
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

	<div id="wrap" class="openPop">
	
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
				<div style="background-color:#3b568f;background-size:${pop.popupWidth}px;width:${pop.popupWidth}px; height:20px; text-align:right;">
					<a href="javascript:" class="popupCookieSet" style="color:#fff;margin-right: 7px;" data-seq="${pop.popupInsttSn}">하루동안 열지 않음 [ 클릭 ]</a>
				</div>
			</div>
		</c:forEach>
		<!-- /팝업리스트 -->
		
	</div>

</c:if>
