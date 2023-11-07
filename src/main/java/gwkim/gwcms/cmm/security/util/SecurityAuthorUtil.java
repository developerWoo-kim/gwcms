package gwkim.gwcms.cmm.security.util;

import gwkim.gwcms.cmm.security.core.CustomGrantedAuthority;
import gwkim.gwcms.cmm.security.core.userdetails.CustomUserDetails;
import gwkim.gwcms.dpcms.mm.controller.dto.MemberDto;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class SecurityAuthorUtil {

    /**
     * 회원 정보 GET
     * @return MemberDto
     */
    public static MemberDto getMember() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        CustomUserDetails customUserDetails = (CustomUserDetails) auth.getPrincipal();

        return customUserDetails.getMember();
    }

    /**
     * 회원 궈한 GET
     * @return
     */
    public static CustomGrantedAuthority getMemberAuthor() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return (CustomGrantedAuthority) authentication.getAuthorities();
    }

    /**
     * 권한 그룹 체크
     * @param authorGroupName String : 권한 그룹명
     * @return boolean
     */
    public static boolean authorGroupCheck(String authorGroupName) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && auth.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals(authorGroupName))) {
            return true;
        }

        return false;
    }


    /**
     * 마스터 권한 체크
     * @return boolean
     */
    public static boolean hasMaster() {
        return authorGroupCheck("MASTER");
    }

    /**
     * 시스템 관리자 이상의 권한 체크
     * @return boolean
     */
    public static boolean hasSystemAdmin() {
        return hasMaster() || authorGroupCheck("SYSTEM_ADMIN");
    }

    /**
     * 관리자 이상의 권한 체크
     * @return boolean
     */
    public static boolean hasAdmin() {
        return hasSystemAdmin() || authorGroupCheck("ADMIN");
    }

    /**
     * 시스템 아이디 GET
     * @return String
     */
    public static String getSystemId() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        CustomUserDetails userDetails = (CustomUserDetails) auth.getPrincipal();
        return userDetails.getMember().getMemberType().getSystem().getSystemId();
    }
}
