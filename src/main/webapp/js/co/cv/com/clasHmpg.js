
/** HEADER START */
//회원 가입 신청
$(document).on('click','#insertChMberBtn',function(){
	if(!confirm("가입신청을 하시겠습니까?")) return;
	var clasHmpgId = $(this).attr("data-id");
	var sysId = $("#sysId").val();
	var srchClasYear = $("#srchClasYear").val(); // 학급홈페이지 년도
	var clasHmpgId = $("#clasHmpgId").val(); // // 학급홈페이지 아이디
	
	 $.ajax({
		    type : "POST",
		datatype : "json",
		    data :  {
		    		clasHmpgId : clasHmpgId
		    },
		     url : "/"+sysId+"/cv/clashmpg/insertChMberInfo.do",
		 success : function(result){
			 		var result = JSON.parse(result); 
			 		//ajax 결과값 여부 
			 		var insertAt = result.insertAt; //학급홈페이지 신규가입 여부 
			 		var confmAt = result.clasConfmAt; //학급홈페이지 가입 승인 영부
					if(result.resultAt == "Y"){
						
						if(insertAt == "N"){//신규 가입일 경우
							location.href = "/"+sysId+"/cv/clashmpg/selectCvHmpgInfo.do?clasHmpgId="+clasHmpgId+"&srchClasYear="+srchClasYear;
							alert("가입신청이 완료되었습니다.\n학급홈페이지 관리자의 승인이 있어야 가입이 완료됩니다.");	
							
							
						}else{ //이미 가입신청을 한 경우 
							if(confmAt == "N"){ //가입 승인 대기 중
								alert("학급홈페이지 가입 승인 대기 중입니다.");
							}else{//이미 가입한 경우 
								alert("이미 가입한 회원입니다.");						
						    }
						}
						
					}else{
						alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");	
					}
		  },
		  error  : function(data) {   
				   alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
		}
	});	
});

//학급홈페이지 관리 접속
$(document).on('click','#viewChManageBtn',function(){
	location.href="/"+$("#sysId").val()+"/cv/clashmpg/selectCvHmpgManage.do?clasHmpgId="+$("#clasHmpgId").val();
});

/** HEADER END */

/** LEFT START */
//학급홈페이지 메뉴 접속
function goChMenu( type, el ){ 
	
	var sysId =$("#sysId").val(); //비회원접속여부					
	var clasAccesAt =$("#clasAccesAt").val(); //비회원접속여부					
	var chMberInfo = $("#chMberInfo").val(); //학급홈페이지 회원여부
	var adminAt = $("#adminAt").val(); // 홈페이지 관리자, 운영자 여부
	var srchClasYear = $("#srchClasYear").val(); // 학급홈페이지 년도
	var clasHmpgId = $("#clasHmpgId").val(); // // 학급홈페이지 아이디
	var clasTmplatId = $("#clasTmplatId").val();; // 학급홈페이지 템플릿 아이디
	
	if ( clasAccesAt == 'N'){ //비회원접속 불가능인 경우
		
		if ( chMberInfo != null || adminAt != null ){ //학급홈페이지 회원인 경우
			 if ( type == 'chIr'){//급훈,학급소개 접속
				  $(el).attr('href',"/"+sysId+"/cv/clashmpg/selectChIrView.do?clasHmpgId="+clasHmpgId+"&srchClasYear="+srchClasYear);
			 
			} else if ( type == 'schdul' ) { //학급홈페이지 시간표
				$(el).attr('href',"/"+sysId+"/cv/clashmpg/selectChSchdulView.do?clasHmpgId="+clasHmpgId+"&clasTmplatId="+clasTmplatId+"&srchClasYear="+srchClasYear );
				
			} else {//학급홈페이지 메뉴 ( 게시판 ) 접속
				 var bbsId = $(el).attr('data-id'); //게시판 아이디								
				 $(el).attr('href',"/"+sysId+"/na/ntt/selectNttList.do?clasHmpgId="+clasHmpgId+"&clasTmplatId="+clasTmplatId+"&bbsId="+bbsId );
			}	
		
		} else {
			 alert("학급홈페이지 회원이 아닙니다.\n가입신청을 해주세요.");
			 return;
		}	
	
	} else {//비회원접속 가능
		
		if ( type == 'chIr' ){//급훈,학급소개 접속
			$(el).attr('href',"/"+sysId+"/cv/clashmpg/selectChIrView.do?clasHmpgId="+clasHmpgId+"&srchClasYear="+srchClasYear );
		
		} else if ( type == 'schdul' ) { //학급홈페이지 시간표
			$(el).attr('href',"/"+sysId+"/cv/clashmpg/selectChSchdulView.do?clasHmpgId="+clasHmpgId+"&clasTmplatId="+clasTmplatId+"&srchClasYear="+srchClasYear );
			
		} else { //학급홈페이지 메뉴 ( 게시판 ) 접속 
			var bbsId = $(el).attr('data-id'); //게시판 아이디								
		 	$(el).attr('href',"/"+sysId+"/na/ntt/selectNttList.do?clasHmpgId="+clasHmpgId+"&clasTmplatId="+clasTmplatId+"&bbsId="+bbsId );
		}
	
	}
	
}
/** LEFT END */

