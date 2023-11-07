/*-------------------------------------------------
Author : SY, CHO
Create date : 2020. 05. 20.
-------------------------------------------------*/

$(document).ready(function(){
    // Notice 슬라이드
	var noticelst = $('.notice ul').bxSlider({
		mode: 'vertical',
		speed: 1000,
		pause: 5000,
		auto: true
	});
	$('.notice .prev').on('click', function(e){
		noticelst.goToPrevSlide();
		e.preventDefault();
	});
	$('.notice .next').on('click', function(e){
		noticelst.goToNextSlide();
		e.preventDefault();
	});

    // 페이지 로드시 메인메뉴 active
	if($(window).width() > 1024){
		setTimeout(function(){$('#wrap').addClass('active');}, 1000);
	}
});
