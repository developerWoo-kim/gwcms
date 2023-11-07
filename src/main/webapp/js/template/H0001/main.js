$(function(){
	/* 게시판 */	
	$(document).on('click', 'div[class*="M_stus"] .titTab li > a', function(e){
		var contents = $(this.hash);

		$(this).addClass('current').parent('li').siblings().find('a').removeClass('current');
		$(contents).addClass('on').siblings().removeClass('on');
		e.preventDefault();
	});
});