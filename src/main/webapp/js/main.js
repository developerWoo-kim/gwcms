
// 배너롤링
$(function(){
	if($(".bannerRolling").length > 0){
		rollingStart();
	}
	
	var bannerFlag = true;
	var bannerInterval;
	
	function rollingStart(){ 
		bannerFlag == true;
		bannerInterval = setInterval(rollingNext,4000);
	}
	
	function rollingStop(){ 
		bannerFlag == false;
		clearInterval(bannerInterval);
	}
	
	function rollingNext(){
		var brelSiteW = $('.bannerRolling li').outerWidth(true);
		var thisObj = $(".bannerRolling li:first");
		//$(".banner_zone li:first").css('opacity','0');
		var sup = parseInt($('.bannerRolling ul').css('left')) - brelSiteW;
		$('.bannerRolling ul:not(:animated)').animate({left:sup} , function(){
			//thisObj.css('opacity','1');
			thisObj.appendTo(this);
			$('.bannerRolling ul').css({left:0});
		});	
	}
	
	function rollingPrev(){
		var brelSiteW = $('.bannerRolling li').outerWidth(true);
		var thisObj = $(".bannerRolling li:last");
		//$(".banner_zone li:first").css('opacity','0');
		var sup = parseInt($('.bannerRolling ul').css('left')) - brelSiteW;
		$('.bannerRolling ul:not(:animated)').animate({left:sup} , function(){
			//thisObj.css('opacity','1');
			$('.bannerRolling li:last').prependTo(this);
			$('.bannerRolling ul').css({left:0});
		});	
	}
	
	$(".bannerRolling .stop").on("click",function(){
		rollingStop();
	});
	
	$(".bannerRolling .pre").on("click",function(){
		clearInterval(bannerInterval);
		var brelSiteW = $('.bannerRolling li').outerWidth(true);
		var thisObj = $(".bannerRolling li:last");
		//$(".banner_zone li:first").css('opacity','0');
		var sup = parseInt($('.bannerRolling ul').css('left')) - brelSiteW;
		$('.bannerRolling ul:not(:animated)').animate({left:sup} , function(){
			//thisObj.css('opacity','1');
			$('.bannerRolling li:last').prependTo(this);
			$('.bannerRolling ul').css({left:0});
		});	
		bannerInterval = setInterval(rollingPrev,4000);
	});
	
	$(".bannerRolling .next").on("click",function(){
		clearInterval(bannerInterval);
		var brelSiteW = $('.bannerRolling li').outerWidth(true);
		var thisObj = $(".bannerRolling li:first");
		//$(".banner_zone li:first").css('opacity','0');
		var sup = parseInt($('.bannerRolling ul').css('left')) - brelSiteW;
		$('.bannerRolling ul:not(:animated)').animate({left:sup} , function(){
			//thisObj.css('opacity','1');
			thisObj.appendTo(this);
			$('.bannerRolling ul').css({left:0});
		});	
		bannerInterval = setInterval(rollingNext,4000);
	});
});