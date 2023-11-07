/**********************************************************************************************

// 배포 관리

**********************************************************************************************/
function faqList(list) {
    var faqList = $(list).find(".list > dt");
    var faqBtn_Qpen = faqList.find("button");

    faqBtn_Qpen.on("click", function () {

        var item = $(this).parent('dt');
        //슬라이드 close
        if (item.hasClass('active')) {
            item.removeClass("active");
            item.next("dd").slideUp('fast');
        }
        
        //슬라이드 open
        else {
        	
        	//현재 열려져 있는 내용 닫기
            faqList.not(item).each(function () {
                $(this).removeClass("active");
                $(this).next("dd").slideUp('fast');
            });
            
            /** 배포 파일 리스트 호출 시작 **/
            //배포 번호
            var thisSn = $(this).attr("data-sn");
            
            //배포 파일리스트 호출
            $.ajax({
				type: "POST",
				datatype:"json",
				data: {
					deploySn : thisSn,
				},
				url: "/deploy/fileList.do",
				success:function(data){
					var data = JSON.parse(data);
					var deployList = "";
					var fileList = data.fileList;
						if ( fileList.length == 0 ) {
							deployList += "<span class='ess_itm'>*</span>준비중입니다.</a>";
						} else {
							for ( var i = 0 ; i < fileList.length ; i++ ) {
								if ( fileList[i].fileTy == 'project') {
									deployList += "<span class='ess_itm'>*</span><a href = '/deploy/fileDownload.do?fileSn="+fileList[i].fileSn+"' ><span>프로젝트</span></a><br>";	
								} 
								if ( fileList[i].fileTy == 'skll') {
									deployList += "<span class='ess_itm'>*</span><a href = '/deploy/fileDownload.do?fileSn="+fileList[i].fileSn+"' ><span>기능노트</span></a><br>";
								} 
								if ( fileList[i].fileTy == 'output') {
									deployList += "<span class='ess_itm'>*</span><a href = '/deploy/fileDownload.do?fileSn="+fileList[i].fileSn+"' ><span>"+fileList[i].fileNm+"</span></a><br>";
								}
								
							}
						}
						
					//게시물 내용 설정
					$("#faq_Cn"+thisSn).html(deployList);
					
		   		}, error : function(data) {
		   			alert("오류가 발생하였습니다.\n관리자에 문의해주세요.");
		   		}
			});
            /** 배포 파일 리스트 호출 종료 **/
            
            //클릭한 내용 열기
            item.addClass("active");
            item.next("dd").slideDown('fast');
        }
    });
}


$(function () {
    var faq   = $("[data-list='faq']");

    if(faq.length > 0) {
        var list = faq.attr('class').replace(/ /g, '.');
        $(window).on({
            load: function () {
                faqList('.'+ list)
            }
        });
    }
    
    //페이지 이동
	$(".pageBtn").click(function(){
		
		//페이지 이동 타입
		var action = $(this).attr('data-id');
		
		//등록
		if ( action == 'insert') {
			  location.href='/deploy/insertPage.do';
		
		//수정
		} else {
			var deploySn = $(this).attr('data-sn');
			$("#deploySn").val(deploySn);
			$("#deployForm").attr('action', '/deploy/updatePage.do').submit();
		}
		
	});	
	
    
    
});