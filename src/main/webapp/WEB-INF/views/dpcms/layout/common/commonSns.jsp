<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<c:set var="loginInfo" value="${ssId}_SSmberInfo_${ctx}"/>
<c:set var="appleInfo" value="${ssId}_SSmberInfo_apple"/>

<script>
	$(document).ready(function() {
		// 즐겨찾기 등록 및 삭제를 위한 프로세스
		var sysId = "<c:out value="${ctx}"/>";
		var currMenuId = "<c:out value="${currMenuId}"/>";
		var mberId = "<c:out value="${sessionScope[loginInfo].mberId}"/>";

		if(mberId != "" && mberId != null){
			// 현재 페이지의 URL 정보 Get
			var url = "/" + sysId + "/mn/menu/menuAccess.do"
			var accessUrl = "";

			$.ajax({
				type : "post",
				url : url,
				data : {
					menuId : currMenuId
				},
				dataType : "json",
				success : function(data) {
					accessUrl = JSON.parse(data.menuUrl);
					fn_bkmkFncSetting(accessUrl);
				},
				error : function(data) {
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				}
			});

			// 즐겨찾기 등록 및 삭제 function 세팅
			function fn_bkmkFncSetting(accessUrl){
				$.ajax({
					type : "post",
					url : "/" + sysId + "/my/myPage/bkmkMenuAt.do",
					dataType : "json",
					data : {
							sysId : sysId,
							currMenuId : currMenuId,
							mberId : mberId
						},
					success : function(data) {
						if(data.bkmkChk > 0){
							$("#bkmk").attr("class", "btnBookmark on");
							$(".btnBookmark").attr("onClick", "fn_bkmkManage('<c:out value="${ctx}"/>', '<c:out value="${baseMenuId}"/>', '<c:out value="${currMenuId}"/>', '<c:out value="${sessionScope[loginInfo].mberId}"/>', \""+ accessUrl + "\", 'Y');");
						}else{
							$("#bkmk").attr("class", "btnBookmark");
							$(".btnBookmark").attr("onClick", "fn_bkmkManage('<c:out value="${ctx}"/>', '<c:out value="${baseMenuId}"/>', '<c:out value="${currMenuId}"/>', '<c:out value="${sessionScope[loginInfo].mberId}"/>', \""+ accessUrl + "\", 'N');");
						}
					},
					error : function() {
						alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
					}
				});
			}
		}
	});
</script>

<!-- sns -->
<div class="snsBox">
	<button type="button" class="btnShare" title="SNS 공유"><i class="xi-share-alt-o"></i><em class="hid">SNS 공유영역 펼치기</em></button>
	<div class="snsMore" id="snsMore">
		<p>
			<a href="#none" onClick="goSns('twt');" class="snsT" title="트위터 공유(새창)"><i class="xi-twitter"></i><em class="hid">트위터 공유</em></a>
			<a href="#none" onClick="goSns('kkot');" class="snsK" title="카카오 공유(새창)"><i class="xi-kakaotalk"></i><em class="hid">카카오 공유</em></a>
			<a href="#none" onClick="goSns('fbook');" class="snsF" title="페이스북 공유(새창)"><i class="xi-facebook"></i><em class="hid">페이스북 공유</em></a>
			<!-- <a href="#none" onClick="" class="snsIn" title="새창"><i class="xi-instagram"></i><em class="hid">인스타그램 공유</em></a> -->
			<a href="#none" class="snsClose"><i class="xi-close"></i><em class="hid">SNS 공유영역 닫기</em></a>
		</p>
	</div>
	<button type="button" class="btnPrint" title="인쇄"><i class="xi-print"></i><em class="hid">인쇄</em></button>
	<c:if test="${sAdm ne 'Y' and not empty sessionScope[loginInfo] and sessionScope[loginInfo].sysId eq ctx}">
		<button type="button" id="bkmk" class="btnBookmark" onClick="fn_bkmkManage();" title="즐겨찾기"><em class="hid">즐겨찾기</em></button><!-- 20230203 추가 -->
	</c:if>
