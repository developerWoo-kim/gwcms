$(function(){
	gnb();
	fullMenu(); //20230203 추가
	mNav();
	footerSiteLink();
	snsBox();
    ftMdLnk();

	//즐겨찾기 온/오프_20230203 추가
	$(".btnBookmark").click(function(){
	    if($(this).hasClass("on")) {
	        $(this).addClass("off").removeClass("on");
	    } else {
	        $(this).addClass("on").removeClass("off");
	    }
	});

	if($('#lnb').length > 0){
		lnb();
	}

	if($('#quickMenu').length > 0){
		quickMenu();
	}

	// HASH 버튼
	var hashtarget = '';
	$('.hash').on('click', function(e){
		$(this.hash).fadeIn(200).find('a').first().focus();
		hashtarget = $(this);
		e.preventDefault();
	});
	$('.hashClose').on('click focusout', function(e){
		$(this.hash).fadeOut(200);
		hashtarget.focus();
		hashtarget = '';
		e.preventDefault();
	});

	// HASH TOGGLE 버튼
	$('.hashToggle').on('click', function(e){
		($(this).hasClass('active') == true)? $(this).removeClass('active') : $(this).addClass('active');
		$(this.hash).slideToggle(200);
		e.preventDefault();
	});

	//slick-hidden 새로고침 방지
	$(document).on('click', '.slick-arrow', function(e){
		e.preventDefault();
	});

	//Language
	if($('#langList').length > 0){
		$('#langList li').last().find('a').focusout(function(){
			$('#langList').slideUp(200);
			$('#header .lang > a').removeClass('active').prop('title','언어선택 열기').focus();
		});

		$('#header .lang > a').on('click', function(){
			($(this).hasClass("active")) ? $(this).prop('title','언어선택 닫기')  : $(this).prop('title','언어선택 열기');
		});
	}

	//moblie search
	$("#mSearchOpen").click(function (e) {
		e.preventDefault();
		$("#mSearch").addClass('active');
	});
	$("#mSearch .btnClose").click(function (e) {
		e.preventDefault();
		$("#mSearch").removeClass('active');
	});

	//resize reset
	$(window).resize(function () {
		var winWidth = $(window).width();
		if (winWidth > 1024) {
            $("#mNav, #mSearch, #lnb h2").removeClass("active");
			$('body').removeClass('bodyFix');
		}else{
			$('#gnbblind').hide();
			$('#nav').find('.active').removeClass('active');
			$('#nav').find('.on').removeClass('on');
		}
    });

	// footer top button
	$('.btn_top').hide();
	$(window).scroll(function(){
		if($(this).scrollTop() > 200){
			$('.btn_top').fadeIn();
		}else{
			$('.btn_top').fadeOut();
		}
	});
	$('.btn_top').click(function(e){
		e.preventDefault();
		$('html, body').stop().animate({scrollTop:0}, 400);
	});
});


// web navigation
function gnb(){
	var $nav = $('#nav');
		$gnb = $('#gnb');
		$depth01 = $gnb.find('.depth01');
		$depth02 = $gnb.find('.depth02');
		$depth03 = $gnb.find('.depth03');
		$depth01.li = $depth01.find('> ul > li');
		$depth02.li = $depth02.find('> ul > li');
		$depth03.li = $depth03.find('> ul > li');
		defaultHeight = $depth01.li.innerHeight();

	//setting
	$gnb.find('li').each(function(){
		($(this).find('> div > ul').length > 0)? $(this).addClass('dep') : '';
	});
	$gnb.find('li').last().find('> a').addClass('lastGnb');

	//show
	$(document).on('click', '#gnb li.dep > a',function(e){
		var $this_li = $(this).parent('li');
		$this_li.toggleClass('active');
		$gnb.find('li').not($this_li).removeClass('active');
		e.preventDefault();
	});
	$depth01.find('> ul > li > a').on('focus mouseover', function(){
		$(this).parent().addClass('on').siblings().removeClass('on');
	});

	$depth01.li.find('> a').on('focus mouseover', function(){
		$gnb.addClass('active');
		$('#gnbblind').fadeIn(100);
	});

	//fullDown show
	$(document).on('click', '#nav.fullDown .depth02 li.dep > a',function(e){
		$(this).parents('.depth02').parent('li').addClass('on').siblings().removeClass('on');
	});

	//hide
	$gnb.on('mouseleave', function(){
		gnbHide();
	});

	$(document).on('focusout', '#gnb .lastGnb', function(){
		gnbHide();
	});

	function gnbHide(){
		$gnb.removeClass('active').find('li').removeClass('on');
		($nav.hasClass('oneDown')==true)? $depth02.li.removeClass('active') : '';
		$('#gnbblind').fadeOut(100);
	}
}

