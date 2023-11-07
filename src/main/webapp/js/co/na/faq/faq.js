/**********************************************************************************************

// 자주묻는질문(FAQ)

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
            
            /** FAQ 내용 호출 시작 **/
            //게시물 번호
            var thisSn = $(this).attr("data-sn");
            //시스템아이디
            var sysId = $(this).attr("data-gr");
            
            //게시물 내용 호출
            $.ajax({
				type: "POST",
				datatype:"json",
				data: {
					nttSn : thisSn,
					sysId : sysId
				},
				url: "/"+sysId+"/na/ntt/selectNttCnInfo.do",
				success:function(data){
					var data = JSON.parse(data);
					//게시물 내용 설정
					$("#faq_Cn"+thisSn).html(data.nttCn);
							
					
		   		}, error : function(data) {
		   			alert("오류가 발생하였습니다.\n관리자에 문의해주세요.");
		   		}
			});
            /** FAQ 내용 호출 종료 **/
            
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
});