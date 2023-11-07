package gwkim.gwcms.dpcms.mm.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.cmm.utils.auditing.BaseEntity;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupMember;
import gwkim.gwcms.dpcms.mm.controller.form.MemberInsertForm;
import gwkim.gwcms.dpcms.sm.domain.System;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.security.crypto.password.MessageDigestPasswordEncoder;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


@Entity(name = "tb_mm_member")
@Getter @Setter
@NoArgsConstructor
public class Member extends BaseEntity {
    @Id
    @Column(name = "member_id")
    private String memberId;            // 아이디
    private String memberName;          // 사용자명
    private String memberPassword;      // 사용자 비밀번호
    private String telNo;               // 사용자 핸드폰번호
    private String email;               // 이메일
    private String ciKey;               // CI KEY
    private String diKey;               // DI KEY
    private String createIp;            // 가입 아이피
    private int loginCnt;               // 로그인 시도 횟수

    @Enumerated(EnumType.STRING)
    private LoginPreventStatus loginPreventStatus;  // 로그인 가능 상태

    private LocalDate passwordUpdateDate;           // 비밀번호 변경 일자

    @OneToOne(mappedBy = "member", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private MemberType memberType;

    @JsonIgnore
    @OneToMany(mappedBy = "member")
    private List<AuthorGroupMember> authorGroupMemberList = new ArrayList<>();


    @Builder
    public Member(String memberId, String memberName, String memberPassword, String telNo, String email, String ciKey, String diKey, String createIp, int loginCnt, LoginPreventStatus loginPreventStatus, LocalDate passwordUpdateDate) {
        this.memberId = memberId;
        this.memberName = memberName;
        this.memberPassword = memberPassword;
        this.telNo = telNo;
        this.email = email;
        this.ciKey = ciKey;
        this.diKey = diKey;
        this.createIp = createIp;
        this.loginCnt = loginCnt;
        this.loginPreventStatus = loginPreventStatus;
        this.passwordUpdateDate = passwordUpdateDate;
    }

    //== 편의 메소드 ==//
    public void addMemberType(MemberType type) {
        memberType = type;
        type.setMember(this);
    }

    /**
     * 회원 생성
     *
     * @param insertForm
     * @param system
     * @return
     */
    public static Member createMember(MemberInsertForm insertForm, System system) {
        String memberPassword = insertForm.getMemberPassword();

        Member buildMember = new Member().builder()
                .memberId(insertForm.getMemberId())
                .memberName(insertForm.getMemberName())
                .telNo(insertForm.getTelNo())
                .email(insertForm.getEmail())
                .passwordUpdateDate(LocalDate.now())
                .loginPreventStatus(LoginPreventStatus.NORMAL)
                .build();

        // 비밀번호 암호화
        MessageDigestPasswordEncoder pwEncoder = new MessageDigestPasswordEncoder("SHA-256");
        buildMember.setMemberPassword(memberPassword);

        MemberType memberType = new MemberType().builder()
                .memberType(insertForm.getMemberType())
                .confirmAt("N")
                .system(system)
                .build();

        buildMember.addMemberType(memberType);

        return buildMember;
    }

    /**
     * 비밀번호 암호화
     * @param password
     * @return
     */
    public static String encryptPassword(String password) {
        MessageDigestPasswordEncoder pwEncoder = new MessageDigestPasswordEncoder("SHA-256");
        return pwEncoder.encode(password);
    }

    /**
     * 로그인 시도 횟수 증가
     */
    public void incrementLoginFailCount() {
        this.loginCnt++;
    }

    /**
     * 로그인 시도 횟수 초기화
     */
    public void resetLoginFailCount() { this.loginCnt = 0; }
}
