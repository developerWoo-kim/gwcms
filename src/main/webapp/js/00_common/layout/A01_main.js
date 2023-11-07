$(function(){

  // 메인 슬라이드 JS : 사용 시, 활성
  // Main Visual
  $("#m_visual").slick({     
    asNavFor: '#m_slogan',
    infinite: true,
    autoplaySpeed:6000,
    arrows: false,
    fade: true,
    slider:'p'
  });

  // Main Slogan
  $("#m_slogan").slick({ 
    asNavFor: '#m_visual', //메인슬로건이 필요 없을 시, 해당 옵션 주석처리 필요
    infinite: true,
    autoplaySpeed:6000,
    slider:'div'
  });

  // Main Visual control - play
  $('#visualStop').click(function(){
      $(this).fadeOut(100);
      $('#visualPlay').delay(100).fadeIn(100);
      $("#m_visual").slick('slickPause');
      $("#m_slogan").slick('slickPause');
  });
  
  // Main Visual control - play
  $('#visualPlay').click(function(){
      $(this).fadeOut(100);
      $('#visualStop').delay(100).fadeIn(100);
      $("#m_visual").slick('slickPlay');
      $("#m_slogan").slick('slickPlay');
  });


  // TabBox 
  TabBox('tabBox','h3'); //TabBox('Tab class name', 'title tag')

	// Banner slick    
  $("#bnList").slick({ 
    slidesToShow: 5,
    slidesToScroll: 1,
    infinite: true,
    autoplay: true,
    slider:'li',
    dots:false,
	  responsive: [
		{
		  breakpoint: 1200,
		  settings: {
			slidesToShow: 4
		  }
		},
		{
		  breakpoint: 960,
		  settings: {
			slidesToShow: 3
		  }
		},
		{
		  breakpoint: 760,
		  settings: {
			slidesToShow: 2
      }
    },
    {
      breakpoint: 460,
      settings: {
      slidesToShow: 1
      }
    }]
  });  

  $('.bn_wrap .control a').click(function(e){
      e.preventDefault();
      $this = $(this);
      slickControl($this, '#bnList','#bnStop','#bnPlay');
  });	
    
});

// Tab Box JS 
function TabBox(div, tit){
  $tab = $('.'+div);

  $tab.find(tit).each(function(){
    $(this).find('a').on("focus click", function(e){
      e.preventDefault(); //상단이동방지

      $(this).parent(tit).siblings('.list_box').removeClass('on');
      $(this).parent(tit).siblings().find('> a').removeClass('current');
      $(this).parent(tit).next('.list_box').addClass('on');
      $(this).addClass('current');
    });
  });
}

// slider Control
function slickControl($this, slick, stop, play){
  $slick = $(slick); //slider wrap
  $stop = $(stop); //Stop Button
  $play = $(play);//Play Button

  if($this.is(stop)){
      $stop.css('display','none');
      $play.delay(100).css('display','block');
      $slick.slick('slickPause');
  }
  if($this.is(play)){
      $play.css('display','none');
      $stop.delay(100).css('display','block');
      $slick.slick('slickPlay');
  }
}

window.onload=function(){
	$(function(){
	
    $gallery = $('#galleryList'); //gallery ul select
    $video = $('#videoBox');
	
		$(window).resize(function(){
			gallery_imgAlign($gallery,'a');
			gallery_imgAlign($video,'a');
		}).resize();
	
	});
}

// 이미지 정렬 function 
function gallery_imgAlign(wrap,select){
	$select = wrap.find(select);

	$select.each(function(){
		$img = $(this).find('img');
		img_w = $img.width(); //image width size
		img_h = $img.height();//image height size
		imgWrap_w = $(this).find('.img').width(); //image wrap(li) width size
		imgWrap_h = $(this).find('.img').height();//image wrap(li) width size
		calc_h = (imgWrap_h - img_h)/2;
    calc_w = (imgWrap_w - img_w)/2;

    if(img_w > img_h){ //가로 이미지	
      $img.css({'width':"auto","height":"100%"});
      img_w = $img.width();
      img_h = $img.height();
      calc_w = (imgWrap_w - img_w)/2;

      /* height 맞춤
			if(calc_w > 0){//가로가 더 긴 이미지 일때
				$img.css({'width':"auto","height":"100%"});
				$img.css({'margin-left':0, 'margin-top':0});

			}else{
				$img.css({'margin-left':calc_w, 'margin-top':0});
      }*/
     
			if(calc_w > 0){ //가로가 더 긴 이미지 일때(FULL)
				$img.css({'width':"100%","height":"auto"});
        img_w = $img.width();
        img_h = $img.height();
        calc_h = (imgWrap_h - img_h)/2;
				$img.css({'margin-left':0, 'margin-top':calc_h});

			}else{
				$img.css({'margin-left':calc_w, 'margin-top':0});
      }
			
		}else{ //세로 이미지
			$img.css('margin-top',calc_h);
    }
    
    
	});
} //이미지 정렬 function //
