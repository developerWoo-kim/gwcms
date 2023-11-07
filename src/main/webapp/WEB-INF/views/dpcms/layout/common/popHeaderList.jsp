<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
			<!-- 템플릿-메인 미리보기 외 홈페이지  -->
			<c:if test="${ctx ne 'apple'}">
				<c:if test="${!empty popList}">
					<section class="up_pop">
						<ul id="upPopSlide">
							<c:forEach var="pop" items="${popList}" varStatus="status">
								<li>
									<input type="hidden" id="popupData<c:out value="${pop.popupInsttSn}"/>"
										data-width="<c:out value="${pop.popupWidth+30}"/>" data-height="<c:out value="${pop.popupHeight + 100}"/>"
										data-widthLc="<c:out value="${pop.widthLc}"/>" data-heightLc="<c:out value="${pop.heightLc}"/>"
										data-fileId="<c:out value="${pop.atchmnflId}"/>" data-fileList="<c:out value="${pop.atchFileList}"/>"
									/>
									<a href="javascript:;">
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
									<colgroup>
										<col span="2" style="width:auto;">
										<col style="width:100px;">
									</colgroup>
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

												<td><a href="${pop.url}" <c:if test="${pop.url ne '#'}">rel="noopener noreferrer"</c:if> title="${pop.popupTitle}">바로가기</a></td>
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
						<a href="#allPopupList" class="hashClose">오늘하루열지않기</a>
					</div>
				</div>
			</div>
			<!-- //레이어팝업 : 상단팝업 리스트-->
