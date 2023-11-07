
$(document).ready(function(){
	// 라인맵
	var LINEMAP = (function(){
		var $btn = $('.box_line_map_2 > a'),
			$winWid = $(window).width();
		$btn.bind('click',function(){
			var $this = $(this),
				$target = $this.next('.box_snb_1'),
				$all_target = $target.closest('.box_line_map_1').find('.box_snb_1');
			if ($target.hasClass('on')){
				$target.removeClass('on').stop().animate({ maxHeight : '0' },function(){
					var $this = $(this);
					$this.css('display','none');
				});
			} else {
				$all_target.removeClass('on').stop().animate({ maxHeight : '0' },function(){
					var $this = $(this);
					$this.css('display','none');
				});
				$target.addClass('on').stop().css('display','block').animate({ maxHeight : '562px' });
			}
			return false;
		});
	}());
	/*좌측메뉴 길이 만큼 subContent_body 최소높이값 조정*/
	var menu = $("#sideContent .sideNavi").children("ul").children("li");
	var menuSize = $("#sideContent .sideNavi ul li").size();
	var twMenuSize = menu.size();
	var thMenuSize = 0;
	var subContentHeight = 100;
	for(var i=0; i<=menuSize;i++){
		if(menu.children("ul").children("li") > thMenuSize){
			thMenuSize = menu.children("ul").children("li")
		}
	}
	twMenuSize = twMenuSize * 50;
	thMenuSize = thMenuSize * 30;
	subContentHeight = subContentHeight+twMenuSize+thMenuSize;
	if(subContentHeight > 600){
		$(".subContent_body").css("min-height",subContentHeight+"px");
	}
});


$(function () {
    navCtl2();
});

	
function navCtl() {
    var sideCon = $('#sideContent');
    var sideLink = $('.sideNavi a');
    var sideSub = $('.sideNavi ul li ul');
	var current = $.trim($('#location strong').text());
	
    $('#sideContent a').focus(function() {
        $('#gnb >ul > li > ul').css('top',-500);
        $('.bgGnb').hide();
    });

   sideLink.each(function() {
         if ($(this).text() == current) {
                $(this).addClass('lock');
                if ( $(this).parent().parent().size() > 0) {
                    $(this).parent().parent().addClass('lock').prev('a').addClass('lock').next().slideToggle();
                }
                $(this).parents('.sideNavi').prev().addClass('on');
         }
    });
   sideLink
       .hover(
           function(){
               if ($(this).next('ul').size() > 0 && !$(this).hasClass('lock') && !$(this).hasClass('on')) {
                   sideSub.not('.lock').slideUp();
                   sideLink.removeClass('on');
                   $(this).addClass('on').next().slideToggle();
               }
           },
           function(){

           }
           , 300
     )
     .bind('click',function(ev) {
        if ($(this).next('ul').size() > 0) {
            ev.preventDefault();
            sideSub.not('.lock').slideUp();
            sideLink.removeClass('on');
            $(this).addClass('on').next().slideToggle();
        }

    });
    sideCon.bind('mouseleave blur', function() {
        sideLink.not('.lock').removeClass('on');
        sideSub.not('.lock').delay(300).slideUp();
    });

}

/**
 * 왼쪽메뉴 열림 유지하기
 * @returns
 */
function navCtl2() {
	var sideCon = $('#sideContent');
	var sideLink = $('.sideNavi a');
	var sideSub = $('.sideNavi ul li ul');
	var mi = $("#leftCurrMi").val(); //현재 메뉴아이디
	var baseMi = $("#tabBaseMi").val(); //탭베이스 메뉴
	var upperMi = $("#tabUpperMi").val(); //탭상위메뉴
	var menuId = "";
	
	$('#sideContent a').focus(function() {
		$('#gnb >ul > li > ul').css('top',-500);
		$('.bgGnb').hide();
	});
	
	sideLink.each(function() {
		menuId = $(this).attr('id');
		if (menuId == mi || menuId == baseMi || menuId == upperMi) { 
			$(this).addClass('lock'); 
			if ( $(this).parent().parent().size() > 0) {
				$(this).parent().parent().addClass('lock').prev('a').addClass('lock').next().slideToggle();
			}
			$(this).parents('.sideNavi').prev().addClass('on');
		} 
	});
	sideLink
	.hover(
			function(){
				if ($(this).next('ul').size() > 0 && !$(this).hasClass('lock') && !$(this).hasClass('on')) {
					sideSub.not('.lock').slideUp();
					sideLink.removeClass('on');
					$(this).addClass('on').next().slideToggle();
				}
			},
			function(){
				
			}
			, 300
	)
	.bind('click',function(ev) {
		if ($(this).next('ul').size() > 0) {
			ev.preventDefault();
			sideSub.not('.lock').slideUp();
			sideLink.removeClass('on');
			$(this).addClass('on').next().slideToggle();
		}
		
	});
	sideCon.bind('mouseleave blur', function() {
		sideLink.not('.lock').removeClass('on');
		sideSub.not('.lock').delay(300).slideUp();
	});
	
}


//sns
$(function () {
    $('.snsBox button.btnShare').click(function() {
        $(this).next().slideToggle(300);
    });

});

// document ready
$(function(){
	listsList();
	faqList();
});

// 리스트
function listsList(){
	$('.listDetail .view > a').off('click');
	$('.listDetail .view > a').on('click' , function(){
		var title = $(this).parent('.view');
		if (title.hasClass('on')){
			$(".listDetail .view").removeClass("on");
		} else {
			title.addClass("on");
			$(".listDetail .view").not(title).removeClass("on");
		}
	});
}
// 자주묻는질문(FAQ)
function faqList(){
	$('.faqDetail .faq > a').off('click');
	$('.faqDetail .faq > a').on('click' , function(){
		var title = $(this).parent('.faq');
		if (title.hasClass('on')){
			$(".faqDetail .faq").removeClass("on");
		} else {
			title.addClass("on");
			$(".faqDetail .faq").not(title).removeClass("on");
		}
	});
}
