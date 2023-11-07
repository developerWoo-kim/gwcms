<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>
	$(document).ready(function() {
		/** 게시물 등록 화면 */
		$(".postInsertPage").on("click", function() {
			$('#searchForm').attr('action','/<c:out value="${ctx}"/>/bm/post/manage-insertPage')
					.attr('method', 'POST').submit();
		})

		/** 게시물 상세 */
		$(".postInfoPage").on("click", function() {
			var postId = $(this).attr("data-id");
			$('#searchForm').attr('action','/<c:out value="${ctx}"/>/bm/post/'+ postId +'/info')
					.attr('method', 'POST').submit();
		})
	})

	function goSearch() {
		$('#searchForm').attr('action','/<c:out value="${ctx}"/>/bm/post/list')
				.attr('method', 'GET').submit();
	}
</script>

<h4 class="tit1">[<c:out value="${system.systemName}"/>]&nbsp; &nbsp;게시물 관리
	<button type="button" class="appleHpcmIcon" onClick="javascript:popupHelp('51')">도움말</button></h4>
<div class="box_st1 mgb5">
	<p class="ac">홈페이지에서 사용할 게시물을 조회, 추가, 수정, 삭제할 수 있습니다.</p>
</div>

<div class="top_box">
	<form id="searchForm" name="searchForm" method="GET" >
		<input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
		<input type="hidden" id="systemId" name="systemId" value="<c:out value='${condition.systemId}'/>"/>
		<input type="hidden" id="boardId" name="boardId" value="<c:out value='${condition.boardId}'/>"/>
		<div class="bbs_srch">
			<span class="col-sm-1 form-select">
				<select name="size" id="size" class="srchBox" title="페이지 목록 수를 선택해주세요.">
					<option value=10 title="10건" <c:if test="${pagination.pageSize eq '10'}">selected</c:if>>10건</option>
					<option value=30 title="30건" <c:if test="${pagination.pageSize eq '30'}">selected</c:if>>30건</option>
					<option value=50 title="50건" <c:if test="${pagination.pageSize eq '50'}">selected</c:if>>50건</option>
				</select>
			</span>
			<div class="srchForm">
				<input type="hidden" name="page" id="page" value="${pagination.page}" />
				<input type="text" name="searchText" id="searchText" title="검색 단어" class="col-sm-4"  value="<c:out value="${condition.searchText }"/>" placeholder="게시판명  or 아이디" maxlength="80">
				<button type="button" class="btnSearch" title="검색" onclick="goSearch()">검색</button>
			</div>
			<div class="srchBtn">
				<button class="btnTy_blue01 postInsertPage" type="button">게시물 등록</button>
			</div>
		</div>
	</form>

<c:import url="/WEB-INF/views/cmm/pagingCountForm.jsp" />
<div class="bbs_img">
	<ul class="bbs_PhotoA">
		<c:forEach var="list" items="${pagination.content}" varStatus="status">
			<li class="new" title="새글">
				<a href="javascript:" data-url="/<c:out value=""/>/na/ntt/selectNttInfo.do" class="black">
					<div class="img"><img src="<c:out value="${list.thumbFile.thumbFilePath}"/>" onerror="this.src='/images/co/na/noImg.gif'" alt="대표이미지" class="hoiztImg"></div>
					<p><c:out value="${list.postTitle}"/></p>
					<span class="date" title="작성일">작성일 : <c:out value="${list.createDateTime}"/></span>
				</a>
			</li>
		</c:forEach>
	</ul>
</div>




<!-- 게시판 리스트 -->
<%--<div class="photo_list2">--%>
<%--	<c:forEach var="ntt" items="${pagination.content}" varStatus="status">--%>
<%--		<ul>--%>
<%--			<li>--%>
<%--				<a href="javascript:" data-url="/<c:out value=""/>/na/ntt/selectNttInfo.do" data-nm="nttSn" data-param="" title="" class="black menuFormBtn">--%>
<%--					<div class="img"><img src="<c:out value=''/>" onerror="this.src='/images/co/na/noImg.gif'" alt="대표이미지"></div>--%>
<%--					<dl>--%>
<%--						<dt>--%>
<%--							제목&nbsp;--%>
<%--&lt;%&ndash;							<c:if test="${ntt.newCheck eq 'Y'}">&ndash;%&gt;--%>
<%--&lt;%&ndash;								<img alt="새글" src="/images/com/new_01.gif" style="height:9px;position: relative;width: 25px;">&ndash;%&gt;--%>
<%--&lt;%&ndash;							</c:if>&ndash;%&gt;--%>
<%--						</dt>--%>
<%--						<dd class="txt">조회수</dd>--%>
<%--						<dd class="date">--%>
<%--&lt;%&ndash;							<fmt:formatDate value="${ntt.regDt}" pattern="yyyy.MM.dd"/>&ndash;%&gt;--%>
<%--							<span>--%>
<%--								<!-- menuAuthAt 관리자 권한이 있을 시 Y값이 들어간다. 본인글이거나 관리자일 경우 작성자가 보이도록 수정 -->--%>
<%--&lt;%&ndash;								<c:choose>&ndash;%&gt;--%>
<%--&lt;%&ndash;									<c:when test="${sessionScope[loginInfo].mberId eq ntt.regId or menuAuthAt eq 'Y'}"><c:out value="${ntt.oriRegNm}"/></c:when>&ndash;%&gt;--%>
<%--&lt;%&ndash;									<c:otherwise><c:out value="${ntt.regNm}"/></c:otherwise>&ndash;%&gt;--%>
<%--&lt;%&ndash;								</c:choose>&ndash;%&gt;--%>
<%--								asdas--%>
<%--							</span>--%>
<%--						</dd>--%>
<%--					</dl>--%>
<%--				</a>--%>
<%--			</li>--%>
<%--		</ul>--%>
<%--	</c:forEach>--%>
<%--</div>--%>
<!-- //게시판 리스트 -->
<c:import url="/WEB-INF/views/cmm/pagingForm.jsp" />