</div>
<!-- //sns -->

<script>
//sns
$(function() {
  $('.snsBox button.btnShare').click(function() {
	  $(this).toggleClass("active");
	  $(".sns_more").slideToggle(300);
  });
});

//게시물 공유
function goSns(shareTy){
	var htmlTitle = '${htmlTitle}';
	var title = ''; // 메뉴타이틀의 경우 스크립트 추가되어 오류  ${naviMenuNm};
	var menuTitle = '${menuTitle}';
	var mi = '${currMenuId}';
	var _br2 = encodeURIComponent('\n');
	var linkUrl = location.href;

 	var KakaoInitYN = 'N';

	if(linkUrl.indexOf('?') > -1) {
		if(linkUrl.indexOf('mi=') < 0) {
			linkUrl = linkUrl + '&mi=' +mi;
		}
	} else {
		if(linkUrl.indexOf('mi=') < 0) {
			linkUrl = linkUrl + '?mi=' +mi;
		}
	}

	linkUrl = encodeURIComponent(linkUrl);

	if(menuTitle != '메뉴명없음') {
		title = htmlTitle + ' : ' + menuTitle;
	} else {
		title = htmlTitle;
	}

	title = encodeURIComponent(title);

	if(shareTy == "fbook") {
		window.open('https://www.facebook.com/sharer/sharer.php?u='+ linkUrl, 'facebook', 'width=626,height=436');
	} else if(shareTy == "twt") {
		window.open('https://twitter.com/intent/tweet?url='+ linkUrl + '&text=' + title, 'twitter', 'width=626,height=436');
	} else if(shareTy == "kkot") {

			if(KakaoInitYN == 'N'){
				/*kakao developer에 어플리케이션 등록 후 키 변경  필요*/
				//Kakao.init('d0d699ed70f64ce03720732d972708e0');
				Kakao.init('19729f6be517450addc177d371745f13');
 				KakaoInitYN = 'Y';
			}

			var description = '#세종특별자치시교육청교육원 #'+ '<c:out value="${htmlTitle}"/>';
			//var description = '#세종시교육청교육원 #세종시교육청교육원';
			//var description = '#'+$('.header h1 a').attr('title');
			var title = $('.title').text();

			if(title == "") {
				title = document.title;
			}

			Kakao.Link.sendDefault({
				objectType: 'feed',
				content: {
					title: title, //제목
					description: description, // 로고 title 값(sysNM), 설명
					imageUrl: 'https://newgh.gnu.ac.kr/common/images/gnu.png', //이미지URL
					link: {
						mobileWebUrl: location.href, //공유할 URL
						webUrl: location.href //공유할 URL
					}
				},
				/* social: {
					likeCount: 286,
					commentCount: 45,
					sharedCount: 845
				}, */
				buttons: [
				  	{
				  		title: '자세히보기',
				  		link: {
				  			mobileWebUrl: location.href,
				  			webUrl: location.href
				  		}
				  	}
				  	/*, {
				  		title: '링크 보기',
				  		link: {
				  			mobileWebUrl: linkUrl,
				  			webUrl: linkUrl
				  		}
				  	} */
				 ]
		    });

	} else if(shareTy == "kkots") {
		window.open('https://story.kakao.com/s/share?url='+ linkUrl + '&text=' + title, 'kakaostory', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=400,width=600');
	} else if(shareTy == "band") {
		window.open('http://band.us/plugin/share?body='+ title + _br2 + linkUrl + '&route=' + linkUrl, 'band', 'width=410, height=540, resizable=no');
	} else if(shareTy == "blog") {
		window.open('https://share.naver.com/web/shareView.nhn?url='+ linkUrl + '&title='+title, 'blog', 'width=410, height=540, resizable=no');
	}
}
</script>