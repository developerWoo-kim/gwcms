
$(function() {
	// 팝업 자세히보기 이벤트
	$('#upPopSlide > li > a > .viewPopupBtn').on('click',function() {
		var popupSn = $(this).attr("data-seq");
		var popupTitle = $(this).attr("title"); 
		var popupWidth = $("#popupData"+popupSn).attr("data-width");
		var popupHeight = $("#popupData"+popupSn).attr("data-height");
		var popupWidthLc = $("#popupData"+popupSn).attr("data-widthLc");
		var popupHeightLc = $("#popupData"+popupSn).attr("data-heightLc");
		var popupFileId = $("#popupData"+popupSn).attr("data-fileId");
		var popupFileList = $("#popupData"+popupSn).attr("data-fileList");
		
		var fileHeight = "";
		if ( popupFileId != "" && popupFileList != "" ) {
			fileHeight = popupFileList.split("},").length;
			popupHeight = parseInt(popupHeight) + parseInt(fileHeight)*20;
			popupWidth = parseInt(popupWidth) + parseInt(fileHeight)*5;
		}
		
		$("#popupNormal"+popupSn).dialog({
			autoOpen: true,
			modal: false,
			resizeable : false,
			title: popupTitle,
			width: popupWidth,
			height: popupHeight,
			show:{
				effect:"blind",
				duration: 100
			},
			hide:{
				effect:"blind",
				duration: 100
			},						    
			position: {my:'left+'+popupWidthLc+' top+'+popupHeightLc+'', at: 'left top'}
		}).dialog('open');	
	});
	// end of 팝업 자세히보기 이벤트
	
	// 통합검색 엔터 버튼 누를때
	$("#total_search").keypress(function (e) { 
		if (e.which == 13){
			goSearchForm();
			return false;
		}
	});
	// 모바일 통합검색 엔터 버튼 누를때
	$("#mTotal_search").keypress(function (e) { 
		if (e.which == 13){
			goMSearchForm();
			return false;
		}
	});
});

// 배너 리스트 이벤트 (배너 리스트 페이지 이동)
function bannerListAct(sysId) {
	location.href = "/" + sysId + "/ba/banner/selectBannerColl.do";
}

// 통합검색
function goSearchForm() {
	if ($("#total_search").valueEmpty()) {
		alert("검색어를 입력해주세요.");
		$("#total_search").focus();
		return false;
	} else {
		alert("검색 연결 준비중입니다.");
		//$("#searchForm").attr("action","https://search.gnu.ac.kr/search/front/Search.jsp").submit();
	}
}
// 모바일 통합검색
function goMSearchForm() {
	if ($("#mTotal_search").valueEmpty()) {
		alert("검색어를 입력해주세요.");
		$("#mTotal_search").focus();
		return false;
	} else {
		alert("검색 연결 준비중입니다.");
		$("#total_search").val($("#mTotal_search").val());
		//$("#searchForm").attr("action","https://search.gnu.ac.kr/search/front/Search.jsp").submit();
	}
}