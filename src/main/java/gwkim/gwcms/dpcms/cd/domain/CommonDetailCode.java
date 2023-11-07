package gwkim.gwcms.dpcms.cd.domain;

import gwkim.gwcms.dpcms.cd.controller.dto.CommonDetailCodeQueryDto;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity(name = "tb_cd_common_detail_code")
@Getter
@Setter
@NoArgsConstructor
public class CommonDetailCode {
    @EmbeddedId
    private CommonDetailCodeId id;

    @MapsId("commonCode")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "common_code")
    private CommonCode commonCode;      // 공통코드

    private String commonDetailCodeName;        // 공통상세코드명
    private String commonDetailCodeDescription;        // 공통상세코드설명
    private int sortOrder;      // 정렬순서
    private String useAt;               // 사용여부

    @Builder
    public CommonDetailCode(CommonCode commonCode, String commonDetailCodeName, String commonDetailCodeDescription, int sortOrder, String useAt) {
        this.commonCode = commonCode;
        this.commonDetailCodeName = commonDetailCodeName;
        this.commonDetailCodeDescription = commonDetailCodeDescription;
        this.sortOrder = sortOrder;
        this.useAt = useAt;
    }

    //== 편의 메소드 ==//

    /**
     * 상세 공통 코드 생성기
     * @param commonCode
     * @param detailCode
     * @return
     */
    public static CommonDetailCode createCommonDetailCode(CommonCode commonCode, CommonDetailCodeQueryDto detailCode) {
        CommonDetailCode detailCodeBuild = new CommonDetailCode().builder()
                .commonCode(commonCode)
                .commonDetailCodeName(detailCode.getCommonDetailCodeName())
                .commonDetailCodeDescription(detailCode.getCommonDetailCodeDescription())
                .sortOrder(detailCode.getSortOrder())
                .useAt(detailCode.getUseAt())
                .build();

        detailCodeBuild.setId(new CommonDetailCodeId().builder()
                .commonDetailCode(detailCode.getCommonDetailCode())
                .build());
        return detailCodeBuild;
    }
}