//moblie navigation
function mNav(){
	// setting
	var gnb = $('#gnb > .depth01').clone();
	var headerUtil = $('#header .util').clone();

	$('#mNav .snb').append(headerUtil);

	$('#mgnb').append(gnb).find('li').removeAttr('style').find('.titBox').remove();

	// open & close
	$("#mNavOpen").click(function (e) {
		$("#mNav").addClass('active');
		$('body').addClass('bodyFix');
		e.preventDefault();
	});

	$("#mNavClose").click(function (e) {
		$("#mNav").removeClass('active');
		$('body').removeClass('bodyFix');
		e.preventDefault();
	});

	//show
	$(document).on('click', '#mNav li.dep > a',function(e){
		$(this).parent('li').toggleClass('active').siblings().removeClass('active');
		e.preventDefault();
	});
}

// sub navigation
function lnb(){

	$('#lnb li').each(function(e){
		if($(this).find('ul').length > 0){
			$(this).addClass("dep");
			($(this).hasClass("active")) ? $(this).find('a').prop('title','메뉴닫힘')  : $(this).find('a').prop('title','메뉴열림');
		}
	});

	//선택된 왼쪽메뉴 상위 클래스 부여
	var currMenuId = $('#leftCurrMi').val();

	$("#"+currMenuId).addClass('active');
	if ( $("#"+currMenuId).parent().parent().hasClass('dep')) {
		$("#"+currMenuId).parent().parent().addClass('active');
	}

	if ( $("#"+currMenuId).parent().parent().parent().parent().hasClass('dep')) {
		$("#"+currMenuId).parent().parent().parent().parent().addClass('active');
	}

	//선택된 탭메뉴 상위메뉴 클래스 부여
	var tabBaseMi = $('#tabBaseMi').val();

	$("#"+tabBaseMi).addClass('active');
	if ( $("#"+tabBaseMi).parent().parent().hasClass('dep')) {
		$("#"+tabBaseMi).parent().parent().addClass('active');
	}

	if ( $("#"+tabBaseMi).parent().parent().parent().parent().hasClass('dep')) {
		$("#"+tabBaseMi).parent().parent().parent().parent().addClass('active');
	}


	var active = false;
	$(document).on('click', '#lnb li.dep > a', function(e){
		var $li = $(this).parent();
		active = !active;
		$li.toggleClass('active').siblings().removeClass('active');
		$(this).attr('title', active ? "메뉴열림" : "메뉴닫힘");

		e.preventDefault();
	});

	$(document).on('click', '#lnb h2', function(e){
		if($(window).width() < 1241){
			$(this).toggleClass('active');
			$('#lnb nav').slideToggle();
		}
		e.preventDefault();
	});

	//resize reset
	var delta = 10;
	var timer = null;
	$(window).on('resize', function(){
		clearTimeout(timer);
		timer = setTimeout( resizeDone, delta );
	}).resize();
	function resizeDone() {
		if($(window).width() > 1239){
			$('#lnb nav').removeAttr('style');
		}
	}

}

