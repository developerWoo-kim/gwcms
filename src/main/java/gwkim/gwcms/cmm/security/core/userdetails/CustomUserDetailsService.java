package gwkim.gwcms.cmm.security.core.userdetails;

import gwkim.gwcms.cmm.security.core.CustomGrantedAuthority;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupMemberDto;
import gwkim.gwcms.dpcms.mm.controller.dto.MemberDto;
import gwkim.gwcms.dpcms.mm.domain.LoginPreventStatus;
import gwkim.gwcms.dpcms.mm.domain.MemberStatus;
import gwkim.gwcms.dpcms.mm.repository.MemberManageRepository;
import gwkim.gwcms.dpcms.mm.service.MemberManageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class CustomUserDetailsService implements UserDetailsService {

    @Value("${security.login.fail.imsi-lock.lock-minute}")
    private Integer imsiLockLockMinute;

    @Value("${security.credentials-expired.month}")
    private Integer credentialsExpiredMonth;

    @Value("${security.credentials-expired.use}")
    private boolean credentialsExpiredUse;

    private final MemberManageRepository memberRepository;
    private final MemberManageService memberManageService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        ArrayList<GrantedAuthority> authorList = new ArrayList<>();

        MemberDto member = memberManageService.findMemberInfoReturnDto(username);

        // 2023.10.11 : 현 개발 시점에서 엔티티를 직접 사용해도 되는지 의문이 듭니다. -> 2023.10.13 엔티티 사용 안됌 ㅋㅋ
        // < ================ 권한 세팅 ================
        List<AuthorGroupMemberDto> authorGroupMember = memberManageService.findAuthorGroupMemberReturnDto(member.getMemberId());
        for (AuthorGroupMemberDto authorGroupMemberDto : authorGroupMember) {
            authorList.add(new CustomGrantedAuthority(authorGroupMemberDto));
        }

        // ================ 권한 세팅 ================ > //

        // < ================ 계정 상태 ================
        boolean enabled = true;                     // 활성화
        boolean credentialsNonExpired = true;       // 비밀번호 만료
        boolean accountNonLocked = true;            // 계정 잠김

        LoginPreventStatus loginPreventStatus = member.getLoginPreventStatus(); // 로그인 방지 상태

        // 회원상태 체크
        if(member.getMemberType().getMemberStatus() == MemberStatus.ACTIVE) {
            switch (loginPreventStatus) {
                case LOCKED:
                    accountNonLocked = false;
                    break;
                default:
                    break;
            }
        }

        // 비밀번호 만료일 체크
        if(credentialsExpiredUse) {
            credentialsNonExpired = this.checkCredentialsNonExpired(member.getPasswordUpdateDate());
        }

        // ================ 계정 상태 ================ > //

        // < ================ UserDetails 세팅 ================
        CustomUserDetails userDetails = new CustomUserDetails(member.getMemberId(), member.getMemberPassword(), enabled, true,
                credentialsNonExpired, accountNonLocked, authorList);
        userDetails.setMember(member);
        return userDetails;
    }

    private boolean checkCredentialsNonExpired(LocalDate passwordUpdateDate) {
        LocalDate toDate = LocalDate.now();
        LocalDate expiredDate = passwordUpdateDate.plusMonths(credentialsExpiredMonth);
        return toDate.isBefore(expiredDate);
    }
}
