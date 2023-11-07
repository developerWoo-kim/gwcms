package gwkim.gwcms.dpcms.cd.controller.dto;

import gwkim.gwcms.dpcms.cd.domain.CommonCode;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCode;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class CommonCodeDto {
    private String commonCode;              // 공통 코드
    private String commonCodeName;          // 공통 코드 이름
    private String commonCodeDescription;   // 공통 코드 설명
    private String useAt;                   // 사용여부
    private List<CommonDetailCodeDto> commonDetailCodeList = new ArrayList<>();

    public CommonCodeDto(CommonCode commonCode) {
        this.commonCode = commonCode.getCommonCode();
        this.commonCodeName = commonCode.getCommonCodeName();
        this.commonCodeDescription = commonCode.getCommonCodeDescription();
        this.useAt = commonCode.getUseAt();

        List<CommonDetailCode> detailList = commonCode.getCommonCodeDetailList();
        for (CommonDetailCode detailCode : detailList) {
            commonDetailCodeList.add(new CommonDetailCodeDto(detailCode));
        }
    }
}