/** LOGIN START*/
//로그인 (엔터)
$(document).on('keydown', '#mberPassword', function(key) {
	
	if (key.keyCode == 13) {
		clasLogin();
	}
	
});

//로그인 (엔터)
$(document).on('keydown', '#mberId', function(key) {
	
	if (key.keyCode == 13) {
		clasLogin();
	}
	
});


//로그인 function
function clasLogin(){
	
	var sysId = $("#sysId").val(); 
    var mberId = $("#mberId").val();
    var mberPassword = $("#mberPassword").val();
    var srchClasYear = $("#srchClasYear").val(); // 학급홈페이지 년도
	var clasHmpgId = $("#clasHmpgId").val(); // // 학급홈페이지 아이디
	
	if( mberId == "" ){
		alert("아이디를 입력해주세요");
		$("#mberId").focus();
		return
	}
	
	if( mberPassword == ""){
		alert("비밀번호를 입력해주세요");
		$("#mberPassword").focus();
		return
	}
	
	var data = $("#clasLoginForm").serialize();
	 
	$.ajax({
			type: "POST",
			datatype:"json",
			data: data,
			url: "/"+sysId+"/lo/login/login.do",
			success:function(data){
				data = JSON.parse(data);
				
				//회원정보 없음
				if ( data.result == "N" ){
					 alert("아이디와 비밀번호를 확인해주세요.");
				}
				
				//본인인증 정보 체크
				if ( data.result == "C" ){
					 alert("회원정보에 본인인증정보가 누락되어 본인인증 등록페이지로 이동합니다.\n본인인증은 최초1회만 등록하시면 됩니다.");
					 $('#checkStr').val(data.checkStr);
					 $("#clasLoginForm").attr('action',"/"+sysID+"/sb/sbscrb/insertSbscrbPinPage.do").submit();
				}
				
				//회원 승인 대기중
				if ( data.result == "W" ){
					 alert("회원 가입 승인 대기중 입니다.\n 관리자에게 문의해주세요");
					 
					 if ( data.agreCnt > 0 ) {
						  $("#agreAt").val('N');
						  $("#clasLoginForm").attr('action',"/"+sysId+"/sb/sbscrb/indvdlinfoAgerPage.do").submit();
							 
					  } else {
						  location.href = "/"+sysId+"/cv/clashmpg/selectCvHmpgInfo.do?clasHmpgId="+clasHmpgId+"&srchClasYear="+srchClasYear;	 
					  }
					 	
				}
				
				//해당 홈페이지 외 가입정보 존재
				if ( data.result == "NM" ){
					 
					 //개인정보 동의 여부 체크
					 if ( data.agreCnt > 0) {
						  $("#agreAt").val('N');
						  $("#clasLoginForm").attr('action', "/"+sysId+"/sb/sbscrb/indvdlinfoAgerPage.do").submit();
					
					 //비밀번호 변경 주기 체크
					 } else if ( data.cpmCnt == 0 ) {
						 location.href = "/"+sysId+"/lo/login/updatePasswordAlert.do";
						 
					 } else {
						 location.href = "/"+sysId+"/cv/clashmpg/selectCvHmpgInfo.do?clasHmpgId="+clasHmpgId+"&srchClasYear="+srchClasYear;	 
					 }
				}
				 
				//해당 홈페이지 가입 확인
				if ( data.result == "Y" ){
					 
					 //개인정보 동의 여부 체크
					 if ( data.agreCnt > 0 ) {
					 	  $("#agreAt").val('N');
						  $("#clasLoginForm").attr('action', "/"+sysId+"/sb/sbscrb/indvdlinfoAgerPage.do").submit();
								 
					  //비밀번호 변경주기 체크	  
					  } else if ( data.cpmCnt == 0 ) { 
						  location.href = "/"+sysId+"/lo/login/updatePasswordAlert.do";
							  
					  } else {
						  location.href = "/"+sysId+"/cv/clashmpg/selectCvHmpgInfo.do?clasHmpgId="+clasHmpgId+"&srchClasYear="+srchClasYear;
					  }
				}
				
	   		}
		});
	
	
};


/** LOGIN END*/

/** LOGOUT START*/
function clasLogout(){
	if(!confirm("로그아웃 하시겠습니까?"))return;
	var sysId = $("input[name=sysId]").val();
	$("#clasLoginForm").attr("action", "/"+sysId+"/lo/login/logout.do").submit();
	
};
/** LOGOUT END*/

