$(document).ready(function(){
	if ($('#m_visual > li').length > 1) {
		var mVisualSlider = $('#m_visual').bxSlider({
			auto: true,
			autoControls: true,
			autoDelay: 3000
		});

		$('.main_visual a.bx-stop').click(function(){	
			$(this).css('display','none');
			$('.main_visual a.bx-start').css('display','block');
		});
		$('.main_visual a.bx-start').click(function(){	
			$(this).css('display','none');
			$('.main_visual a.bx-stop').css('display','block');
		});
		$('.main_visual a').focusin(function(){
			mVisualSlider.stopAuto();
		});
	}

	//main slider Poster 
	var fadeTime = 400;
	var fadeEase = "easeOutQuad";
	$(".posterArea .posters ul li .sum").hover(function(evt){
		$(this).find(".posterInfo").stop(true, true).fadeIn(fadeTime, fadeEase);
	}, function(evt) {
		$(this).find(".posterInfo").stop(true, true).fadeOut(fadeTime, fadeEase);
	});
	$(".posterArea .posters ul li a.img").focus(function(evt){
		$(this).siblings(".posterInfo").stop(true, true).fadeIn(fadeTime, fadeEase);
	});
	$(".posterArea .posters ul li .posterInfo a").focus(function(evt) {
		$(this).parents(".sum").eq(0).children(".posterInfo").stop(true, true).fadeIn(fadeTime, fadeEase);
	});

	// 포토 갤러리
	// var gallList = $('.gall_list').bxSlider({
	// 	infiniteLoop: true,
	// 	speed: 1000,
	// 	pause: 5000,
	// 	auto: true,
	// 	controls: false,
	// 	pager: false,
	// 	touchEnabled: false,
	// 	minSlides: 1,
	// 	maxSlides: 4,
	// 	moveSlides: 1,
	// 	slideWidth: 216,
	// 	slideMargin: 30,
	// 	onSliderLoad: function(){
	// 		$(".gall_list .bx-clone").find("a").prop("tabIndex","-1");
	// 	},
	// 	onSlideAfter: function(){
	// 		$('.gall_list > li').each(function(){
	// 			if($(this).attr("aria-hidden") == "false"){
	// 				$(this).find("a").attr("tabIndex","0");
	// 			}
	// 		});
	// 	}
	// });
	// $('.gallery2001 .btn').on('click', function(event){
	// 	if($(this).hasClass('prev') == true){
	// 		gallList.goToPrevSlide();
	// 	}else{
	// 		gallList.goToNextSlide();
	// 	}
	// 	event.preventDefault();
	// });
	// $('.gallery2001 a').focusin(function () {
	// 	gallList.stopAuto();
	// });
});

//thumbResize
var thumbResize = function () {
	// 포토 갤러리
	var gallList = $('.gall_list').bxSlider({
		infiniteLoop: true,
		speed: 1000,
		pause: 5000,
		auto: true,
		controls: false,
		pager: false,
		touchEnabled: false,
		minSlides: 1,
		maxSlides: 4,
		moveSlides: 1,
		slideWidth: 216,
		slideMargin: 30,
		onSliderLoad: function(){
			$(".gall_list .bx-clone").find("a").prop("tabIndex","-1");
		},
		onSlideAfter: function(){
			$('.gall_list > li').each(function(){
				if($(this).attr("aria-hidden") == "false"){
					$(this).find("a").attr("tabIndex","0");
				}
			});
		}
	});
	$('.gallery2001 .btn').on('click', function(event){
		if($(this).hasClass('prev') == true){
			gallList.goToPrevSlide();
		}else{
			gallList.goToNextSlide();
		}
		event.preventDefault();
	});
	$('.gallery2001 a').focusin(function () {
		gallList.stopAuto();
	});
}


//팝업 리스트보기
$(function () {
	// 변수생성!!!
	var pop_list = 500;
	// 함수생성!!!
	function pop_layer() {
		var winWidth = $(window).width();
        if (winWidth > 2000 && winWidth < 2000) {
            pop_list = 500;
        }
	}
    function check() {
        // 함수호출!!!!
		pop_layer();
		$("#Pop_ListOpen").click(function () {
            $(".pop_layer_box").css("display", "block");
        });
		
        $("#Pop_ListClose").click(function () {
			// 함수호출!!!
			pop_layer();
             $(".pop_layer_box").css("display", "none");
        });		

    }
    check();
});


//알림장 리스트보기
$(function () {
	// 변수생성!!!
	var pop_list = 500;
	// 함수생성!!!
	function pop_layer() {
		var winWidth = $(window).width();
        if (winWidth > 2000 && winWidth < 2000) {
            pop_list = 500;
        }
	}
    function check() {
        // 함수호출!!!!
		pop_layer();
		$("#Ann_ListOpen").click(function () {
            $(".ann_layer_box").css("display", "block");
        });
		
        $("#Ann_ListClose").click(function () {
			// 함수호출!!!
			pop_layer();
             $(".ann_layer_box").css("display", "none");
        });		

    }
    check();
});



