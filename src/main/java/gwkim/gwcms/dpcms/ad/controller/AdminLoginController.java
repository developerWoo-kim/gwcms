package gwkim.gwcms.dpcms.ad.controller;

import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.ad.service.AdminLoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequiredArgsConstructor
public class AdminLoginController {
    private final AdminLoginService adminLoginService;

    /**
     * 관리자 로그인 -> 시큐리티 전환으로 쓰지 않는 코드입니다.
     *
     * @param request
     * @param mberId
     * @param mberPassword
     * @return
     */
    @ResponseBody
    @RequestMapping("/admin/ad/login")
    public CommonResponse<String> adminLogin(HttpServletRequest request,
                                             @RequestParam("username") String mberId,
                                             @RequestParam("password") String mberPassword) {
        adminLoginService.adminLogin(request, mberId, mberPassword);
        return CommonResponse.commonSuccess(null, "로그인 성공");
    }
}
