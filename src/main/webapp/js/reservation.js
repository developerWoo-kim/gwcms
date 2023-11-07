$(function () {
 
  	wNav();
    mNav();

    //web navigation
    function wNav(){

        $('#gnb > .depth01 > ul > li').click(function () {
           
            //$('#gnb > .depth01 > ul > li').removeClass('active');
           // $(this).addClass('active');

            $('#gnb > .depth01 > ul > li .depth02').slideUp(100);
            $(this).children('.depth02').stop().slideDown(100);
        });
    } 

    //moblie navigation
    function mNav(){
        // setting
        //var gnb = $('#gnb > .depth01').clone();	
        //var headerUtil = $('#header .util').clone(); 

        //$('#mNav .snb').append(headerUtil); 

       // $('#mgnb').append(gnb).find('li').removeAttr('style').find('.titBox').remove();

        // open & close	
        $(".mob_btn").click(function (e) {
            e.preventDefault();
            $("#mNav").addClass('active');
        });
        $("#mNavClose").click(function (e) {
            e.preventDefault();
            $("#mNav").removeClass('active');
        });		

        //show
        //$(document).on('click', '#mNav li.dep > a',function(e){
          //  $(this).parent('li').toggleClass('active').siblings().removeClass('active');
           // e.preventDefault();
        //}); 
    }

});

var nowZoom = 100;

function zoomOut() {   // 화면크기축소
   nowZoom = nowZoom - 10;
   if(nowZoom <= 70) nowZoom = 70;   // 화면크기 최대 축소율 70%
   zooms();
}

function zoomIn() {   // 화면크기확대
   nowZoom = nowZoom + 20;
   if(nowZoom >= 200) nowZoom = 200;   // 화면크기 최대 확대율 200%
   zooms();
}

function zoomReset() {
   nowZoom = 100;   // 원래 화면크기로 되돌아가기
   zooms();
}

function zooms() {
   document.body.style.zoom = nowZoom + "%";
   if(nowZoom == 70) {
      alert("더 이상 축소할 수 없습니다.");   // 화면 축소율이 70% 이하일 경우 경고창
   }
   if(nowZoom == 200) {
      alert("더 이상 확대할 수 없습니다.");   // 화면 확대율이 200% 이상일 경우 경고창
   }
}