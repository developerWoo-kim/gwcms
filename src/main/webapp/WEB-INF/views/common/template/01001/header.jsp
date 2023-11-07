<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="loginInfo" value="${ssId }_SSmberInfo_${ctx }" />
<c:set var="appleInfo" value="${ssId }_SSmberInfo_apple" />
<c:set var="hmpgInfo" value="${ssId }_SShmpgInfo_${ctx}" />

<c:set var="reqUri" value="${requestScope['javax.servlet.forward.request_uri']}" />
<c:if test="${fn:indexOf(reqUri,'/apple/') > -1}">
	<script>
	// a링크 작동 해제
	$(document).on("click", "a", function(e){
		e.preventDefault();
	});
	</script>
</c:if>


<div class="area_header">
  <!-- 헤더-->
  <header id="header"> 
    <!-- web -->
    <div id="web" class="container">
      <div class="top">
       	<h1><a href="/${ctx }/main.do">
     		<!--Logo START-->
       		<img src="/images/template/01001/common/logo.png" alt="KLIC 케이엘정보통신">
     		<!--Logo END-->
       	</a></h1>
        <ul class="top_menu">
			<c:import url="/WEB-INF/views/dpcms/layout/common/loginForm.jsp"/>
        </ul>
        <div class="box_search_0">
          <form name="siteSearchForm" method="get">
            <input type="text" placeholder="검색어를 입력해주세요" id="topSearch_1" name="keyword" title="검색어를 입력해주세요">
            <button><span class="hid">검색</span></button>
          </form>
        </div>
      </div>
      <!-- gnb -->
      <!--START-->
      <div id="gnb">
        <ul class="lstDep1">
          <li><a href="#">케이엘정보통신</a>
            <ul class="lstDep2">
              <li><a href="#">메뉴</a></li>
            </ul>
          </li>
          <li><a href="#">인프라사업본부</a>
            <ul class="lstDep2">
              <li><a href="#">메뉴</a></li>
            </ul>
          </li>
          <li><a href="#">R&amp;D사업본부</a>
            <ul class="lstDep2">
              <li><a href="#">메뉴</a></li>
            </ul>
          </li>
          <li><a href="#">SI사업본부</a>
            <ul class="lstDep2">
              <li><a href="#">메뉴</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <!--END-->
      <!-- gnb --> 
    </div>
    <!-- tablet, moblie -->
    <div id="tablet">
      <div id="tabletHeader">
        <div id="tabletLogo"><a href="/${ctx }/main.do">
        	<!--Logo START-->
        	<img src="/images/template/01001/common/logo.png" alt="KLIC 케이엘정보통신">
        	<!--Logo END-->
        </a></div>
      </div>
      <div id="tabletGnb">
        <div id="menuOpen"><a href="#"><img src="/images/template/01001/common/btn_menu_t.png" alt="메뉴열기"></a></div>
      </div>
      <!-- 태블릿 검색 -->
      <%-- <div id="tabletSearch">
        <div id="searchOpen"><a href="#"><img src="/images/template/01001/common/btn_search_t.png" alt="검색열기"></a></div>
      </div>
      <div id="mSearch">
        <form name="searchFrm" id="searchFrm" method="POST">
          <div class="con">
            <p>
              <input type="text" id="searchText" name="searchText" class="inputText" title="통합 검색어">
              <button type="button" class="btnSearch" id="searchTextBtn"><span>검색</span></button>
            </p>
            <button type="button" class="btnSearchClose"><span>통합검색 닫기</span></button>
          </div>
        </form>
      </div> --%>
      <!-- 태블릿 검색 -->
      <div id="mNavi">
        <div id="mtitle"><a href="#">메뉴닫기</a></div>
        <nav id="mgnb">
          <div class="snb">
            <ul>
				<%-- 모바일 로그인 공통 폼 --%>
				<c:import url="/WEB-INF/views/dpcms/layout/common/mLoginForm.jsp"/>
            </ul>
          </div>
          <!--M_START-->
          <ul>
            <li><a href="#" class="dep">메뉴1</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴01</a>
                  <ul>
                    <li><a href="#">하위메뉴02</a></li>
                    <li><a href="#">하위메뉴02</a></li>
                  </ul>
                </li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
            <li><a href="#" class="dep">메뉴2</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴</a></li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
            <li><a href="#" class="dep">메뉴3</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴</a></li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
            <li><a href="#" class="dep">메뉴4</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴</a></li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
            <li><a href="#" class="dep">메뉴5</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴</a></li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
            <li><a href="#" class="dep">메뉴6</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴</a></li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
            <li><a href="#" class="dep">메뉴7</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴</a></li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
            <li><a href="#" class="dep">메뉴8</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴</a></li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
            <li><a href="#" class="dep">메뉴9</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴</a></li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
            <li><a href="#" class="dep">메뉴10</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴</a></li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
            <li><a href="#" class="dep">메뉴11</a>
              <ul>
                <li><a href="#" class="dep2">하위메뉴</a></li>
                <li><a href="#" class="dep2">하위메뉴</a></li>
              </ul>
            </li>
          </ul>
          <!--M_END-->
          	
          	<!-- 3차 메뉴가 있으면 onclick으로 가지 않게 하기 위함(menuAccessCheck) -->
	        <script type="text/javascript">
				var dep2Size = $(".dep2").next('ul').length;
				$('.dep2').parent().find('ul').each(function(index, item){
					$(this).prev().attr("onclick","");
				});
	        </script>
	        <!-- End of 3차 메뉴가 있으면 onclick으로 가지 않게 하기 위함(menuAccessCheck) -->
	        
        </nav>
      </div>
    </div>
    <!-- //tablet --> 
  </header>
  <!-- //헤더 --> 
</div>

