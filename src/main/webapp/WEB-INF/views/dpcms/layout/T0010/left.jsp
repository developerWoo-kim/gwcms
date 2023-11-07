<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


						<!--START-->
<%--						<c:set var="mberTyChk" value=",${sessionScope[loginInfo].mberTy}," />--%>
<%--						<input type="hidden" id="leftCurrMi" value="${currMenuId }">--%>
<%--						<input type="hidden" id="tabBaseMi" value="${tabBaseId }">--%>
<%--						<input type="hidden" id="tabUpperMi" value="${tabUpperId }">--%>

<%--						<ul class="dep01">--%>
<%--							<li><a href="" target="_self"><span>인사말</span></a></li>--%>
<%--							<li><a href="" target="_self"><span>연혁</span></a></li>--%>
<%--							<li class="active"><a href=""><span>교육방향</span></a> <!-- [P] 현재 메뉴 active 클래스 추가 -->--%>
<%--								<ul class="dep02">--%>
<%--									<li><a href="" target="_self"><span>교과활동</span></a></li>--%>
<%--									<li class="active"><a href="" target="_self"><span>교육목표</span></a></li> <!-- [P] 현재 메뉴 active 클래스 추가 -->--%>
<%--									<li><a href="" target="_blank" title="새창"><span>직업교육</span></a></li>--%>
<%--									<li><a href="" target="_self"><span>방과 후 교실</span></a>--%>
<%--										<ul class="dep03">--%>
<%--											<li><a href="" target="_self"><span>4차메뉴</span></a></li>--%>
<%--											<li><a href="" target="_self"><span>4차메뉴 4차메뉴 4차메뉴 4차메뉴</span></a></li>--%>
<%--										</ul>--%>
<%--									</li>--%>
<%--								</ul>--%>
<%--							</li>--%>
<%--							<li><a href="" target="_self"><span>행정조직도</span></a></li>--%>
<%--							<li><a href="" target="_blank" title="새창"><span>행사소식안내</span></a></li>--%>
<%--							<li><a href="" target="_self"><span>게시판</span></a> --%>
<%--								<ul class="dep02">--%>
<%--									<li><a href="" target="_self"><span>공지사항</span></a>--%>
<%--										<ul class="dep03">--%>
<%--											<li><a href="" target="_self"><span>4차메뉴</span></a></li>--%>
<%--											<li><a href="" target="_self"><span>4차메뉴 4차메뉴 4차메뉴 4차메뉴</span></a></li>--%>
<%--										</ul>--%>
<%--									</li>--%>
<%--									<li><a href="" target="_self"><span>가정통신문</span></a></li>--%>
<%--									<li><a href="" target="_self"><span>급식정보</span></a></li>--%>
<%--								</ul>--%>
<%--							</li>--%>
<%--						</ul>--%>
						<!--END-->

<div id="lnb">
	<h2><span>메뉴명</span></h2>
	<nav>
		<div id="mainMenu">
		</div>
	</nav>
</div>

<script type="text/javascript">
	// 미들메뉴 활성화 시키기
	$(document).ready(function(){
		$(document).ready(function () {
			$.ajax({
				type : "GET",
				dataType : "html",
				url : "/<c:out value="${ctx}"/>/mn/menu/left-menu",
				success : function(result) {
					$("#mainMenu").append(result);
				},
				error : function (result) {
					alert(result.message);
				}
			})
		})

		var menuLevel = "<c:out value='${menuLevel}'/>";
		var currMenuId = "";
		if (menuLevel < 4) {
			currMenuId = "<c:out value='${currMenuId}'/>";
		} else {
			currMenuId = "<c:out value='${tabBaseId}'/>";
		}

		$("#"+currMenuId).parent().addClass("active");
		$("#"+currMenuId).parent().parent().parent().addClass("active");

		if (currMenuId != "") {
			if (menuLevel > 0) { // 1,2,3,4,5
				$("#currMenuId" + currMenuId).addClass("active");
				if (menuLevel > 1) { // 2,3,4,5
					$("#currMenuId" + currMenuId).parent().parent().addClass("active");
					if (menuLevel > 2) { // 3,4,5 (4,5는 3레벨 취급)
						$("#currMenuId" + currMenuId).parent().parent().parent().parent().addClass("active");
					}
				}
			}
			//snb(); // active 되어있는 메뉴를 중심으로 select 생성 (/00_common/js/common.js)
		}
	});
</script>

