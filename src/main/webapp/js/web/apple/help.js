/**
 * help.js
 */
 
//Help
function popupHelp(mId){
	var wUrl = "/apple/hc/popupHelp.do?menuId="+mId;
	wPopup = window.open(wUrl,"HELP_POPUP",'width=975,height=1000,toolbar=no,menubar=no,location=no,directories=no,status=no,scrollbars=no,resizable=yes');
	wPopup.focus();
}