$(function () {
    navCtl();
});

	
function navCtl() {
    var sideCon = $('#sideContent');
    var sideLink = $('.sideNavi a');
    var sideSub = $('.sideNavi ul li ul');
	var current = $.trim($('#location strong').text());
	
    $('#sideContent a').focus(function() {
        $('#gnb >ul > li > ul').css('top',-500);
        $('.bgGnb').hide();
    });

   sideLink.each(function() {
         if ($(this).text() == current) {
                $(this).addClass('lock');
                if ( $(this).parent().parent().size() > 0) {
                    $(this).parent().parent().addClass('lock').prev('a').addClass('lock').next().slideToggle();
                }
                $(this).parents('.sideNavi').prev().addClass('on');
         }
    });
   sideLink
       .hover(
           function(){
               if ($(this).next('ul').size() > 0 && !$(this).hasClass('lock') && !$(this).hasClass('on')) {
                   sideSub.not('.lock').slideUp();
                   sideLink.removeClass('on');
                   $(this).addClass('on').next().slideToggle();
               }
           },
           function(){

           }
           , 300
     )
     .bind('click',function(ev) {
        if ($(this).next('ul').size() > 0) {
            ev.preventDefault();
            sideSub.not('.lock').slideUp();
            sideLink.removeClass('on');
            $(this).addClass('on').next().slideToggle();
        }

    });
    sideCon.bind('mouseleave blur', function() {
        sideLink.not('.lock').removeClass('on');
        sideSub.not('.lock').delay(300).slideUp();
    });

}


//sns
$(function () {
    $('.snsBox button.btnShare').click(function() {
        $(this).next().slideToggle(300);
    });

});