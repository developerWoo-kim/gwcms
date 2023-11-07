$(function() {

	//notice tab
	$(document).on('click', 'div[class*="notice"] .titTab li > a', function(e){
		var contents = $(this.hash);

		$(this).addClass('current').parent('li').siblings().find('a').removeClass('current');
		$(contents).addClass('on').siblings().removeClass('on');
		e.preventDefault();
	});


	//main visual
	var visualPrev = '.visual .prev';
	var visualNext = '.visual .next';
	var visualStop = '.visual .stop';
	var visualPlay = '.visual .play';
	$("#visualSlide").slick({
		slider: '.item',
		infinite: true,
		autoplaySpeed: 4000,
		speed : 500,
		autoplay: true,
		prevArrow: visualPrev,
		nextArrow: visualNext
	});
	$('.visual .control a').click(function(e){
		slickControl($(this), '#visualSlide', visualStop, visualPlay);
		e.preventDefault();
	});

	// main visual resize
	var delta = 100;
	var timer = null;
	$(window).on('resize', function(){
		clearTimeout(timer);
		timer = setTimeout( resizeDone, delta );
	});
	function resizeDone() {
		$("#visualSlide").slick('setPosition');
	}


	/*gallery
	var galleryPrev = '.gallery0045 .prev';
	var galleryNext = '.gallery0045 .next';
	var galleryStop = '.gallery0045 .stop';
	var galleryPlay = '.gallery0045 .play';
	$("#gallerySlider").on('init', function(event, slick) {		
		$('.gallery0045 .page strong').text(slick.currentSlide+1);
		$('.gallery0045 .page span').text(slick.slideCount);
	}).slick({
		slider: '.item',
		infinite: true,
		autoplay: true,
		prevArrow: galleryPrev,
		nextArrow: galleryNext,
		slidesToShow: 4,
		responsive: [
			{ breakpoint: 1025, settings: { slidesToShow: 3 }},
			{ breakpoint: 769, settings: { slidesToShow: 2 }},
			{ breakpoint: 541, settings: { slidesToShow: 1 }}
		  ]
	}).on('beforeChange', function (event, slick, currentSlide, nextSlide) {
		$('.gallery0045 .page strong').text(nextSlide+1);
	});
	$('.gallery0037 .nss_pg a').click(function(e){
		slickControl($(this), '#gallerySlider', galleryStop, galleryPlay);
		e.preventDefault();
	});*/
	
	//popupZone visual
	var popupPrev = '.popupZone .prev';
	var popupNext = '.popupZone .next';
	var popupStop = '.popupZone .stop';
	var popupPlay = '.popupZone .play';
	$("#popupSlide").on('init', function(event, slick) {		
		$('.popupZone .page strong').text(slick.currentSlide+1);
		$('.popupZone .page span').text(slick.slideCount);
	}).slick({
		slider: '.item',
		infinite: true,
		autoplaySpeed: 4000,
		speed : 500,
		autoplay: true,
		prevArrow: popupPrev,
		nextArrow: popupNext
	}).on('beforeChange', function (event, slick, currentSlide, nextSlide) {
		$('.popupZone .page strong').text(nextSlide+1);
	});
	$('.popupZone .control a').click(function(e){
		slickControl($(this), '#popupSlide', popupStop, popupPlay);
		e.preventDefault();
	});
	
	//sechdule
	var schedulePrev = '.pop_schedule0059 .prev';
	var scheduleNext = '.pop_schedule0059 .next';
	$("#scheduleSlide").slick({
		slider: '.item',
		infinite: true,
		slidesToShow : 3,		// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
		autoplaySpeed: 4000,
		speed : 500,
		autoplay: false,
		prevArrow: schedulePrev,
		nextArrow: scheduleNext,
		draggable : false,
		responsive: [
			{ breakpoint: 1024, settings: { slidesToShow: 2 }},
			{ breakpoint: 950, settings: { slidesToShow: 3 }},
			{ breakpoint: 680, settings: { slidesToShow: 2 }},
			{ breakpoint: 560, settings: { slidesToShow: 2 }},
			{ breakpoint: 480, settings: { slidesToShow: 1 }}
		  ]
	});
	
	//banner
	var bnPrev = '.banner_zone .prev';
	var bnNext = '.banner_zone .next';
	var bnStop = '.banner_zone .stop';
	var bnPlay = '.banner_zone .play';
	$("#bnSlider").slick({
		slider: '.item',
		infinite: true,
		autoplay: true,
		prevArrow: bnPrev,
		nextArrow: bnNext,
		slidesToShow: 5,
		responsive: [
			{ breakpoint: 1024, settings: { slidesToShow: 4 }},
			{ breakpoint: 768, settings: { slidesToShow: 3 }},
			{ breakpoint: 560, settings: { slidesToShow: 2 }},
			{ breakpoint: 420, settings: { slidesToShow: 1 }}
		  ]
	});
	$('.banner_zone .btn a').click(function(e){
		slickControl($(this), '#bnSlider', bnStop, bnPlay);
		e.preventDefault();
	});

});

// slider Control
function slickControl($this, slick, stop, play){
	var $slick = $(slick); //slider wrap
	var $stop = $(stop); //Stop Button
	var $play = $(play); //Play Button
	var display = $this.css("display"); // button's display

	if($this.is(stop)){
		$stop.css('display','none');
		$play.delay(100).css('display', display);
		$slick.slick('slickPause');
	}
	if($this.is(play)){
		$play.css('display','none');
		$stop.delay(100).css('display', display);
		$slick.slick('slickPlay');
	}
}