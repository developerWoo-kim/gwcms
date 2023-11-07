
/* boardViewA_photo */
$(function(){
	fileUploadName();

	bbs_Faq();

	$ptBoard = $('.bbsV_cont .slider-view > div');
	$ptBoardCount = $ptBoard.length;
	$ptBoard.clone().appendTo('.bbsV_cont .slider-nav');

	if($ptBoardCount > 4){
		$ptBoardCount = 4;
	}

	setTimeout(function(){
		if($ptBoardCount > 0){
			$('.bbsV_cont .slider-view').slick({
				slidesToShow: 1,
				slidesToScroll: 1,
				arrows: false,
				fade: true,
				adaptiveHeight: true,
				asNavFor: '.slider-nav'		
			});
		
			$('.bbsV_cont .slider-nav').slick({
				slidesToShow: $ptBoardCount,
				slidesToScroll: 1,
				focusOnSelect: true,
				arrows: true,
				asNavFor: '.slider-view',
				responsive: [            
					{ breakpoint: 1200, settings: { slidesToShow: 3 }},
					{ breakpoint: 860, settings: { slidesToShow: 2 }},
					{ breakpoint: 540, settings: { slidesToShow: 1 }}
				]
			});			
		}
	},100);
});

/* board images align */
window.onload = function () {
    $(function () {
        $photoBoardA = $('.bbs_PhotoA');
        $photoBoardB = $('.bbs_PhotoB');	
        $photoBoardC = $('.bbs_PhotoC');	
        $photoBoardEm = $('.bbs_Photo_top');	
        $pdfBoard = $('.bbs_PDF');	
		$photoView = $('.bbs_ViewA .slider-nav');	
		
		imgAlign($photoBoardA, 'div');
		imgAlign($photoBoardB, 'div');
		imgAlign($photoBoardC, 'div');
		imgAlign($photoBoardEm, 'div');
		imgAlign($pdfBoard, 'div');
		imgAlign($photoView, 'div');
    });
}
function imgAlign(wrap, imgBox) {

    $imgBox = wrap.find(imgBox);

    $imgBox.each(function () {
        $img = $(this).find('img');
        img_w = $img.width(); //image width size
        img_h = $img.height(); //image height size

		if (img_w > img_h) { //媛�濡� �대�吏�
			$img.addClass('hoiztImg');
		}else{
			$img.removeClass('hoiztImg').addClass('vertImg');
		}
    });
}; 
/* board images align */

/* board write input File */
function fileUploadName(){
	$(".bbsWFile input[type=file]").on('change',function(){
		var fileValue = $(".bbsWFile input[type=file]").val().split("\\");
		var fileName = fileValue[fileValue.length-1]; // �뚯씪紐�
	  	$(this).siblings(".inp_st").val(fileName);
	});
}

// FAQ : A����
function bbs_Faq(){
	$('.bbs_FaqA .faq > a').off('click');
	$('.bbs_FaqA .faq > a').on('click' , function(){
		var title = $(this).parent('.faq');
		if (title.hasClass('on')){
			title.removeClass("on").find('.faq_A').stop().slideUp();
		} else {
			$(".bbs_FaqA .faq").not(title).removeClass("on");
			$(".bbs_FaqA .faq .faq_A").stop().slideUp();
			title.addClass("on").find('.faq_A').stop().slideDown();
		}
	});
}