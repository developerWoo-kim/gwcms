<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- footer -->
<footer id="footer">
    <div class="container">
    	<div class="footer_link">
			<ul>
				<li id="indvdl">
                    <a href="#none" class="mdOpn"><strong>개인정보처리방침</strong><span class="hid">모달창 열기</span></a>
                    <div class="mdBox">
                        <h3>상세보기</h3>
                        <div class="mdBoxCont">
                            <a href="javascript:" onclick="fn_synapViewer('<c:out value="${ctx}"/>','INDVDL')" class="btn_view" target="_blank"><i class="xi-search" aria-hidden="true"></i> 바로보기</a>
                            <a href="javascript:" onclick="fn_bbsMvmn('<c:out value="${ctx}"/>','INDVDL')" class="btn_view"><i class="xi-document" aria-hidden="true"></i> 이전 게시글 보기</a>
                        </div>
                        <button type="button" class="mdCls"><i class="xi-close" aria-hidden="true"></i> <span class="hid">개인정보처리방침 모달창 닫기</span></button>
                    </div>
                </li>
				<li id="vidoper">
				    <a href="#none" class="mdOpn"><strong>영상정보처리방침</strong><span class="hid">모달창 열기</span></a>
                    <div class="mdBox">
                        <h3>상세보기</h3>
                        <div class="mdBoxCont">
                            <a href="javascript:" onclick="fn_synapViewer('<c:out value="${ctx}"/>','VIDOPER')" class="btn_view" target="_blank"><i class="xi-search" aria-hidden="true"></i> 바로보기</a>
                            <a href="javascript:" onclick="fn_bbsMvmn('<c:out value="${ctx}"/>','VIDOPER')" class="btn_view"><i class="xi-document" aria-hidden="true"></i> 이전 게시글 보기</a>
                        </div>
                        <button type="button" class="mdCls"><i class="xi-close" aria-hidden="true"></i> <span class="hid">영상정보처리방침 모달창 닫기</span></button>
                    </div>
				</li>
				<li><a href="/<c:out value="${ctx}"/>/ft/stplat/selectStplatView.do">이용약관</a></li>
				<li><a href="/<c:out value="${ctx}"/>/ft/wtrm/selectWtrmEmailView.do">이메일무단수집거부</a></li>
				<li><a href="/<c:out value="${ctx}"/>/ft/cpyrht/selectCpyrhtView.do">저작권신고</a></li>
			</ul>
		</div>
		<div class="visitant">
			<h2>방문자 통계</h2>
			<ul>
				<c:set var="todayCnt" value="${todayCount }" />
				<c:set var="totalCnt" value="${totalCount }" />
				<c:if test="${empty todayCount}">
					<c:set var="todayCnt" value="0" />
				</c:if>
				<c:if test="${empty totalCount}">
					<c:set var="totalCnt" value="0" />
				</c:if>
				<li class="today"><strong>Today</strong><c:out value="${todayCnt }" />명</li>
				<li class="total"><strong>Total</strong><c:out value="${totalCnt }" />명</li>
			</ul>
		</div>

		<c:set var="hmpgInfo" value="${ssId}_SShmpgInfo_${ctx}" />

		<c:if test="${not empty sessionScope[hmpgInfo]}">
			<address>
				<c:if test="${!empty sessionScope[hmpgInfo].hiHmpginfoAdres}">
					<c:out value="${sessionScope[hmpgInfo].hiHmpginfoAdres}"/>&nbsp;&nbsp;|&nbsp;&nbsp;
				</c:if>
				<c:if test="${!empty sessionScope[hmpgInfo].hiHmpginfoTelno}">
					Tel : <c:out value="${sessionScope[hmpgInfo].hiHmpginfoTelno}"/>&nbsp;&nbsp;|&nbsp;&nbsp;
				</c:if>
				<c:if test="${!empty sessionScope[hmpgInfo].hiHmpginfoFxnum}">
					Fax : <c:out value="${sessionScope[hmpgInfo].hiHmpginfoFxnum}"/>&nbsp;&nbsp;
				</c:if>
				<c:if test="${!empty sessionScope[hmpgInfo].hiHmpginfoEmail}">
					|&nbsp;&nbsp;E-Mail : <c:out value="${sessionScope[hmpgInfo].hiHmpginfoEmail}"/>
				</c:if>
	                    </address>
		</c:if>
		<c:if test="${empty sessionScope[hmpgInfo]}">
			<address>
				<span>(우 30019) 세종특별자치시 조치원읍 내창천로 48</span>
				<span>홈페이지 문의 : 070-5147-5065</span>
			</address>
		</c:if>

		<c:if test="${not empty sessionScope[hmpgInfo].hiHmpginfoCopyright}">
			<p class="copyright"><c:out value="${sessionScope[hmpgInfo].hiHmpginfoCopyright}"/></p>
		</c:if>
		<c:if test="${empty sessionScope[hmpgInfo].hiHmpginfoCopyright}">
			<p class="copyright">Copyright (c) 2014 BY SEJONG CITY OFFICE OF EDUCATION All rights reserved.</p>
		</c:if>
		<a href="" class="btn_top"><i class="xi-angle-up" aria-hidden="true"></i><em class="hid">상단이동</em></a>
    </div>
</footer>
<!-- // footer -->