function createNavi(sysId){

	var menuLevel = $('#leftCurrLv').val();
	var currMenuId = "";
	if (menuLevel < 4) {
		currMenuId = $('#leftCurrMi').val();
	} else {
		currMenuId = $('#tabBaseMi').val();
	}

	var menuNms = new Array();
	for (var menu = $("#" + currMenuId); menu.length > 0; menu = menu.closest("ul").parent("li").children("a")) {
		menuNms.push(menu.text());
	}
	menuNms.push($("#leftMenuSj").text());
	menuNms.reverse();

    var naviHtml = "";
	naviHtml += "<ul>";
	naviHtml += "<li><a href='/"+sysId+"/main.do'><i class=\"xi-home\" aria-hidden=\"true\"></i>HOME</a></li>";

	for (var i=0; menuNms.length > i; i++){
		naviHtml += "<li>"+menuNms[i]+"</li>";
	}
	naviHtml += "</ul>";

	$("#webNavi").html(naviHtml);
}

// sub snsBox
function snsBox(){
	$(document).on('click', '#subContent .snsBox .btnShare', function(e){
		if($('#snsMore').hasClass('active') == true){
			$('#snsMore').removeClass('active');
		}else{
			$('#snsMore').addClass('active').find('a').first().focus();
		}
		e.preventDefault();
	});
	$(document).on('click', '#subContent .snsBox .close', function(e){
		snsHide();
		e.preventDefault();
	});

	$('#snsMore a.snsClose').on('click', function(e){
		snsHide();
		e.preventDefault();
	});

	$('#snsMore a:last-child').on('focusout', function(){
		snsHide();
	});

	function snsHide(){
		$('#snsMore').removeClass('active');
		$('#subContent .snsBox .btnShare').removeClass('active').focus();
	}
}

// Footer 링크 모달창
function ftMdLnk(){
	$(document).on('click', '.footer_link .mdOpn', function(e){
        $(this).parents('li').siblings('li').removeClass('actv');
		$(this).parents('li').addClass('actv').find('.mdBox').find('a').first().focus();
		e.preventDefault();
	});

	$(document).on('click', '.footer_link .mdCls', function(e){
		$('.footer_link li').removeClass('actv');
		$(this).parent('.mdBox').prev('.mdOpn').focus();
	});

	$('.footer_link .mdCls').on('focusout', function(){
		$('.footer_link li').removeClass('actv');
		$(this).parent('.mdBox').prev('.mdOpn').focus();
	});
}

//footer 사이트링크
function footerSiteLink(){
	$(document).on('click', '#siteLink button', function(e){
		$(this).parent().siblings().find('button').removeClass('active').next('.lst').slideUp();
		$(this).toggleClass('active').next('.lst').slideToggle();
		return false;
	});
	$(document).on('focusout', '#siteLink .lst li:last-child > a', function(e){
		$('#siteLink .lst').slideUp();
	});
}

//퀵메뉴
function quickMenu(){
	$(document).on('click', '#quickMenuBtn', function(e){
		$('#quickMenu').toggleClass('active');
		if($('#quickMenu').hasClass('active')){
			$('#quickMenuBtn span').text('퀵메뉴영역 닫기');
		}else{
			$('#quickMenuBtn span').text('퀵메뉴영역 열기');
		}
		return false;
	});

	$(document).on('focusout', '#quickMenu li:last-of-type > a', function(e){
		$('#quickMenu').removeClass('active');
		$('#quickMenuBtn span').text('퀵메뉴영역 열기');
	});
}

/* function valueEmpty */
jQuery.fn.valueEmpty = function() {
    if (jQuery.trim(jQuery(this).val()).length < 1 ) {
        return true;
    } else {
        return false;
    }
};

// 문서뷰어 호출
function fn_synapViewer(ctx, bbsTy){
	$.ajax({
		type : 'post',
		url : '/'+ctx+'/ft/indvdlView/synapViewer.do',
		dataType : 'json',
		data : { bbsTy : bbsTy },
		success : function(data) {
			if(data.dwldUrl != "" && data.fileSn != ""){
				var filePath = data.dwldUrl;
				var fid = data.fileSn;
				synapDocumentViewer(fid, filePath);
			} else {
				var txt = "";
				if(bbsTy == "INDVDL"){
					txt = "개인정보처리방침";
				} else if(bbsTy == "VIDOPER"){
					txt = "영상정보처리기기운영방침";
				}
				alert("등록 된 " + txt + "이 없습니다.");
				return false;
			}
		},
		error : function() {
			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}
	});
}

