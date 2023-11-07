
// 달력 조회기간
$(document).ready(function() {

	//******************************************************************************
	// 상세검색 달력 스크립트
	//******************************************************************************
	 $("#beginDt, #endDt, #reformDt").datepicker({
     	 dateFormat: 'yy/mm/dd',
  	     closeText: '닫기',
         prevText: '이전 달',
         nextText: '다음 달',
         currentText: '오늘',
         yearRange: 'c-100:c+10',
         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         dayNames: ['일','월','화','수','목','금','토'],
         dayNamesShort: ['일','월','화','수','목','금','토'],
         dayNamesMin: ['일','월','화','수','목','금','토'],
         weekHeader: 'Wk',
         firstDay: 0,
         isRTL: false,
         buttonImageOnly: true, //이미지표시
         showMonthAfterYear: true,
         showButtonPanel: true,
         changeMonth: true,
         changeYear: true,
	 });

});
