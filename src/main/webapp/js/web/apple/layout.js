/*-------------------------------------------------
Author : SY, CHO
Create date : 2020. 05. 20.
-------------------------------------------------*/

$(function(){
	// 메인메뉴
	$(document).on('click', '#mainMenu .gnb > li > a',function(e){
		//console.log(1);
		$(this).parent('li').addClass('active').siblings().removeClass('active');
		e.preventDefault();
	});

	// 풀메뉴 버튼
	$('.allMenu').on('click', function(e){
		if($(this).hasClass('active') === true){
			$('#header').removeClass('menuOpen');
		}else{
			$('#header').addClass('menuOpen');
		}
		e.preventDefault();
	});

	// HASH 버튼
	$('.hash').on('click', function(e){
		if($(this).parents().hasClass('layerPopupWrap') == true){
			$('.layerPopupWrap').slideUp(300);
		}
		$(this.hash).slideDown(300);
		e.preventDefault();
	});
	$('.hashClose').on('click', function(e){
		$(this.hash).slideUp(300);
		e.preventDefault();
	});

	// HASH TOGGLE 버튼
	$('.hashToggle').on('click', function(e){
		if($(this).hasClass('share') == true){
			$(this).toggleClass('active');
		}
		$(this.hash).slideToggle();
		e.preventDefault();
	});

	// HASH TOGGLE Class버튼
	$('.hashToggleClass').on('click', function(e){
		if($(this).parents().hasClass('statistics') == true){
			//console.log(1);
			$(this).parent('li').siblings().removeClass('active');
		}
		$(this.hash).toggleClass('active');
		e.preventDefault();
	});
});