// Synap Document View(문서 뷰어 공통 모듈 2022.01.25 추가)
function synapDocumentViewer(fid, filePath) { // fid: File ID, filePath: File Download URL
	 var convertType = "0";

	 // localhost
	 /*var localhost = "http://localhost:8088";
	 var dwldUrl = "/common/nttFileDownload.do?fileKey=" + filePath;

	 var flpth = localhost + dwldUrl;

	 var fileType = "URL";
	 var encodedUrl = encodeURIComponent(flpth);
	 var requestUrl = "http://localhost:9090/SynapDocViewServer/job?fid=" + fid // Server Address Setting
	                         + "&filePath=" + encodedUrl
	                         + "&convertType=" + convertType + "&fileType=" + fileType;
	 window.open(requestUrl, "preview");*/

	 // 가오픈 서버
	 var localhost = "http://218.50.200.23:80";	// 218.50.200.23:80, 218.50.200.24:80, 218.50.200.25:80
	 var dwldUrl = "/common/nttFileDownload.do?fileKey=" + filePath + "&accesTy=view";

	 var flpth = localhost + dwldUrl;

	 var fileType = "URL";
	 var encodedUrl = encodeURIComponent(flpth);
	 var requestUrl = "https://schoolhpdoc.sje.go.kr:8443/SynapDocViewServer/job?fid=" + fid // Server Address Setting
	                         + "&filePath=" + encodedUrl
	                         + "&convertType=" + convertType + "&fileType=" + fileType;
	 window.open(requestUrl, "preview");
}

// 콘텐츠 파일용 문서뷰어
function synapDocumentViewerForContent(fid, filePath) {

	 var convertType = "0";

	 // 가오픈 서버
	 var localhost = "http://218.50.200.23:80";	// 218.50.200.23:80, 218.50.200.24:80, 218.50.200.25:80
	 var dwldUrl = "/common/fileDownload.do?fileKey=" + filePath;

	 var flpth = localhost + dwldUrl;

	 var fileType = "URL";
	 var encodedUrl = encodeURIComponent(flpth);
	 var requestUrl = "https://schoolhpdoc.sje.go.kr:8443/SynapDocViewServer/job?fid=" + fid // Server Address Setting
	                         + "&filePath=" + encodedUrl
	                         + "&convertType=" + convertType + "&fileType=" + fileType;
	 window.open(requestUrl, "preview");
}

// 개인, 영상정보처리방침 게시판 이동
function fn_bbsMvmn(ctx, bbsTy){
	$.ajax({
		type : 'post',
		url : '/'+ctx+'/ft/indvdlView/bbsMvmn.do',
		dataType : 'json',
		data : {
				sysId : ctx,
				bbsTy : bbsTy
			},
		success : function(data) {
			window.open(data.url);
		},
		error : function() {
			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}
	});
}

//첨부파일 다운(팝오버)
$(document).on('click', '.viewerPop', function(){
	var obj = $(this);
	var bbsTy = $(this).attr("data-bbsTy");
	var ctx = $(this).attr("data-ctx");

	chk = obj.attr('chk');

	if (chk == null) {
			obj.attr('chk','1');
			chk = 1;
	}

	if (chk == 1) {
		obj.popover({
			title : '상세보기',
			html : true,
			container : "body",
			toggle : "popover",
			//trigger: 'focus',	// 클릭한 요소 이외의 부분을 클릭하면 팝업 삭제 되는 속성
			placement : "top",
			content : function(){
			html = "";
				// 문서뷰어 호출 synapDocumentViewer(fid, filePath)
				html += "<a href='javascript:' onClick=\"fn_synapViewer('" + ctx + "','" + bbsTy + "')\" class='btn_view' target='_blank'><i class='xi-search' aria-hidden='true'></i>바로보기</a>";
				// 이전 내역 게시판 이동
				html += "<a href='javascript:' onClick=\"fn_bbsMvmn('" + ctx + "','" + bbsTy + "')\" class='btn_view'><i class='xi-document' aria-hidden='true'></i>이전 게시글 보기</a>";

				return html;
			}
		}).popover('show');
		obj.attr('chk','0');
	} else {
		obj.popover('hide');
		obj.attr('chk','1');
	}
});

