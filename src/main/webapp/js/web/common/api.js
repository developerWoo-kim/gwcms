/**
 * api.js
 */
 
 //Address
function searchAddr(callbackNm, params){
	var wUrl = "/common/searchAddr.do";
	wUrl = wUrl + "?cb="+callbackNm;
	
	if(params != null){
		wUrl = wUrl + "&p="+params;
	}
	
	wPopup = window.open(wUrl,"SEARCH_ADDR",'toolbar=no,menubar=no,location=no,directories=no,status=no,scrollbars=no,resizable=yes');
	wPopup.focus();
}