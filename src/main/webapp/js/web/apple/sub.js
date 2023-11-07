/*-------------------------------------------------
Author : SY, CHO
Create date : 2020. 05. 20.
-------------------------------------------------*/

$(function(){
    // 페이지 로드시 그래프 active
	setTimeout(function(){
		$('.degree').each(function(){
			//console.log($(this).data('gauge'));
			var _gauge = $(this).data('gauge');
			$(this).animate({width: _gauge + "%"}, 500);
		});
	}, 500);
});
