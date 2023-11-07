package gwkim.gwcms.dpcms.mm.domain;

import lombok.Getter;

/**
 * 회원 상태
 * ACTIVE : 정상, WAITING : 승인대기, REJECTED : 승인반려, INACTIVE : 휴면
 */
@Getter
public enum MemberStatus {
    ACTIVE("정상"),
    WAITING("승인대기"),
    REJECTED("승인반려"),
    INACTIVE("휴면");

    private final String statusName;
    MemberStatus(String statusName) {
        this.statusName = statusName;
    }
}
