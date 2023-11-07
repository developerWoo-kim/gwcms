<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

                               <div class="snsBox">
                                    <button type="button" class="btnPrint"><span>인쇄</span></button>
                                    <button type="button" class="btnShare"><span>공유</span></button>
                                    <div class="sns_more">
                                    	<button type="button" class="btnFbook" title="페이스북"><span>페이스북</span></button>
                                        <button type="button" class="btnTwt" title="트위터"><span>트위터</span></button>
                                        <button type="button" class="btnBlog" title="블로그"><span>블로그</span></button>
                                        <button type="button" class="btnYtb" title="유투브"><span>유투브</span></button>
                                        <button type="button" class="btnInstar" title="인스타그램"><span>인스타그램</span></button>
                                    </div>
                                </div>                                    
                                <h2 id="pageTitle"><c:out value="${menuTitle }" escapeXml="false"/></h2>



