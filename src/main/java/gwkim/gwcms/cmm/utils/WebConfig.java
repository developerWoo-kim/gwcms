package gwkim.gwcms.cmm.utils;

import gwkim.gwcms.cmm.interceptor.SystemBaseInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Autowired
    private CustomArgumentResolver customArgumentResolver;

    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
        argumentResolvers.add(customArgumentResolver);
    }

    /**
     * interceptor 등록
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new SystemBaseInterceptor())
                .addPathPatterns("/admin/**"); // 인터셉터가 적용될 URL 패턴을 지정합니다. 모든 경로에 적용하려면 "/**" 사용
    }
}
