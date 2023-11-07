package gwkim.gwcms.cmm.security.authentication;

import gwkim.gwcms.cmm.security.core.userdetails.CustomUserDetails;
import gwkim.gwcms.cmm.security.util.SecurityAuthorUtil;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupMenu;
import gwkim.gwcms.dpcms.mn.service.MenuManageService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 *	Class Name	: AuthorizationChecker.java
 *	Description	: 클라이언트 요청에 대한 인가 여부를 확인
 *                 - ignore uri을 제외한 모든 요청의 인가 여부를 확인
 *
 *	Modification Information
 *	수정일		수정자		수정 내용
 *	-----------	----------	---------------------------
 *	2023.10.24	gwkim		최초 생성
 *  2023.10.31	gwkim		메뉴 권한 체킹 로직 단순화, SecurityAuthorUtil
 *
 *
 *	@author  gwkim
 *	@since  2023.10.24
 *	@version 1.1
 */
@Component
@RequiredArgsConstructor
@Transactional
public class AuthorizationChecker {
    private final MenuManageService menuService;

    public boolean check(HttpServletRequest request, Authentication authentication) {
        String url = request.getRequestURI();
        Object principalObj = authentication.getPrincipal();

        // 로그인 여부 확인
        if(!(principalObj instanceof User)) {
            return false;
        }

        // 인증 여부 확인
        CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
        if(ObjectUtils.isEmpty(userDetails.getMember())) {
            return false;
        }

        // MASTER 권한 체크 (마스터 권한은 최고 관리자)
        if(SecurityAuthorUtil.authorGroupCheck("MASTER")) {
            return true;
        }

        // 메뉴 권한 체크
        List<AuthorGroupMenu> authorGroupMenuList = menuService.findAuthorGroupMenu(url);

        if(authorGroupMenuList == null || authorGroupMenuList.isEmpty()) {
            return true;
        } else {
            return authorGroupMenuList.stream()
                    .anyMatch(authorGroupMenu ->
                            SecurityAuthorUtil.authorGroupCheck(authorGroupMenu.getAuthorGroup().getAuthorGroupName()));
        }
    }
    
}
