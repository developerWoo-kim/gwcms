package gwkim.gwcms.cmm.interceptor;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.mvc.WebContentInterceptor;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
public class SystemBaseInterceptor extends WebContentInterceptor {

    /**
     * 전처리기
     *
     * @param request current HTTP request
     * @param response current HTTP response
     * @param handler chosen handler to execute, for type and/or instance evaluation
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws ServletException {
        String reqUri = request.getRequestURI();
        request.setAttribute("requestUri", reqUri);

        return true;
    }
}
