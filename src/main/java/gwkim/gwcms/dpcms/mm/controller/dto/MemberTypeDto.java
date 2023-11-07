package gwkim.gwcms.dpcms.mm.controller.dto;

import gwkim.gwcms.dpcms.mm.domain.MemberStatus;
import gwkim.gwcms.dpcms.mm.domain.MemberType;
import gwkim.gwcms.dpcms.sm.controller.dto.SystemDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberTypeDto {
    private Long memberTypeId;
    private String memberType;
    private MemberStatus memberStatus;
    private String confirmMemberId;
    private String confirmMemberName;
    private LocalDateTime confirmDateTime;
    private SystemDto system;

    public MemberTypeDto(MemberType memberType) {
        this.memberTypeId = memberType.getMemberTypeId();
        this.memberType = memberType.getMemberType();
        this.memberStatus = memberType.getMemberStatus();
        this.confirmMemberId = memberType.getConfirmMemberId();
        this.confirmMemberName = memberType.getConfirmMemberName();
        this.confirmDateTime = memberType.getConfirmDateTime();
        this.system = new SystemDto(memberType.getSystem());
    }
}
