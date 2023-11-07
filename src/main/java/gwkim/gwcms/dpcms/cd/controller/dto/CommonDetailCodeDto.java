package gwkim.gwcms.dpcms.cd.controller.dto;

import gwkim.gwcms.dpcms.cd.domain.CommonDetailCode;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CommonDetailCodeDto {
    private String commonDetailCode;                    // 공통 상세 코드
    private String commonDetailCodeName;                // 공통 상세 코드명
    private String commonDetailCodeDescription;         // 공통 상세 코드 설명
    private int sortOrder;                              // 정렬 순서
    private String useAt;                               // 사용 여부

    public CommonDetailCodeDto(CommonDetailCode detailCode) {
        this.commonDetailCode = detailCode.getId().getCommonDetailCode();
        this.commonDetailCodeName = detailCode.getCommonDetailCodeName();
        this.commonDetailCodeDescription = detailCode.getCommonDetailCodeDescription();
        this.sortOrder = detailCode.getSortOrder();
        this.useAt = detailCode.getUseAt();
    }
}
