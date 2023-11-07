$(document).ready(function() {	
	snsBox();

	//webNavi
	$('#gnb .depth02').hide(); 
		
	$('#gnb li').mouseover(function(){
		
		$(this).addClass('on'); 
		$(this).find('.depth02').show(); 
	});
	$('#gnb li').mouseout(function(){	
	
		$(this).removeClass('on'); 	
		$('#gnb .depth02').hide(); 
	});	
		
	$('#gnb > li > a').focus(function(){
		
		$('#gnb > li').removeClass('on'); 
		$(this).parent('li').addClass('on');
		$('#gnb .depth02').hide(); 
		$(this).next('ul.box').show();
		 
	});	
	
	$('#gnb li ul li:last-child() a').blur(function(){
		
		$('#gnb > li').removeClass('on'); 
		$(this).parent('li').removeClass('on');
		$('#gnb .depth02').hide(); 
		$(this).next('ul.box').hide(); 
	}); 
	
});

$(function () {
	
	//tab
	if($('div[class^="tab_st"]').length > 0){
		reactTab();
	}
	// 변수생성!!!
	var menuRight = 250;
	var searchTop = 90;
	// 함수생성!!!
	function test() {
		var winWidth = $(window).width();
        if (winWidth > 300 && winWidth < 801) {
            menuRight = 250;
			searchTop = 90;
        }
	}
    function check() {
        // 함수호출!!!!
		test();
        $("#menuOpen").click(function () {
           // var allwrapHeight = $("#wrap").height();
            $("#mNavi").css("display", "block");
           // $("#mNavi").css("height", allwrapHeight);
			$('.box_mot_1').addClass('on');//추가
			
            $("#mNavi").stop().animate({
                "left": "0"
            }, 300)
        });
		
        $("#mtitle a").click(function () {
			// 함수호출!!!
			test();
            $("#mNavi").stop().animate({
                "left": "-" +menuRight + "px"
            }, 300)
			$('.box_mot_1').removeClass('on');//추가
        });		
		
		$("#mNavi #mgnb ul li ul li ul").parent("li").addClass('row');
		
		
		$(".dep").click(function () {
				$(this).parent().siblings().children('ul').slideUp(300);
				$(this).siblings("ul").slideToggle(300);
            return false;	
		});
		
		// 2차메뉴 클릭시( 
		$(".dep2").click(function () { 
				$(this).parent().siblings().children('ul').slideUp(300);
				$(this).siblings("ul").slideToggle(300);
				$(this).parent('li').toggleClass("on");
				$(this).parent().siblings("li").removeClass('on');
            return false;	
		});
		
		// 검색
		$("#searchOpen").click(function () {
            $("#mSearch").css("display", "block");			
            $("#mSearch").stop().animate({
                "top": "68px"
            }, 300)
        });
		
        $(".btnSearchClose").click(function () {
			test();
            $("#mSearch").stop().animate({
                "top": "-" +searchTop + "px"
            }, 300)
        });		
		
    }
		
		
    $(window).resize(function () {
		var winWidth = $(window).width();
		//$("#mNavi").css("display", "none");
		if (winWidth > 800) {
			$("#mNavi").removeAttr('style');
			//$("#mNavi").css("display", "none");
		}		
    });
	
    check();
});

/* footer 링크 */
$(function () {
    $('#baseLink a').not('.blank').click(function(ev) {
        ev.preventDefault();
        var url = $(this).attr('href');
        $('#floatLink').hide();
    });
	
    $('.footBtn button, .footer_link button').click(function() {
        $(this).next().slideToggle(300);
    });

});
	

// sub snsBox
function snsBox(){
	$(document).on('click', '#subContent .snsBox .btnShare', function(e){
		if($('#snsMore').hasClass('active') == true){
			$('#snsMore').removeClass('active');
		}else{
			$('#snsMore').addClass('active').find('a').first().focus();
		}
		e.preventDefault();
	});
	$(document).on('click', '#subContent .snsBox .close', function(e){
		snsHide()
		e.preventDefault();
	});

	$('#snsMore a.snsClose').on('click', function(e){
		snsHide()
		e.preventDefault();
	});

	$('#snsMore a:last-child').on('focusout', function(){
		snsHide()
	});

	function snsHide(){
		$('#snsMore').removeClass('active');
		$('#subContent .snsBox .btnShare').focus();
	}
}

$(window).resize(function() {
	this.resizeTO = setTimeout(function() {
		$(this).trigger('resizeEnd');
	}, 150 );
}).resize();

// tab
function reactTab(){
	var $tab = $('div[class^="tab_st"]');

	$(window).resize(function() {
		this.resizeTO = setTimeout(function() {
			$(this).trigger('resizeEnd');
		},100 );
	}).resize();
	
	$(window).on('resizeEnd', function() {
		$tab.each(function(){
			if($(window).width() < 1241){
				$(this).addClass('reactTab');
			}else{
				$(this).removeClass('reactTab').find('> ul').removeAttr('style');
			}
		});
	});


	$tab.each(function(idx){
		var $link = $(this).find(' > ul > li.on > a');
		var $linkCopy = $link.addClass('select').clone();

		$link.attr('title', '선택된 페이지');
		$(this).find('> ul').before($linkCopy);
	});

	$(document).on('click', '.reactTab > a.select', function (e) {

		var $tabBox = $(this).next('ul');
		$tabBox.slideToggle();

		return false;
	});
}



