/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// $.ajaxSetup({
// 	dataType: "json",
// 	method: "POST"
// });

// $(document).ajaxError(function( event, request, settings ) {
// 	if (!settings.error) {
// 		$.alert(request.responseText);
// 	}
// });

var isShowLoading = true;

$(document).ajaxStart(function() {
	if (isShowLoading) $(document.body).showLoading();
});

$(document).ajaxComplete(function() {
	$(document.body).hideLoading();
});
/* //end of  jquey.showLoading.js 호출 (로딩바)  :  sjLee 2020/12/28  */

$(function () {
	/** ******  left menu  *********************** **/
    $('#sidebar-menu li ul').slideUp();
    $('#sidebar-menu li').removeClass('active');

    $('#sidebar-menu li').click(function () {
        if ($(this).is('.active')) {
            $(this).removeClass('active');
            $('ul', this).slideUp();
            $(this).removeClass('nv');
            $(this).addClass('vn');
        } else {
            $('#sidebar-menu li ul').slideUp();
            $(this).removeClass('vn');
            $(this).addClass('nv');
            $('ul', this).slideDown();
            $('#sidebar-menu li').removeClass('active');
            $(this).addClass('active');
        }
    });

    $('#menu_toggle').click(function () {
        if ($('body').hasClass('nav-md')) {
            $('body').removeClass('nav-md');
            $('body').addClass('nav-sm');
            $('.left_col').removeClass('scroll-view');
            $('.left_col').removeAttr('style');
            $('.sidebar-footer').hide();

            if ($('#sidebar-menu li').hasClass('active')) {
                $('#sidebar-menu li.active').addClass('active-sm');
                $('#sidebar-menu li.active').removeClass('active');
            }
        } else {
            $('body').removeClass('nav-sm');
            $('body').addClass('nav-md');
            $('.sidebar-footer').show();

            if ($('#sidebar-menu li').hasClass('active-sm')) {
                $('#sidebar-menu li.active-sm').addClass('active');
                $('#sidebar-menu li.active-sm').removeClass('active-sm');
            }
        }
    });
    
//    var url = window.location;
//    $('#sidebar-menu a[href="' + url + '"]').parent('li').addClass('current-page');
//    $('#sidebar-menu a').filter(function () {
//        return this.href == url;
//    }).parent('li').addClass('current-page').parent('ul').slideDown().parent().addClass('active');

    var mi = $("#leftCurrMi").val();
    $('#sidebar-menu a[id="' + mi + '"]').parent('li').addClass('current-page');
    $('#sidebar-menu a').filter(function () {
        return this.id == mi;
    }).parent('li').addClass('current-page').parent('ul').slideDown().parent().addClass('active');
    /** ******  /left menu  *********************** **/
    
    /** ******  POPUP ZONE (APPLE)  *********************** **/
    var imgIdx = 1;
	var imgLength = 0;
	$(document).ready(function(){
		$(".popup_zone_img").hide();
		$(".popup_zone_img:eq(0)").show();
		imgLength = $(".popup_zone_img").length;
	});
	function animate( to ) {
    	$( this ).stop( true, false ).animate( to );
  	}
  	function next( event ) {console.log(imgIdx);
	    event.preventDefault();
	    imgIdx++;
	    if(imgIdx > imgLength){
	    	imgIdx = 1;
	    }
	    $(".popup_zone_img").fadeOut();
	    $(".popup_zone_img:eq("+(imgIdx-1)+")").fadeIn();
	    $(".popup_zone_co").text(imgIdx);
  	}
  	function previous( event ) {
  		event.preventDefault();
  		imgIdx--;
	    if(imgIdx < 1){
	    	imgIdx = imgLength;
	    }
	    $(".popup_zone_img").fadeOut();
	    $(".popup_zone_img:eq("+(imgIdx-1)+")").fadeIn();
	    $(".popup_zone_co").text(imgIdx);
  	}
 	$( ".popup_zone_prev" ).on( "click", previous );
  	$( ".popup_zone_next" ).on( "click", next );

  	$( ".popup_zone img" ).on( "click", function( event ) {
    	//$( ".widget6_pop img" ).index( this ) === 0 ? previous( event ) : next( event );
  	});
  	/** ******  POPUP ZONE (APPLE)  END *********************** **/
});

