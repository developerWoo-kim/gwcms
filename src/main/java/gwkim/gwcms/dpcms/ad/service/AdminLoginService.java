package gwkim.gwcms.dpcms.ad.service;

import javax.servlet.http.HttpServletRequest;

public interface AdminLoginService {
    void adminLogin(HttpServletRequest request, String memberId, String memberPassword);
}
