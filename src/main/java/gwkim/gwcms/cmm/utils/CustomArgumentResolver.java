package gwkim.gwcms.cmm.utils;

import com.google.gson.Gson;
import org.springframework.core.MethodParameter;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@Component
public class CustomArgumentResolver implements HandlerMethodArgumentResolver {

	@Override
	public Object resolveArgument(MethodParameter arg0, ModelAndViewContainer arg1, NativeWebRequest arg2,
			WebDataBinderFactory arg3) throws Exception {

		Class clazz = arg0.getParameterType();
		HttpServletRequest request = (HttpServletRequest) arg2.getNativeRequest();
		HttpServletResponse response = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getResponse();
		
		// 예외처리( 템플릿 위젯관리 )
		String excepUri = "|/apple/tm/tmplat/uptWidgInfo.do|/apple/tm/tmplat/uptFileInfo.do|";
		String reqUri = request.getRequestURI();
		boolean secCheckAt = true;

		// 신규 위젯을 위한 처리
		String[] reqUriArr = reqUri.split("/");

		if(excepUri.contains("|"+reqUri+"|") || reqUriArr[2].equals("wm")){
			secCheckAt = false;
		}
		
		CommonMap commandMap = new CommonMap();
		commandMap.put("xssChk", "N");
		Enumeration enumeration = request.getParameterNames();

		while (enumeration.hasMoreElements()) {
			String key = (String) enumeration.nextElement();
			String[] values = request.getParameterValues(key);

			if (values != null) {
				if (values.length > 1) {
					String[] newValues = new String[values.length];

					for (int i = 0; i < values.length; i++) {
						String filterStr = values[i];
						if(secCheckAt){
							filterStr = WebFilterUtil.getSecCheckReturnStr(filterStr);
						}

						if ("0x00000001".equals(filterStr)) {
							ModelAndView modelAndView = new ModelAndView("nfu/ap/am/invalidReq");
							throw new ModelAndViewDefiningException(modelAndView);
						} else {
							newValues[i] = filterStr;
						}
					}

					commandMap.put(key, newValues);
				} else {
					String filterStr = values[0];
					if(secCheckAt){
						filterStr = WebFilterUtil.getSecCheckReturnStr(filterStr);
					}

					if ("0x00000001".equals(filterStr)) {
						String ajaxChk = "";
						ajaxChk = request.getHeader("x-requested-with") + "";
						if ( !"null".equals(ajaxChk) && "XMLHttpRequest".equals(ajaxChk) ) {
							PrintWriter out = null;
							Gson gson = new Gson();
							String json = "";
							commandMap.put("xssChk", "Y");
							json = gson.toJson(commandMap.getMap());
							try {
								response.setCharacterEncoding("utf-8");
								out = response.getWriter();
								out.print(json);
							} catch (IOException e) {
								CommonLog.debug(e, this.getClass(), "selectGroupNmInfo");
							} finally {
								if ( out != null ) {
						             out.flush();
								     out.close();
								}
							}
						}
						ModelAndView modelAndView = new ModelAndView("nfu/ap/am/invalidReq");
						throw new ModelAndViewDefiningException(modelAndView);
					}

					commandMap.put(key, filterStr);
				}
			}
		}

		return commandMap;
	}	

	@Override
	public boolean supportsParameter(MethodParameter arg0) {
		return CommonMap.class.isAssignableFrom(arg0.getParameterType());
	}
	
}
