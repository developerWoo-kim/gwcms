$(document).ready(function() {
	//webNavi -  2020.05.12 SY,CHo 마크업 구조 변경에 따른 일부 수정
	$('#gnb .lstDep1 > li > a').on("mouseover focusin", function(){
		$('#gnb .lstDep1 > li').removeClass('on'); 
		$(this).parent().addClass('on'); 
	});
	$('#gnb').on("mouseleave", function(){	
		$('#gnb .lstDep1 > li').removeClass('on'); 
	});
	$('#gnb .lstDep1 > li:first > a').keydown(function(e){
		e = e || window.event;

		var keyType = e.keyCode || e.which;

		if (e.shiftKey && keyType == 9) {
			$('#gnb .lstDep1 > li').removeClass('on'); 
		}
	});
	$('#gnb .lstDep2 li:last a').keydown(function(e){
		e = e || window.event;

		var keyType = e.keyCode || e.which;

		if (!e.shiftKey && keyType == 9) {
			$('#gnb .lstDep1 > li').removeClass('on'); 
		}
	});
});

/* 2020.05.12 SY,CHo 클래스 적용으로 수정 */
$(function () {
    function check() {
        $("#menuOpen").click(function () {
            $("#mNavi").addClass("active");
        });
		
        $("#mtitle a").click(function () {
            $("#mNavi").removeClass("active");
        });		
		
		$("#mNavi #mgnb ul li ul li ul").parent("li").addClass('row');
		
		// 1차메뉴 클릭시 
		$(".dep").click(function () {
			$(this).parent().siblings().children('ul').slideUp(300);
			$(this).siblings("ul").slideToggle(300);
            return false;	
		});
		
		// 2차메뉴 클릭시 (원본) 
		/*$(".dep2").click(function () { 
			$(this).parent().siblings().children('ul').slideUp(300);
			$(this).siblings("ul").slideToggle(300);
			$(this).parent('li').toggleClass("on");
			$(this).parent().siblings("li").removeClass('on');
            return false;	
		});*/
		// 2차메뉴 클릭시 
		$(".dep2").click(function () { 
			// dep2UlSize, if 는 00001 템플릿을 위한 것
			var dep2UlSize = $(this).next('ul').length;
			if (dep2UlSize > 0) {
				$(this).parent().siblings().children('ul').slideUp(300);
				$(this).siblings("ul").slideToggle(300);
				$(this).parent('li').toggleClass("on");
				$(this).parent().siblings("li").removeClass('on');
	            return false;	
			}
		});
		
		// 검색
		$("#searchOpen").click(function () {
            $("#mSearch").addClass("active");
        });
        $(".btnSearchClose").click(function () {
            $("#mSearch").removeClass("active");
        });		
    }
		
    $(window).resize(function () {
		var winWidth = $(window).width();
		if (winWidth > 1024) {
            $("#mNavi").removeClass("active");
		}		
    });
	
    check();

	// 맨위로 가기
	$('.btn_top').hide();
	$(window).scroll(function(){
		if($(this).scrollTop() > 200){
			$('.btn_top').fadeIn();
		}else{
			$('.btn_top').fadeOut();
		}
	});
/*	$('.top').click(function(){
		$('html, body').animate({scrollTop:0}, 400);
		return false;
	});	*/

	/* footer 링크 */
    $('#baseLink a').not('.blank').click(function(ev) {
        ev.preventDefault();
        var url = $(this).attr('href');
        $('#floatLink').hide();
    });
	
    $('.footBtn button, .footer_link button').click(function() {
        $(this).next().slideToggle(300);
    });

});


	