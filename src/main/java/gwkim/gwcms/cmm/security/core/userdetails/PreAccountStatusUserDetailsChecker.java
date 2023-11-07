package gwkim.gwcms.cmm.security.core.userdetails;

import gwkim.gwcms.cmm.security.exception.MemberInactiveException;
import gwkim.gwcms.cmm.security.exception.MemberNotApproveException;
import gwkim.gwcms.dpcms.au.utils.exception.custom.AuthorAdminNotFoundException;
import gwkim.gwcms.dpcms.mm.controller.dto.MemberDto;
import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsChecker;

import java.util.Collection;

/**
 * Spring Security - 비밀번호 체크전 계정 상태 체킹
 */
@Slf4j
public class PreAccountStatusUserDetailsChecker implements UserDetailsChecker {

    @Override
    public void check(UserDetails toCheck) {
        CustomUserDetails userDetails = (CustomUserDetails) toCheck;

        Collection<GrantedAuthority> auth = userDetails.getAuthorities();
        if (auth.isEmpty()) {
            throw new AuthorAdminNotFoundException(CommonMessage.AU_AUTHOR_ADMIN_NOT_FOUND.getMessage());
        } else {
            boolean adminAuthorCheck = auth.stream()
                    .anyMatch(a -> {
                        return a.getAuthority().equals("MASTER") ||
                                a.getAuthority().equals("SYSTEM_ADMIN") || a.getAuthority().equals("ADMIN");
                    });
            if(!adminAuthorCheck) {
                throw new AuthorAdminNotFoundException(CommonMessage.AU_AUTHOR_ADMIN_NOT_FOUND.getMessage());
            }
        }

        MemberDto member = userDetails.getMember();
        switch (member.getMemberType().getMemberStatus()) {
            case WAITING:
            case REJECTED:
                throw new MemberNotApproveException("승인 대기 or 거절");
            case INACTIVE:
                throw new MemberInactiveException("휴면 계정");
            case ACTIVE:
                // 비밀번호 락 체크
                if(!userDetails.isAccountNonLocked()) {
                    throw new LockedException("연속 실패로 인한 계정 잠김");
                }
        }
    }
}
