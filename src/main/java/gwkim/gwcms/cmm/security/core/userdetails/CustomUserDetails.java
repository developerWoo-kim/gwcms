package gwkim.gwcms.cmm.security.core.userdetails;

import gwkim.gwcms.dpcms.mm.controller.dto.MemberDto;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

@Getter @Setter
public class CustomUserDetails extends User {

    private static final long serialVersionUID = 23778217617823123L;
    private MemberDto member;

    public CustomUserDetails(String username, String password, Collection<? extends GrantedAuthority> authorities) {
        super(username, password, authorities);
    }

    /**
     * Constructor
     * @param username 회원 아이디
     * @param password 회원 비밀번호
     * @param enabled 비활성화
     * @param accountNonExpired ? 필요 한가????
     * @param credentialsNonExpired 비밀번호 만료X
     * @param accountNonLocked 비밀번호 잠김X
     * @param authorities 권한
     */
    public CustomUserDetails(String username, String password, boolean enabled, boolean accountNonExpired, boolean credentialsNonExpired,
                             boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {
        super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
    }
}
