package gwkim.gwcms.dpcms.sv.controller.dto;

import gwkim.gwcms.dpcms.cfm.controller.dto.CommonFileMasterDto;
import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemDetail;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemType;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class SurveyItemDto {
    private Long surveyItemId;
    private String surveyItemTitle;
    private String surveyItemContents;
    private SurveyItemType surveyItemType;
    private String surveyItemKey;
    private String essentialAt;                 // 필수 여부 : 필수 선택 수와 관계 없음
    private Long essentialCount;                // 필수 선택 수
    private int preferenceTypeRange;
    private String preferenceTypeStartText;
    private String preferenceTypeEndText;
    private List<SurveyItemDetailDto> surveyItemDetailList = new ArrayList<>();
    private CommonFileMasterDto fileMaster;

    @Builder
    public SurveyItemDto(Long surveyItemId, String surveyItemTitle, String surveyItemContents, SurveyItemType surveyItemType, String surveyItemKey, String essentialAt, Long essentialCount, int preferenceTypeRange, String preferenceTypeStartText, String preferenceTypeEndText) {
        this.surveyItemId = surveyItemId;
        this.surveyItemTitle = surveyItemTitle;
        this.surveyItemContents = surveyItemContents;
        this.surveyItemType = surveyItemType;
        this.essentialAt = essentialAt;
        this.essentialCount = essentialCount;
        this.preferenceTypeRange = preferenceTypeRange;
        this.preferenceTypeStartText = preferenceTypeStartText;
        this.preferenceTypeEndText = preferenceTypeEndText;
    }

    public SurveyItemDto(SurveyItem surveyItem) {
        this.surveyItemId = surveyItem.getSurveyItemId();
        this.surveyItemTitle = surveyItem.getSurveyItemTitle();
        this.surveyItemContents = surveyItem.getSurveyItemContents();
        this.surveyItemType = surveyItem.getSurveyItemType();
        this.surveyItemKey = surveyItem.getSurveyItemKey();
        this.essentialAt = surveyItem.getEssentialAt();
        this.essentialCount = surveyItem.getEssentialCount();
        this.preferenceTypeRange = surveyItem.getPreferenceTypeRange();
        this.preferenceTypeStartText = surveyItem.getPreferenceTypeStartText();
        this.preferenceTypeEndText = surveyItem.getPreferenceTypeEndText();

        List<SurveyItemDetail> surveyItemDetails = surveyItem.getSurveyItemDetailList();
        for (SurveyItemDetail surveyItemDetail : surveyItemDetails) {
            surveyItemDetailList.add(new SurveyItemDetailDto(surveyItemDetail));
        }
    }
}
