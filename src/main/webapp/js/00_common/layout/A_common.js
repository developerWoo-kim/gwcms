
/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	Gnb Function	

/////////////////////////////////////////////////////////////////////////////////////////////////////////// */
$(function(){
	js_gnb ();
});
function js_gnb(){
	var dtxt01 = $(".depth01").text();
	var dtxt02 = $(".depth02").text();
	var dtxt03 = $(".depth03").text();
	var dtxt04 = $("#contents .path strong").text();
	
	var gnb_obj = $("#nav > #gnb > .wrap > ul");
		gnb_obj.intervals = "";
		gnb_obj.li = gnb_obj.find(">li"); 
		gnb_obj.li.a = gnb_obj.li.find(">a");
		gnb_obj.li.ul = gnb_obj.li.find(">ul");
		gnb_obj.li.ul.li = gnb_obj.li.ul.find(">li"); 
		gnb_obj.li.ul.li.a = gnb_obj.li.ul.li.find(">a");
		gnb_obj.li.ul.li.group = gnb_obj.li.ul.li.find("ul.group");
		gnb_obj.h = $("#header #nav"); 
		gnb_obj.blind = $("#nav > #blind"); 
		
	//default
	gnb_obj.li.each(function(e){
		$(this).addClass("num"+(e+1));	
	});

	/* 1차메뉴 width setting */
	dep01_Count = gnb_obj.li.length; //1차메뉴 갯수
	gnb_obj.li.css('width',(100/dep01_Count)+"%");

	
	/* 3차메뉴 체크 */
	gnb_obj.li.ul.li.each(function(e){
		if($(this).find('ul.group').length > 0){
			$(this).addClass("dep");
		}		
	});	

	/* 3차메뉴 접근성 */
	gnb_obj.li.last().find('> ul > li').last().addClass("lastCheck");
	gnb_obj.li.find('a').on('focus', function(){
		$depCheck = $(this).parents('li.dep.lastCheck');
		$li = $(this).parents('li');

		if($li.hasClass('lastCheck')){				
			$(this).keydown(function (key) { 
				if(key.keyCode == 9){
					if($(this).parents('li.dep').hasClass('open')==false){
						gnb_obj.li.a.removeClass('ov');
						gnb_obj.li.find(">ul").stop().slideUp();		
						gnb_obj.h.stop().animate({"height":100+"px"},500);
						$('#navShadow').fadeOut();
					}
				}
			});
		}
		
		$(this).parents('li.open').find('li').last().find('> a').on("focusout", function(){
			gnb_obj.li.a.removeClass('ov');
			gnb_obj.li.find(">ul").stop().slideUp();	
			$('#navShadow').fadeOut();			
		});

		// 3차메뉴 없을시
		gnb_obj.li.not = gnb_obj.find(">li:last:not(:has(.menuBox))").each(function(){
			$(this).on("focusout",function(){
				gnb_obj.li.a.removeClass('ov');
				gnb_obj.li.find(">ul").stop().slideUp();		
				gnb_obj.h.stop().animate({"height":80+"px"},500);
				$('#navShadow').fadeOut();
			});
		});
	});

	// 메뉴타입 체크
	if($('#header .oneDown').length > 0){
		//하나씩
		oneDown();
		$('#header').after("<div id='navShadow'></div>"); //oneDown nav background shadow
	}else{
		//FullDown
		fullDown();	
	}

	function oneDown(){

		gnb_obj.li.a.on("mouseover focus",function(){
			var idx = gnb_obj.li.index($(this).parent());
			gnb_open(idx);
		});	
		gnb_obj.mouseleave(function(){
			gnb_obj.li.a.removeClass('ov');
			gnb_obj.li.find(">ul").stop().slideUp(100);
			$('#navShadow').stop().fadeOut();
		});
	
		/* OneDown Open*/
		function gnb_open(idx){
			gnb_obj.h.css('height','auto');

			gnb_obj.li.find(">a").removeClass("ov");
			gnb_obj.li.eq(idx).find(">a").addClass("ov");
			gnb_obj.li.find(">ul").removeClass("ov");
			gnb_obj.li.eq(idx).find(">ul").addClass("ov");

			gnb_obj.li.find(">ul").stop().slideUp(100);
			gnb_obj.li.eq(idx).find(">ul").stop().slideDown(300);
			$('#navShadow').stop().fadeIn();
		}
	
		/* 3차메뉴 */
		gnb_obj.li.ul.li.each(function(e){
			if($(this).find('ul.group').length > 0){
				$(this).addClass("dep");
			}
			$(this).click(function(){		
				gnb_obj.h.css('height','auto');
				gnb_obj.li.ul.css('height','auto');
				$(this).parents('ul.menuBox').css('height','auto');
				if($(this).hasClass('open')){
					$(this).removeClass('open').find('ul.group').stop().slideUp();
				}else{
					gnb_obj.li.ul.li.removeClass('open');
					gnb_obj.li.ul.li.group.stop().slideUp();
					$(this).addClass('open').find('ul.group').stop().slideDown();
				}
			});	
		});

	}

	function fullDown(){

		gnb_obj.li.on("mouseover",function(){
			var idx = gnb_obj.li.index($(this));
			gnb_fullDown(idx);
		});	
		gnb_obj.li.a.on("focus",function(){
			var idx = gnb_obj.li.index($(this).parent('li'));
			gnb_fullDown(idx);
		});	
		gnb_obj.h.on("mouseleave",function(){
			gnb_obj.li.a.removeClass('ov');
			gnb_fullDownClose(gnb_obj);
		});

		/* 키보드 체크 */
		gnb_obj.li.last().find("li a").last().on("focusout",function(){
			gnb_fullDownClose();
		});			
			
		/* FullDown Open */
		function gnb_fullDown(idx){
			gnb_obj.li.find(">a").removeClass("ov");
			gnb_obj.li.eq(idx).find(">a").addClass("ov");
			gnb_obj.li.find(">ul").removeClass("ov");
			gnb_obj.li.eq(idx).find(">ul").addClass("ov");
			
			gnb_obj.maxH = 0;
			for(var i=0; i<gnb_obj.li.size(); i++){
				gnb_obj.maxH = Math.max(gnb_obj.maxH,gnb_obj.li.eq(i).find(">ul").removeAttr("style").innerHeight());
			}
			gnb_obj.li.ul.height(gnb_obj.maxH).show().stop().animate({"opacity":1},300);
			gnb_obj.maxH = gnb_obj.maxH + 100; 
			gnb_obj.h.stop().animate({"height":gnb_obj.maxH+"px"},300);
			gnb_obj.blind.stop().animate({"height":100+"%"},300);
		}
	
		/* FullDown Close */
		function gnb_fullDownClose(){
			gnb_obj.li.find("a").removeClass("ov");
			if(dtxt01.length!=0){
				gnb_obj.li.a.removeClass("ov");
				gnb_obj.li.a.each(function(){
					var dt = $(this).text();
					if(dt==dtxt01){
						$(this).addClass("ov");
					}
				});
				if(dtxt02.length!=0){
					gnb_obj.li.ul.li.a.find(">strong").each(function(){
						var dt = $(this).text();
						if(dt==dtxt02){
							$(this).parent("a").addClass("ov");
						}
					});
				}
			}
			gnb_obj.h.stop().animate({"height":80+"px"},500);
			//gnb_obj.blind.stop().animate({"height":0+"px"},500);
		}

		/* 3차메뉴 */
		gnb_obj.li.ul.find('li.dep').click(function(e){
			if($(this).hasClass('open')){
				gnb_obj.li.ul.li.removeClass('open');
				gnb_obj.li.ul.find('ul.group').stop().animate({"opacity":0},130).hide();
			}else{
				gnb_obj.li.ul.li.removeClass('open');
				gnb_obj.li.ul.find('ul.group').stop().animate({"opacity":0},130).hide();
				$(this).addClass('open');
				$(this).find('ul.group').stop().show().animate({"opacity":1},130);
			}
	
			gnb_obj.maxH = 0;
			for(var i=0; i<gnb_obj.li.size(); i++){
				gnb_obj.maxH = Math.max(gnb_obj.maxH,gnb_obj.li.eq(i).find(">ul").removeAttr("style").innerHeight());
			}
			gnb_obj.li.ul.height(gnb_obj.maxH).show().stop().animate({"opacity":1},300);
			gnb_obj.maxH = gnb_obj.maxH + 100; 
			gnb_obj.h.stop().animate({"height":gnb_obj.maxH+"px"},300);
		});
	}
		
	//Slide_map
	$('<div id="slide_map"><div class="box"><strong class="title">전체메뉴</strong><div class="binds"></div><a href="#" class="close">닫기</a></div><span class="blind"></span></div>').prependTo($("#wrap"));
	gnb_obj.clone(false).appendTo($("#slide_map >.box > .binds"));
	/*$(".site_code").clone(false).appendTo($("#slide_map >.box > .binds"));*/
	
	$(".mob_btn").click(function(){
		$("body,html").stop().animate({"scrollTop":"0"},50,function(){ //191024 모바일메뉴 속도조절
			$("#slide_map").show().stop().animate({"opacity":1},300,function(){
				$(this).find(">.box").stop().animate({"left":0},300); 
			});
			$("#wrap").height(940);
			$("#slide_map").height($(document).height());		
		});
		/* 리사이즈시, 모바일 메뉴 닫기 */
		$(window).resize(function(){
			if($("#slide_map").css('display')=='block'){
				$("#slide_map").find(">.box").stop().animate({"left":-100+"%"},300,function(){ 
					$(this).parent().stop().animate({"opacity":0},300,function(){
						$(this).hide();	
					});
					$("#wrap, #slide_map").removeAttr("style");
				});	
			}
		});
		return false;
	});

	$("#slide_map .box .close").click(function(){
		$("#slide_map").find(">.box").stop().animate({"left":-100+"%"},300,function(){ 
			$(this).parent().stop().animate({"opacity":0},300,function(){
				$(this).hide();	
			});
			$("#wrap, #slide_map").removeAttr("style");
		});	
		return false;
	});

	$(window).resize(function(){
		if($("#slide_map").is(":visible")){
			$("#wrap").height(940);
			$("#slide_map").height($(document).height());
		} else {
			$("#wrap, #slide_map").removeAttr("style");	
		}
	});	
	
	//Mobile Menu
	var mob_gnb_obj = $("#slide_map"); 
		mob_gnb_obj.box = mob_gnb_obj.find(">.box"); 
		mob_gnb_obj.box.gnb = mob_gnb_obj.box.find(">.binds"); 
		mob_gnb_obj.box.gnb.ul = mob_gnb_obj.box.gnb.find(">ul");
		mob_gnb_obj.box.gnb.ul.li = mob_gnb_obj.box.gnb.ul.find(">li");
		mob_gnb_obj.box.gnb.ul.li.a = mob_gnb_obj.box.gnb.ul.li.find(">a");
		mob_gnb_obj.box.gnb.ul.li.ul = mob_gnb_obj.box.gnb.ul.li.find(">ul");
		mob_gnb_obj.box.gnb.ul.li.ul.li = mob_gnb_obj.box.gnb.ul.li.ul.find(">li");
		mob_gnb_obj.box.gnb.ul.li.ul.li.a = mob_gnb_obj.box.gnb.ul.li.ul.li.find(">a");	
		mob_gnb_obj.box.gnb.ul.li.ul.li.ul = mob_gnb_obj.box.gnb.ul.li.ul.li.find(">ul");
		mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li = mob_gnb_obj.box.gnb.ul.li.ul.li.ul.find(">li");
		mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.a = mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.find(">a");
		mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.ul = mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.find(">ul");
		mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.ul.li = mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.ul.find(">li");
		mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.ul.li.a = mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.ul.li.find(">a");
		
	//def
	mob_def();
	function mob_def(){
		mob_gnb_obj.box.find("a").removeClass("ov");
		if(dtxt01.length!=0){
			mob_gnb_obj.box.gnb.ul.li.a.removeClass("ov");
			mob_gnb_obj.box.gnb.ul.li.a.each(function(){
				var dt = $(this).text();
				if(dt==dtxt01){
					$(this).addClass("ov").siblings("ul").slideDown();
				}
			});
			if(dtxt02.length!=0){
				mob_gnb_obj.box.gnb.ul.li.ul.li.a.find(">strong").each(function(){
					var dt = $(this).text();
					if(dt==dtxt02){
						$(this).parent().addClass("ov").siblings("ul").slideDown();
					}
				});
				if(dtxt03.length!=0){
					mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.a.find(">strong").each(function(){
						var dt = $(this).text();
						if(dt==dtxt03){
							$(this).parent().addClass("ov").siblings("ul").slideDown();
						}
					});
					if(dtxt04.length!=0){
						mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.ul.li.a.find(">strong").each(function(){
							var dt = $(this).text();
							if(dt==dtxt04){
								$(this).parent().addClass("ov");
							}
						});
					}
				}
			}
		}
	}
	
	mob_gnb_obj.box.gnb.ul.li.a.click(function(){
		if(mob_gnb_obj.box.gnb.ul.li.ul.is(":animated")) return false;
		if($(this).siblings("ul").size() != 0){
			mob_gnb_obj.box.gnb.ul.li.a.not(this).removeClass("ov").siblings("ul").slideUp();
			$(this).toggleClass("ov").siblings("ul").slideToggle();
			return false;	
		} else {
			return true;	
		}
	});
	
	mob_gnb_obj.box.gnb.ul.li.ul.li.a.click(function(){
		if(mob_gnb_obj.box.gnb.ul.li.ul.li.ul.is(":animated")) return false;
		if($(this).siblings("ul").size() != 0){
			mob_gnb_obj.box.gnb.ul.li.ul.li.a.not(this).removeClass("ov").siblings("ul").slideUp();
			$(this).toggleClass("ov").siblings("ul").slideToggle();
			return false;
		} else {
			return true;	
		}
	});
	
	mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.a.click(function(){
		if(mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.ul.is(":animated")) return false;
		if($(this).siblings("ul").size() != 0){
			mob_gnb_obj.box.gnb.ul.li.ul.li.ul.li.a.not(this).removeClass("ov").siblings("ul").slideUp();
			$(this).toggleClass("ov").siblings("ul").slideToggle();
			return false;
		} else {
			return true;	
		}
	});
}
/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////

