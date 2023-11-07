package gwkim.gwcms.cmm.utils;

import lombok.extern.slf4j.Slf4j;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Slf4j
public class WebFilterUtil {

	/**
	 * 웹취약 방지 문자열 필터링
	 * @param inStr
	 * @return
	 * @throws Exception
	 */
	public static String getSecCheckReturnStr(String inStr) {

		if (inStr == null)
			return null;

		String str = inStr.trim().toLowerCase();
		if(str.contains("<img")) {
			str = replacer(str, "<img(?:\\s+?.+?\\s+?|\\s+?)src\\s*?=\\s*?\"(.+?)\"(?:\\s+?.+?\\s*?|\\s*?)>", "", 1);
		}

		String[] targetArray = { "onstop", "layer", "javascript", "eval", "onactive", "onfocusin", "applet",
				/* "document", */ "onclick", "onkeydown",
				/* "xml", */ "create", "onbeforecut", "onkeyup", /*"link",*/ "binding",
				"ondeactivate", "onload", "script", "msgbox", "ondragend", "onbounce",
				/*"object",*/ /*"embed",*/ "ondragleave",
				"onmovestart", /*"frame",*/ "ondragstart", "onmouseout", "ilayer", "onerror", "onmouseup", "bgsound",
				/* "href", */ "onabort",
				/*"base",*/ "onstart", "onfocus", "onmove", "onrowexit", "onunload", "onsubmit",
				"innerHTML", "onpaste", "ondblclick", "vbscript", "charset", "onresize", "ondrag", "expression",
				"string", "onselect", "ondragenter", "onchange", "append", "onscroll", "ondragover", /*"meta",*/ /*"alert"*/
				/*"title",*/ "ondrop",
				"void", "refresh", /*"iframe",*/ "oncopy", "oncut", "blink", "onfinish", "frameset",
				"cookie", /*"style",*/ "onreset", "onselectstart" };

		for (int i = 0; i < targetArray.length; i++) {
			if (str.contains(targetArray[i])) {
				log.debug("getSecCheckReturnStr - [" + targetArray[i] + "] 0x00000001");
				return "0x00000001";
			}
		}

		return getSecTxt(inStr);
	}
	/*
	public static String getSecCheckReturnStr(String str) {

		if(str == null) return "";
		str = str.trim();
		String newStr = str;
		str = str.toLowerCase();
		str = str.replaceAll("<", "");
		str = str.replaceAll(">", "");
		str = str.replaceAll("onstop", "");
		str = str.replaceAll("layer", "");
		str = str.replaceAll("javascript", "");
		str = str.replaceAll("eval", "");
		str = str.replaceAll("onactive", "");
		str = str.replaceAll("onfocusin", "");
		str = str.replaceAll("applet", "");
		str = str.replaceAll("document", "");
		str = str.replaceAll("onclick", "");
		str = str.replaceAll("onkeydown", "");
		str = str.replaceAll("xml", "");
		str = str.replaceAll("create", "");
		str = str.replaceAll("onbeforecut", "");
		str = str.replaceAll("onkeyup", "");
		str = str.replaceAll("link", "");
		str = str.replaceAll("binding", "");
		str = str.replaceAll("ondeactivate", "");
		str = str.replaceAll("onload", "");
		str = str.replaceAll("script", "");
		str = str.replaceAll("msgbox", "");
		str = str.replaceAll("ondragend", "");
		str = str.replaceAll("onbounce", "");
		str = str.replaceAll("object", "");
		str = str.replaceAll("embed", "");
		str = str.replaceAll("ondragleave", "");
		str = str.replaceAll("onmovestart", "");
		str = str.replaceAll("frame", "");
		str = str.replaceAll("ondragstart", "");
		str = str.replaceAll("onmouseout", "");
		str = str.replaceAll("ilayer", "");
		str = str.replaceAll("onerror", "");
		str = str.replaceAll("onmouseup", "");
		str = str.replaceAll("bgsound", "");
		str = str.replaceAll("href", "");
		str = str.replaceAll("onabort", "");
		str = str.replaceAll("base", "");
		str = str.replaceAll("onstart", "");
		str = str.replaceAll("onfocus", "");
		str = str.replaceAll("onmove", "");
		str = str.replaceAll("onrowexit", "");
		str = str.replaceAll("onunload", "");
		str = str.replaceAll("onsubmit", "");
		str = str.replaceAll("innerHTML", "");
		str = str.replaceAll("onpaste", "");
		str = str.replaceAll("ondblclick", "");
		str = str.replaceAll("vbscript", "");
		str = str.replaceAll("charset", "");
		str = str.replaceAll("onresize", "");
		str = str.replaceAll("ondrag", "");
		str = str.replaceAll("expression", "");
		str = str.replaceAll("string", "");
		str = str.replaceAll("onselect", "");
		str = str.replaceAll("ondragenter", "");
		str = str.replaceAll("onchange", "");
		str = str.replaceAll("append", "");
		str = str.replaceAll("onscroll", "");
		str = str.replaceAll("ondragover", "");
		str = str.replaceAll("meta", "");
		str = str.replaceAll("alert", "");
		str = str.replaceAll("title", "");
		str = str.replaceAll("ondrop", "");
		str = str.replaceAll("void", "");
		str = str.replaceAll("refresh", "");
		str = str.replaceAll("iframe", "");
		str = str.replaceAll("oncopy", "");
		str = str.replaceAll("oncut", "");
		str = str.replaceAll("blink", "");
		str = str.replaceAll("onfinish", "");
		str = str.replaceAll("frameset", "");
		str = str.replaceAll("cookie", "");
		str = str.replaceAll("style", "");
		str = str.replaceAll("onreset", "");
		str = str.replaceAll("onselectstart", "");

		return str;
	}
	*/

