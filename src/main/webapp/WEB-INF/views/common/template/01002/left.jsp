<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

							<aside id="snb">
								<div class="snb_wrap">
									<a href="/<c:out value='${ctx}'/>/main.do" class="home"><em class="hid">HOME</em></a>

									<!--START-->
									<ul class="dep01">
										<li>
											<a href="">학교소개</a>
											<ul class="dep02">
												<li><a href="" target="_blank" title="새창"><span>학교소개</span></a></li>
												<li><a href=""><span>교육목표</span></a></li>
												<li><a href=""><span>학과발전계획</span></a></li>
												<li><a href=""><span>위치 및 연락처</span></a></li>
											</ul>
										</li>
										<li>
											<a href="">찾아오시는길</a>
											<ul class="dep02">
												<li><a href=""><span>학과공지사항</span></a></li>
												<li><a href=""><span>자유게시판</span></a></li>
												<li><a href=""><span>포토갤러리</span></a></li>
												<li><a href=""><span>자료실</span></a></li>
												<li><a href=""><span>Q&A</span></a></li>
											</ul>
										</li>
										<li>
											<a href="">알림마당</a>
											<ul class="dep02">
												<li><a href=""><span>전공동아리</span></a></li>
											</ul>
										</li>
										<li class="active">
											<a href="">커뮤니티</a>
											<ul class="dep02">
												<li class="active"><a href=""><span>학사일정2</span></a>
													<ul class="dep03">
														<li class="active"><a href=""><span>학사일정3</span></a></li>
														<li><a href=""><span>교과과정</span></a></li>
													</ul>
												</li>
												<li><a href=""><span>교과과정</span></a></li>
											</ul>
										</li>
									</ul>
									<!--END-->

								</div>
							</aside>

							<div class="snsBox">
								<button type="button" class="btnShare"><span class="hid">공유</span></button>
								<div class="sns_more">
									<button type="button" class="btnFbook" title="페이스북"><span class="hid">페이스북</span></button>
									<button type="button" class="btnTwt" title="트위터"><span class="hid">트위터</span></button>
									<button type="button" class="btnkko" title="카카오톡"><span class="hid">카카오톡</span></button>
									<button type="button" class="btnkks" title="카카오스토리"><span class="hid">카카오스토리</span></button>
									<button type="button" class="btnBlog" title="블로그"><span class="hid">블로그</span></button>
								</div>
								<button type="button" class="btnPrint"><span class="hid">인쇄</span></button>
							</div>

<script type="text/javascript">
	// 미들메뉴 활성화 시키기
	$(document).ready(function(){
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
			$('#snb_wrap').removeClass('active');
			if (menuLevel > 0) { // 1,2,3,4,5
				$("#currMenuId" + currMenuId).addClass("active");
				if (menuLevel > 1) { // 2,3,4,5
					$("#currMenuId" + currMenuId).parent().parent().addClass("active");
					if (menuLevel > 2) { // 3,4,5 (4,5는 3레벨 취급)
						$("#currMenuId" + currMenuId).parent().parent().parent().parent().addClass("active");
					}
				}
			}
		}

		//snb(); // active 되어있는 메뉴를 중심으로 select 생성 (/00_common/js/common.js)
	});
</script>