유틸

/////////////////////////////////////////////////////////////////////////////////////////////////////////// */
$(function(){

	$('.search_btn button').click(function(){
		var confirm=$('#header .search').css('display');
		if(confirm=='block'){
			$('#header .search').fadeOut(100);
		}else{
			$('#header .search').fadeIn(100);
		};
	});
	$('.search_close button').click(function(){
		$('#header .search').hide();
	});
	
	function searchGo( frm ) {
								
		if( !frm.query.value ) {
			alert("검색어를 입력해주세요.");
			frm.query.focus();
			return false;
		}
		
		return true;		
	}	

	$('#header .topLink .Dept').each(function(){
		$(this).click(function(){
			if($(this).hasClass('open')){
				$(this).removeClass('open');
				$(this).next('ul.linkDept').stop().slideUp();
			}else{
				$('#header .topLink .linkDept').stop().slideUp();
				$(this).addClass('open');
				$(this).next('ul.linkDept').stop().slideDown();
			}
		});
	});
});

/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////

footer

/////////////////////////////////////////////////////////////////////////////////////////////////////////// */

$(function(){

	// move Top
    $(window).scroll(function(){
        scrollCheck();
    }).scroll();

    function scrollCheck(){        
        var scrollPosition = $(window).scrollTop();
        if(scrollPosition > 500){
            $('#moveTop').stop().fadeIn(100);
            $('#moveTop a').click(function(){
                $('html').stop().animate({scrollTop: 0});
            });
        }else{       
            $('#moveTop').stop().fadeOut(100); 
        }
	}
	
    //footer site link
	$(function(){     
		$('.footBtnWrap button').click(function() {
			$siteList =  $(this).next('.footBtn div');
			if($(this).hasClass('open')){
				$(this).removeClass('open');
				$siteList.stop().slideUp();    
			}else{             
				$('.footBtnWrap button').removeClass('open');
				$('.footBtnWrap .footBtn div').stop().slideUp();    
				$(this).addClass('open');      
				$siteList.stop().slideDown();    
			}
		});
	});
});
