package gwkim.gwcms.dpcms.mm.controller.dto;

import gwkim.gwcms.dpcms.mm.domain.MemberStatus;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MemberManageListDto {
    private String memberId;
    private String memberName;
    private String sysNm;
    private String memberType;
    private String confirmYn;
    private String memberStatus;

    public MemberManageListDto(String memberId, String memberName, String sysNm, String memberType, String confirmYn, MemberStatus memberStatus) {
        this.memberId = memberId;
        this.memberName = memberName;
        this.sysNm = sysNm;
        this.memberType = memberType;
        this.confirmYn = confirmYn;
        this.memberStatus = memberStatus.getStatusName();
    }
}
