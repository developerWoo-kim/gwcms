package gwkim.gwcms.dpcms.cd.controller.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CommonDetailCodeQueryDto {
    private String commonCode;                 // 공통 코드
    private String commonCodeName;               // 공통 코드 이름
    private String commonDetailCode;                    // 공통 상세 코드
    private String commonDetailCodeName;                // 공통 상세 코드명
    private String commonDetailCodeDescription;         // 공통 상세 코드 설명
    private int sortOrder;                              // 정렬 순서
    private String useAt;                               // 사용 여부

    public CommonDetailCodeQueryDto(String cmmnCode, String cmmnCodeNm, String cmmnDetailCode, String cmmnDetailCodeNm, String cmmnDetailCodeDc, int cmmnDetailCodeOrdr, String useAt) {
        this.commonCode = cmmnCode;
        this.commonCodeName = cmmnCodeNm;
        this.commonDetailCode = cmmnDetailCode;
        this.commonDetailCodeName = cmmnDetailCodeNm;
        this.commonDetailCodeDescription = cmmnDetailCodeDc;
        this.sortOrder = cmmnDetailCodeOrdr;
        this.useAt = useAt;
    }
}
