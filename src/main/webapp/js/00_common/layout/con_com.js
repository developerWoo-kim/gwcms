// 교수진 상세내용 
$(function(){
	professorList();
});

function professorList(){
	$('.professor_list_2 .btn_desc').off('click');
	$('.professor_list_2 .btn_desc').on('click' , function(){
		var title = $(this).parent('.professor_list_2 > li');
		if (title.hasClass('on')){
			$(".professor_list_2 > li").removeClass("on");
		} else {
			title.addClass("on");
			$(".professor_list_2 > li").not(title).removeClass("on");
		}
	});
	$('.professor_list_2 .btn_desc_close').on('click' , function(){
		var title = $(this).parent('.professor_list_2 > li');
		if (title.hasClass('on')){
			$(".professor_list_2 > li").removeClass("on");
		} else {
			title.addClass("on");
			$(".professor_list_2 > li").not(title).removeClass("on");
		}
	});
}

// Tab Style //191212 추가
$(function(){
	$('ul[class^="tab_st"]').each(function(){
		if($(this).find('li').length > 2){		
			$(this).parent('div').addClass('reactTab');				
			$(this).find('li.on a').clone().prependTo($(this).parent('div'));
			$(this).prev('a').addClass('selectTab');
			$(this).prev('a').click(function(e){
				e.preventDefault();
				$(this).next('ul').slideToggle();					
			});
		}
	});			

	$(window).resize(function(){
		if($(window).width() < 1200){
			$('.reactTab ul').hide();
		}else{			
			$('.reactTab ul').show();
		}
	}).resize();
});