/** VOTE START*/
$(function(){
	/* (일반)항목추가 */
	$("#add").on("click",function(){
		itemNmCnt = $('.itemNm').length;
		var itemCnt = $(".addItemTbody tr").length;	
		itemCnt = itemNmCnt;
		if(itemCnt > 5){
			alert("최대 6개까지 추가 가능합니다.");
			return;
		}
		
		var additem  = "";
		additem += "<tr>";
		additem += " <th><span class='ess_itm'>*</span>문항</th>";
		additem += " <td>";
		additem += " <input type='text' class='itemNm' id='itemNm"+itemCnt+"' name='itemNm/"+itemCnt+"' value='' title='문항입력란'  style='width: 95%;'/> ";
		additem += " </td>";
		additem += " <td>";
		additem += " <button class='btn_S btn_red' id='remove'>삭제</button>"; 
		additem += " </td>";
		additem += "</tr>";
		$(".addItemTbody").append(additem);
	})
	
	/* (일반)항목삭제 시 */
	$(document).on('click','#remove',function(){
		$(this).closest("tr").remove(); 
	});
	
	//투표수정
	$('#updateVote').on('click',function(){
		voteTitle = $('#voteTitle').val();//투표제목
		start= $('#beginDt').val();
		end= $('#endDt').val();	
		
		if (voteTitle.length==0) {
			alert("제목을 입력해주세요");
			return;
		}
		if (start == "") {
			alert("시작일을 입력해주세요");
			return;
		}
		if (end == "") {
			alert("종료일을 입력해주세요");
			return;
		}
		
		if (end < start) {
			alert("종료일을 다시입력해주세요.");
			return;
		}
		
		itemCnt = $('.itemNm').length;
		$("#voteTbCnt").val(itemCnt);
		if (itemCnt < 2) {
			alert("최소 두개의 항목을 추가하여 작성하여야 합니다!");
			return;
		}
		
		//문항 name태그의 이름을 다시 설정해줌(테이블 길이만큼 반복하여)
		itemNmCnt = $('.itemNm').length;
		var leng = 0;
		for (var i = 0; i < itemNmCnt; i++) {
			var name = document.getElementsByClassName('itemNm')[i].getAttribute('name');
			name = document.getElementsByClassName('itemNm')[i].name = 'itemNm/'+i;

			if(document.getElementsByName(name)[0].value.length == 0){
				leng = 1;
			}
		}
		
		if (leng > 0) {
			alert("문항을 작성해주세요!");
			return;
		}
		//문항
		
		if (confirm("저장시 투표결과는 초기화됩니다.\n저장하시겠습니까??") == true){    //확인
			$.ajax({
				type : "post",
				url : "/"+$("#sysId").val()+"/cv/clashmpg/updateChVote.do",
				data : $("form[name='chForm']").serialize(),
				dataType : "json",
				success:function(data){
					if (data == 1){
						alert("완료되었습니다.");
						$("#chForm").attr("action","/"+$("#sysId").val()+"/cv/clashmpg/selectChVoteInfo.do").submit();
					} else {
						alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
					}
				},
				error : function(data) {
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
				}	
			});
		}else{   //취소
		    return;
		}
		
	})
})

//투표하기
function viewVote(){
	
	iemSn = $('input[name="iemSn"]:checked').val();
	kind = $("#kind").val();
	
	if (iemSn == null) {
		alert("투표하실 항목을 선택해주세요.");
		return;
	}
	
	if (kind != '진행') {
		alert("투표상황이 "+kind+"이므로 투표를 할 수 없습니다.");
		return;
	}
	
	
	if (confirm("투표하시겠습니까??") == true){    //확인
		$.ajax({
			type : "post",
			url : "/"+$("#sysId").val()+"/cv/clashmpg/voteCompt.do",
			data : $("form[name='voteForm']").serialize(),
			dataType : "json",
			success:function(data){
				if (data == 1){
					alert("투표되었습니다.");
					location.href = "/"+$("#sysId").val()+"/cv/clashmpg/selectCvHmpgInfo.do?clasHmpgId="+$("#clasHmpgId").val()+"&srchClasYear="+$("#srchClasYear").val();	
				}else if(data == 3){
					alert("투표 대상자가 아닙니다.");
				}else if(data == 2){
					alert("투표를 이미 하셨습니다.");
				}else{
					alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");	
				}
				
			},
			error : function(data) {
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}	
		});
	}else{   //취소
	    return;
	}
	
}

//투표결과보기
function viewResult(){
	kind = $("#kind").val();
	if (kind == '종료') {
		$("#voteForm").attr("action","/"+$("#sysId").val()+"/cv/clashmpg/selectChVoteView.do").submit();
	} else {
		alert("투표상황이 "+kind+"이므로 결과를 볼 수 없습니다.");
		return;
		
	}
	
	
}
/** VOTE END */
