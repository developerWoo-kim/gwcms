package gwkim.gwcms.dpcms.sv.controller.dto;

import gwkim.gwcms.dpcms.sv.domain.SurveyItemDetail;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class SurveyItemDetailDto {
    private Long itemDetailId;
    private String itemDetailName;
    private String etcAt;

    @Builder
    public SurveyItemDetailDto(Long itemDetailId, String itemDetailName, String etcAt) {
        this.itemDetailId = itemDetailId;
        this.itemDetailName = itemDetailName;
        this.etcAt = etcAt;
    }

    public SurveyItemDetailDto(SurveyItemDetail surveyItemDetail) {
        this.itemDetailId = surveyItemDetail.getItemDetailId();
        this.itemDetailName = surveyItemDetail.getItemDetailName();
        this.etcAt = surveyItemDetail.getEtcAt();
    }
}
