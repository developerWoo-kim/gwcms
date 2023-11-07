$(function() {

	if($('#upPopSlide').length > 0){
	  //Slide
	  var upPopSlide = $('#upPopSlide').bxSlider({
	    auto: true,
	    autoControls: true,
	    moveSlides: 1,
	    autoDelay: 3000,
	    maxSlides: 2,
	    minSlides: 2,
	    slideWidth: 600,
	    slideMargin: 110,
		infiniteLoop: true,
	    pager: false,
	    onSliderLoad: function(currentIndex) {
	      $('.count').text(currentIndex + 1 + ' / ' + $('#upPopSlide > li:not(.bx-clone)').length);
	    },
	    onSlideBefore: function($slideElement, oldIndex, newIndex) {
	      $('.count').text(newIndex + 1 + ' / ' + $('#upPopSlide > li:not(.bx-clone)').length);
	    }
	  });

	  //Slide responsive
	  $(window).on('load resize', function() {
	    var slideCount;
	    var slideWidth;

	    if ($(window).width() < 1200) {
	      slideCount = 1;
	      slideWidth = 1024;
	    } else {
	      slideCount = 2;
	      slideWidth = 650;
	    }

	    upPopSlide.reloadSlider({
	      auto: true,
	      autoControls: true,
	      moveSlides: 1,
	      autoDelay: 3000,
	      maxSlides: slideCount,
	      minSlides: slideCount,
	      slideWidth: slideWidth,
		  infiniteLoop: true,
	      pager: false,
	      onSliderLoad: function(currentIndex) {
	        $('.count').text(currentIndex + 1 + ' / ' + $('#upPopSlide > li:not(.bx-clone)').length);

	      },
	      onSlideBefore: function($slideElement, oldIndex, newIndex) {
	        $('.count').text(newIndex + 1 + ' / ' + $('#upPopSlide > li:not(.bx-clone)').length);
	      }
	    });
	  });
	  $('.up_pop a').focusin(function() {
	    upPopSlide.stopAuto();
	  });
	}

  //pop active
  $('.popBtn').on('click', function() {
    if ($('#wrap').hasClass('openPop')) {
      $('#wrap').removeClass('openPop');
    } else {
      $('#wrap').addClass('openPop');
    }
  });
	
  //상단팝업 오늘하루 열지않기_20230323 장주연 추가
  $('.pop_close').on('click',function(){
		var cookieNM = "popCookie";
		setCookie(cookieNM, "hide");
		$('#wrap').removeClass('openPop');
  })
});