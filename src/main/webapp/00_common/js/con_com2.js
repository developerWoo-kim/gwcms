 

$(function(){
	//tit style
	$(".titT1").wrapInner("<span class='tit1_txt'></span>");
	$(".titT2").wrapInner("<span class='tit2_txt'></span>");
	
	// Tab Style 
	$(window).on( 'resize', function( ) {
		winW = $(window).width();
		setTimeout(function(){	
			$('ul[class^="tab_st"]').each(function(){
				if($(this).find('li').length > 2){	
					if(winW < 1184){
						$(this).parent('div').addClass('reactTab').removeClass('ov').css('height','0px');	
					}else{
						$(this).parent('div').removeClass('reactTab').css('height','auto');	
					};
				}
			});		
			
		},50);
	}).resize();
	
	
	$('ul[class^="tab_st"]').each(function(){
		$(this).find('> li.on > a').attr('title','선택된페이지');
	});
	setTimeout(function(){
		$('.reactTab ul > li.on a').on('click', function(e){ 

			$reactTab = $(this).parents('.reactTab').find('ul');
			$tabBox = $(this).parents('.reactTab');
			ulHeight = $reactTab.height();	
			onHeight = $(this).parents('li').height();	
	
			if($tabBox.hasClass('ov')){
				$tabBox.removeClass('ov').stop().animate({height:'0'});
			}else{					
				$tabBox.addClass('ov').stop().animate({height:ulHeight+onHeight});
			}				
			e.preventDefault();	
		});
	},100);
});

var check = false;

$(window).resize(function() {
	this.resizeTO = setTimeout(function() {
		$(this).trigger('resizeEnd');
	}, 150 );
}).resize();

$(window).on('resizeEnd', function() {
	$w_w = $(window).innerWidth();
	resetImgZoom();
});

/** 이미지 확대보기 **/
function resetImgZoom(){
	var win_w = $(window).innerWidth();
	var zwObj =  $('.rsp_img');
	
	if(win_w<=768){
		zwObj.each(function(){
			var this_s = $(this);
			var zwObjImg = this_s.children("img");
			var zwObjUrl = zwObjImg.attr("src");

			if(check == false){
				this_s.append("<a href='" + zwObjUrl + "' class='btn-zoom' target='_blank' title='새창열림'><span class='blind'>이미지 확대보기</span></a>");
				zwObjImg.addClass("zoom");
			}
		});
		check = true;
	} else {
		zwObj.each(function(){
			var this_s = $(this);
			var zwObjImg = this_s.children("img");
			if(check == true){
				$(".btn-zoom, .btn-down", $(this).parent()).remove();
				zwObjImg.removeClass("zoom");
			}
		});
		check = false;
	}

}