// 마이페이지 클릭 시 사용자 정보 페이지 이동
$(document).on('click', '.myPage', function(){
	var ctx = $(this).attr("data-id");

	$.ajax({
		type : 'post',
		url : '/'+ctx+'/my/myPage/selectSbscrbInfo.do',
		dataType : 'json',
		data : {
				sysId : ctx
			},
		success : function(data) {
			if(data.url != ""){
				var url = data.url;
				location.href = url;
			}else{
				alert("등록 된 마이페이지 메뉴가 없습니다.");
			}
		},
		error : function() {
			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}
	});
});

$(document).on('keyup', '#topSearch_1', function(key) {
	if(key.keyCode == 13) {
		commonSearch();
	}
});

$(document).on('click', 'form[name=siteSearchForm] > button', function() {
	commonSearch();
});

//통합검색
function commonSearch() {

	$('form[name=siteSearchForm]').attr('onSubmit', 'return false;');

	var url = window.location.href;
	var sysId = url.split('/')[3];

	var searchText = $('#topSearch_1').val();

	location.href = "/search/front/Search.jsp?sysId="+sysId+"&qt="+searchText;
}

//full menu_20230203 추가
function fullMenu(){
	// setting
	var gnb = $('#gnb > .depth01').clone();
	var headerlogo = $('#header h1').clone();
	var headerLogin = $('#header .link').clone();

	$('#fullMenuArea .snb').append(headerlogo,"<div class='fullMenu_tit'><em>세종학교</em> 사이트맵</div>", headerLogin);
	$('#fullMenu').append(gnb);

	// open & close
	$("#fullMenuOpen").click(function (e) {
		$("#fullMenuArea").fadeIn(100);
		$('body').addClass('bodyFix');
		e.preventDefault();
	});

	$("#fullMenuClose").on('click focusout', function(e){
		$("#fullMenuArea").fadeOut(100);
		$('body').removeClass('bodyFix');
		e.preventDefault();

		$('#fullMenuOpen').focus();
	});

	//show
	$(document).on('click', '#fullMenu li.dep > a',function(e){
    $(this).parent('li').toggleClass('active').siblings().removeClass('active');
		e.preventDefault();
	});

	$(document).on('focus mouseover', '#fullMenu .depth02',function(e){
    if($(window).width() > 1240){
		  $(this).parent('li').addClass('active').siblings().removeClass('active');
    }
	});

	$(document).on('mouseleave', '#fullMenu .depth01 > ul',function(e){
    if($(window).width() > 1240){
		  $('#fullMenu .depth01 > ul > li').removeClass('active');
    }
	});
}

// 즐겨찾기 등록 및 삭제
function fn_bkmkManage(sysId, baseMenuId, currMenuId, mberId, accessUrl, bkmkAt){

	$.ajax({
		type : "post",
		url : "/" + sysId + "/my/myPage/bkmkManage.do",
		dataType : "json",
		data : {
				sysId : sysId,
				baseMenuId : baseMenuId,
				currMenuId : currMenuId,
				mberId : mberId,
				accessUrl : accessUrl,
				bkmkAt : bkmkAt
			},
		success : function(data) {
			if(data.resultAt == "I"){
				alert("즐겨찾기 등록이 완료되었습니다.");
				location.reload();
			} else {
				alert("즐겨찾기 삭제가 완료되었습니다.");
				location.reload();
			}
		},
		error : function() {
			alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}
	});
}

