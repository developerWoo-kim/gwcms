// document ready
$(function(){
	listsList();
	LNB();
	
	//sns
	$snsBox = $('.snsBox .sns_more');
    $('.snsBox button.btnShare').on("mouseover focus", function() {
		$snsBox.addClass('open');	
		return false;
	});
	
	$snsBox.mouseleave(function(){
		$snsBox.removeClass('open');	
	});
	$snsBox.find('button').last().on("focusout", function(){
		$snsBox.removesClass('open');	
	});

});

// 리스트
function listsList(){
	$('.listsList .listDetail > a').off('click');
	$('.listsList .listDetail > a').on('click' , function(){
		var title = $(this).parent('li');
		if (title.hasClass('on')){
			$(".listDetail").removeClass("on");
		} else {
			title.addClass("on");
			$(".listDetail").not(title).removeClass("on");
		}
	});
}


/** 이미지 확대보기 **/
function resetImgZoom(){
	var zwObj =  $('.rsp_img');
	zwObj.each(function(){
		var this_s = $(this);
		var zwObjImg = this_s.children("img");
		var zwObjUrl = zwObjImg.attr("src");
		var win_w = $(window).innerWidth();

		if(win_w<=768){
			this_s.append("<a href='" + zwObjUrl + "' class='btn-zoom' target='_blank' title='새창열림'><span class='blind'>이미지 확대보기</span></a>");
			zwObjImg.addClass("zoom");
		} else {
			$(".btn-zoom, .btn-down", $(this).parent()).remove();
			zwObjImg.removeClass("zoom");
		}
	});

}


$(window).resize(function() {
	this.resizeTO = setTimeout(function() {
		$(this).trigger('resizeEnd');
	}, 150 );
});
$(window).on('resizeEnd', function() {
	$w_w = $(window).innerWidth();
	resetImgZoom();

});


// 왼쪽메뉴
function LNB() {
	var $lnb = $(".lnb");
	var lnbLink = $('.lnb a');
	var current = $.trim($('.location strong').text());
	var paCurrent = $.trim($('.location .navi_0').text());

	$lnb.find('> li').each(function(){
		
		if($(this).find('ul.subLnb').length > 0){
			$(this).addClass("dep01");
		}

		$(this).not('.on').find(' > a').click(function(e){
			find_li = $(this).parent('li');
			if(find_li.hasClass('open')){
				$lnb.find('> li').not('.on').find('.subLnb').stop().slideUp();
				setTimeout(function(){
					find_li.removeClass('open');
				},400);
			}else{
				$lnb.find('> li').removeClass('open');
				$lnb.find('> li').not('.on').find('.subLnb').stop().slideUp();
				$(this).next('.subLnb').stop().slideDown();
				find_li.addClass('open');
			}
		});
	});
	
	$('#menu h2').click(function() {
		if ($(window).width() <= 1299) {
			$(this).toggleClass('on').next().slideToggle(600);
		}
	});

	/* 반응형 셋팅 */
	$(window).resize(function(){
		winSize = $(window).width();
		if(winSize > 1299 ){
			$('#menu nav').css('display','block');
		}else{
			$('#menu nav').css('display','none');
		}
	});

}
