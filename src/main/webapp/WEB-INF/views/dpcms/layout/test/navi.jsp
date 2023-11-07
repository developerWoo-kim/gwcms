<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

							<h1 class="hid"><a href="#" name="subContent"><c:out value="${menuTitle }" escapeXml="false"/></a></h1>
							<p id="location"> 
								<a href="/${ctx}/main.do"><img src="/images/web/test/sub/icoHome.gif" alt="메인페이지"></a> 
								<c:set var="naviReqKey" value="${ctx }_${currMenuId }_menuLoc" />
								<c:out value="${requestScope[naviReqKey] }" escapeXml="false" />
							</p>
                    <!-- 라인맵 -->
                    <!-- <div class="box_line_map">
                        <div class="box_line_map_1 clearfix">
                            <p> <span class="sp_home">HOME</span> <span class="span_gt">&gt;</span> <span class="txt">교육지원청소개</span> <span class="span_gt">&gt;</span> </p>
                            <div class="box_line_map_2"> <a href="#wrap">연혁<span class="sp_img"></span></a>
                                <div class="box_snb_1">
                                    <ul class="ul_snb_2">
                                        <li><a href="#">교육장 인사말</a></li>
                                        <li class="on"><a href="#">연혁</a></li>
                                        <li><a href="#">부서업무안내</a></li>
                                        <li><a href="#">역대교육장</a></li>
                                        <li><a href="#">학교현황</a></li>
                                        <li><a href="#">정선교육도서관</a></li>
                                        <li><a href="#">오시는길</a></li>
                                    </ul>
                                </div>
                            </div>
                            <p><span class="span_gt">&gt;</span> </p>
                            <div class="box_line_map_2"> <a href="#wrap">연혁<span class="sp_img"></span></a>
                                <div class="box_snb_1">
                                    <ul class="ul_snb_2">
                                        <li class="on"><a href="#">연혁</a></li>
                                        <li><a href="#">교육방향</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div> -->
                    <!-- //라인맵 -->
                    <hr>



