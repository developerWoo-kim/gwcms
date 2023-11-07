
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
});


$(function () {
    //navCtl();

	$('.sideNavi li').each(function(){
		$this = $(this);
		if($this.find('ul').length > 0){
			$this.addClass('child');
		}
	});

	$('.sideNavi a').on('click', function(e){
		if($(this).parent().hasClass('child') == true){
			$(this).parent().toggleClass('active').siblings('li').removeClass('active');
			/* 2021.02.26. SY,CHo 웹접근성 개선작업 */
			$(".sideNavi .dep01 > li.child > a, .sideNavi .dep02 > li.child > a").attr("title", "닫힘");
			$(".sideNavi .dep01 > li.child.active > a, .dep02 > li.child.active > a").attr("title", "열림");
			e.preventDefault();
		}
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
