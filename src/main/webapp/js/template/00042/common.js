$(document).ready(function() {	
	//webNavi
	$('#gnb li ul').hide(); 
		
	$('#gnb li').mouseover(function(){
		
		$(this).addClass('on'); 
		$(this).find('ul.box').show(); 
	});
	$('#gnb li').mouseout(function(){	
	
		$(this).removeClass('on'); 	
		$('#gnb li ul').hide(); 
	});	
		
	$('#gnb > li > a').focus(function(){
		
		$('#gnb > li').removeClass('on'); 
		$(this).parent('li').addClass('on');
		$('#gnb li ul.box').hide(); 
		$(this).next('ul.box').show();
		 
	});	
	
	$('#gnb li ul li:last-child() a').blur(function(){
		
		$('#gnb > li').removeClass('on'); 
		$(this).parent('li').removeClass('on');
		$('#gnb li ul.box').hide(); 
		$(this).next('ul.box').hide(); 
	}); 
	
});

$(function () {
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
                "top": "69px"
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
	