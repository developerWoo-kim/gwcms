<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="pageinfo">
    <p class="pge_totle">Total <strong>${pagination.totalListCnt}</strong>건</p>
    <p class="pge_num">페이지 <strong>${pagination.page}</strong><span>/</span><strong>${pagination.totalPageCnt}</strong></p>
</div>