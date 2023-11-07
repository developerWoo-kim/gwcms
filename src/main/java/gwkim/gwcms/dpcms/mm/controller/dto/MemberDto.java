package gwkim.gwcms.dpcms.mm.controller.dto;

import gwkim.gwcms.dpcms.mm.domain.LoginPreventStatus;
import gwkim.gwcms.dpcms.mm.domain.Member;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberDto {
    private String memberId;            // 아이디
    private String memberPassword;      // 비밀번호
    private String memberName;          // 사용자명
    private String telNo;               // 사용자 핸드폰번호
    private String email;               // 이메일
    private String ciKey;               // CI KEY
    private String diKey;               // DI KEY
    private LocalDateTime createDateTime;     // 가입 일시
    private String createIp;            // 가입 아이피
    private int loginCnt;               // 로그인 시도 횟수
    private LoginPreventStatus loginPreventStatus;  // 로그인 가능 상태
    private LocalDate passwordUpdateDate;           // 비밀번호 변경 일자
    private MemberTypeDto memberType;
    public MemberDto(Member member) {
        this.memberId = member.getMemberId();
        this.memberPassword = member.getMemberPassword();
        this.memberName = member.getMemberName();
        this.telNo = member.getTelNo();
        this.email = member.getEmail();
        this.ciKey = member.getCiKey();
        this.diKey = member.getDiKey();
        this.createDateTime = member.getCreateDateTime();
        this.createIp = member.getCreateIp();
        this.loginCnt = member.getLoginCnt();
        this.loginPreventStatus = member.getLoginPreventStatus();
        this.passwordUpdateDate = member.getPasswordUpdateDate();
        this.memberType = new MemberTypeDto(member.getMemberType());
    }
}
