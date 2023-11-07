package gwkim.gwcms.cmm.security;

import gwkim.gwcms.cmm.security.access.CustomAccessDeniedHandler;
import gwkim.gwcms.cmm.security.access.CustomAuthenticationEntryPoint;
import gwkim.gwcms.cmm.security.access.CustomAuthenticationFailureHandler;
import gwkim.gwcms.cmm.security.access.CustomAuthenticationSuccessHandler;
import gwkim.gwcms.cmm.security.authentication.CustomAuthenticationProvider;
import gwkim.gwcms.cmm.security.core.userdetails.CustomUserDetailsService;
import gwkim.gwcms.cmm.security.core.userdetails.PreAccountStatusUserDetailsChecker;
import gwkim.gwcms.dpcms.mm.service.MemberManageService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsChecker;
import org.springframework.security.crypto.password.MessageDigestPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    private final CustomUserDetailsService customUserDetailsService;
    private final MemberManageService memberManageService;

    @Value("${security.session.use}")
    private boolean sessionUse; // 중복 세션 방지 사용 여부

    /**
     * 방화벽 - 디폴트 사용
     * @return HttpFirewall
     */
    @Bean
    public HttpFirewall defaultHttpFireWall() {
        return new DefaultHttpFirewall();
    }

    /**
     * 인증 실패 핸들러
     * @return HttpAuthenticationEntryPoint
     */
    @Bean
    public CustomAuthenticationEntryPoint authenticationEntryPoint() {
        CustomAuthenticationEntryPoint httpAuthenticationEntryPoint = new CustomAuthenticationEntryPoint();
        httpAuthenticationEntryPoint.setErrorURL("/author/unauthorized");
        return httpAuthenticationEntryPoint;
    }

    /**
     * 인가 실패 핸들러
     * @return HttpAccessDeniedHandler
     */
    @Bean
    public CustomAccessDeniedHandler accessDeniedHandler() {
        CustomAccessDeniedHandler httpAccessDeniedHandler = new CustomAccessDeniedHandler();
        httpAccessDeniedHandler.setErrorURL("/author/denied");
        return httpAccessDeniedHandler;
    }

    /**
     * 로그인 성공 핸들러
     * @return AuthenticationSuccessHandler
     */
    @Bean
    public AuthenticationSuccessHandler customAuthenticationSuccessHandler() {
        return new CustomAuthenticationSuccessHandler(memberManageService);
    }

    /**
     * 로그인 실패 핸들러
     * @return AuthenticationFailureHandler
     */
    @Bean
    public AuthenticationFailureHandler customAuthenticationFailureHandler() {
        return new CustomAuthenticationFailureHandler();
    }

    @Bean
    public SessionRegistry sessionRegistry() {
        return new SessionRegistryImpl();
    }

    /**
     * 비밀번호 체크 전 로그인 가능한 상태 인지 확인하는 체커
     * CustomUserDetailsService를 틍해 사용자 정보를 가져온다.
     * @return UserDetailsChecker
     */
    @Bean
    public UserDetailsChecker preUserDetailsChecker() {
        return new PreAccountStatusUserDetailsChecker();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        CustomAuthenticationProvider provider = new CustomAuthenticationProvider();
        provider.setUserDetailsService(customUserDetailsService);
        provider.setPasswordEncoder(new MessageDigestPasswordEncoder("SHA-256"));
        provider.setPreAuthenticationChecks(preUserDetailsChecker());
        provider.setPostAuthenticationChecks(new UserDetailsChecker() {
            @Override
            public void check(UserDetails toCheck) {

            }
        });
        return provider;
    }

    @Override
    public void configure(WebSecurity web) {
        // 더블 슬래시(//) 허용
        web.httpFirewall(defaultHttpFireWall());
        // spring boot의 static resource 위치를 모두 ignoring
        web.ignoring().requestMatchers(PathRequest.toStaticResources().atCommonLocations());
        web.ignoring().mvcMatchers();

        web.ignoring().requestMatchers(new AntPathRequestMatcher("/font/**"));
        web.ignoring().antMatchers("/00_common/**", "/cmm/**", "/css/**", "/font/**", "/images/**", "/js/**", "/upload/**");
    }

    /**
     * spring-security 인증 규칙 정의
     * authorizeRequests() : http요청에 대한 인가 처리, permitAll로 설정된 uri를 제외하고는 authorizationChecker.check()에서 권한을 체크한다.
     * exceptionHandling() : 권한이 없는 사용자에 대한 예외 처리
     * formLogin()         : seAuthorizationCheckerssion-cookie 인증 방식의 로그인 처리
     *
     *
     * @param http the {@link HttpSecurity} to modify
     * @throws Exception
     */
    @Override
    public void configure(HttpSecurity http) throws Exception {
        http.csrf().disable(); // session 기반 web application 이기 떄문에 해당 설정은 disabled

        http
                .headers(headers -> headers
                        .cacheControl(cache -> cache.disable()));// headers cacheControl를 disabled 처리

        http
                .authorizeRequests()
                .antMatchers("/", "/index", "/admin/ad/loginPage","/admin/ad/login", "/admin/ad/logout","/login-error",
                        "/author/denied", "/author/unauthorized", "/admin/mn/menu/left-menu").permitAll()
                .anyRequest().access("@authorizationChecker.check(request, authentication)");

        // 권한 없는 사용자에 대한 예외 처리
        http
                .exceptionHandling()
                .authenticationEntryPoint(authenticationEntryPoint())   // 인증
                .accessDeniedHandler(accessDeniedHandler());            // 인가

        // 로그인 처리
        http
                .formLogin((formLogin) -> formLogin
                                .loginPage("/admin/ad/loginPage")
                                .loginProcessingUrl("/admin/ad/login")
                                .usernameParameter("username")
                                .passwordParameter("password")
                                .successHandler(customAuthenticationSuccessHandler())                   // 로그인 성공 핸들러
                                .failureHandler(customAuthenticationFailureHandler())                   // 로그인 실패 핸들러
//                        .failureUrl("/login-error")  // 실패 시 URI

                );

        // 로그아웃 처리
        http
                .logout()
                .logoutUrl("/admin/ad/logout")
                .logoutSuccessUrl("/")
                .deleteCookies("JSESSIONID", "remember-me")
                .invalidateHttpSession(true);

        // 중복 세션 방지
        if(sessionUse) {
            http.sessionManagement()
                    .maximumSessions(1)
                    .maxSessionsPreventsLogin(false)
                    .expiredUrl("/admin/ad/loginPage")
                    .sessionRegistry(sessionRegistry());

        }
    }

}