	/**
	 * 원문 필터
	 * @param str
	 * @return
	 * @throws Exception
	 */
	public static String getSecTxt(String str) {

		if(str == null) return "";
		String wTmp = new String(str);
		wTmp = wTmp.replaceAll("&","&amp;");
		wTmp = wTmp.replaceAll("<","&lt;");
		wTmp = wTmp.replaceAll(">","&gt;");
		wTmp = wTmp.replaceAll("\"","&quot;");
		wTmp = wTmp.replaceAll("'","&apos;");

		return wTmp;
	}

	/**
	 * 원문 복구
	 * @param str
	 * @return
	 * @throws Exception
	 */
	public static String getSecReverseTxt(String str) {
		if(str == null) return "";
		String wTmp = new String(str);

		wTmp = replacer(wTmp, "&amp;", "&", 0);
		wTmp = replacer(wTmp, "&lt;", "<", 0);
		wTmp = replacer(wTmp, "&gt;", ">", 0);
		wTmp = replacer(wTmp, "&quot;", "\"", 0);
		wTmp = replacer(wTmp, "&apos;", "'", 0);

		/*wTmp = wTmp.replaceAll("&amp;","&");
		wTmp = wTmp.replaceAll("&lt;","<");
		wTmp = wTmp.replaceAll("&gt;",">");
		wTmp = wTmp.replaceAll("&quot;","\"");
		wTmp = wTmp.replaceAll("&apos;","'");*/

		return wTmp;
	}

	/**
	 * 태그 제거
	 */
	public static String getRemoveTag(String str) {
		if(str == null) return "";
		String wTmp = new String(str);

		wTmp = replacer(wTmp,"<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "",1);
		wTmp = replacer(wTmp,"<(\"[^\"]*\"|\'[^\']*\'|[^\'\">])*>", "",1);
		wTmp = replacer(wTmp,"<\\w+\\s+[^<]*\\s*>", "",1);
		wTmp = replacer(wTmp,"&[^;]+;", "",1);

		/*wTmp = wTmp.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
		wTmp = wTmp.replaceAll("<(\"[^\"]*\"|\'[^\']*\'|[^\'\">])*>", "");
		wTmp = wTmp.replaceAll("<\\w+\\s+[^<]*\\s*>", "");
		wTmp = wTmp.replaceAll("&[^;]+;", "");*/

		return wTmp;
	}

	/**
	 * Replacer
	 * @param str (원문)
	 * @param trgetStr (변경할문자 혹은 정규식)
	 * @param repStr (치환문자)
	 * @param type (0:일반문자, 1:정규식사용시)
	 * @return
	 */
	public static String replacer(String str, String trgetStr, String repStr, int type) {
		if(str == null) {
			return "";
		}

		StringBuilder sb = new StringBuilder();

		int sIdx = 0;
		int eIdx = -1;
		if(type == 1) {
			Pattern p = Pattern.compile(trgetStr);
			Matcher m = p.matcher(str);
			while(m.find(sIdx)) {
				eIdx = m.start();
				sb.append(str, sIdx, eIdx);
				sb.append(repStr);
				sIdx = m.end();
			}
		}else {
			eIdx = str.indexOf(trgetStr);
			while(eIdx > -1) {
				sb.append(str, sIdx, eIdx);
				sb.append(repStr);
				sIdx = eIdx + trgetStr.length();
				eIdx = str.indexOf(trgetStr,sIdx);
			}
		}
		sb.append(str, sIdx, str.length());

		return sb.toString();
	}
}
