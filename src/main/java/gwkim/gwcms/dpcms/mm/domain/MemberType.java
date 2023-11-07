package gwkim.gwcms.dpcms.mm.domain;


import gwkim.gwcms.dpcms.sm.domain.System;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity(name = "tb_mm_member_type")
@Getter
@Setter
@NoArgsConstructor
public class MemberType {
    @Id
    @Column(name = "member_type_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long memberTypeId;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_id")
    private Member member;
    private String memberType;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "system_id")
    private System system;

    @Enumerated(EnumType.STRING)
    private MemberStatus memberStatus;
    private String confirmAt;
    private String confirmMemberId;
    private String confirmMemberName;
    private LocalDateTime confirmDateTime;

    @Builder
    public MemberType(Member member, String memberType, System system, MemberStatus memberStatus, String confirmAt, String confirmMemberId, String confirmMemberName, LocalDateTime confirmDateTime) {
        this.member = member;
        this.memberType = memberType;
        this.system = system;
        this.memberStatus = memberStatus;
        this.confirmAt = confirmAt;
        this.confirmMemberId = confirmMemberId;
        this.confirmMemberName = confirmMemberName;
        this.confirmDateTime = confirmDateTime;
    }

    //== 편의 메소드 ==/
}
