package gwkim.gwcms.dpcms.sv.controller.dto.result;

import gwkim.gwcms.dpcms.sv.domain.SurveyAnswerMaster;
import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemDetail;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemType;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class SurveyResultItemDto {
    private Long surveyItemId;
    private String surveyItemTitle;
    private SurveyItemType surveyItemType;
    private int preferenceTypeRange;
    private String preferenceTypeStartText;
    private String preferenceTypeEndText;
    private List<SurveyResultItemDetail> answerDetailList = new ArrayList<>();

    public SurveyResultItemDto(SurveyItem surveyItem) {
        this.surveyItemId = surveyItem.getSurveyItemId();
        this.surveyItemTitle = surveyItem.getSurveyItemTitle();
        this.surveyItemType = surveyItem.getSurveyItemType();
        this.preferenceTypeRange = surveyItem.getPreferenceTypeRange();
        this.preferenceTypeStartText = surveyItem.getPreferenceTypeStartText();
        this.preferenceTypeEndText = surveyItem.getPreferenceTypeEndText();

        List<SurveyItemDetail> surveyItemDetailList = surveyItem.getSurveyItemDetailList();
        for (SurveyItemDetail surveyItemDetail : surveyItemDetailList) {
            this.answerDetailList.add(new SurveyResultItemDetail(surveyItemDetail));
        }
    }

    @Data
    @NoArgsConstructor
    public static class SurveyResultItemDetail {
        private Long itemDetailId;
        private String itemDetailName;
        private int answerCount;
        private List<SurveyResultAnswerDto> answerResultList = new ArrayList<>();

        public SurveyResultItemDetail(SurveyItemDetail surveyItemDetail) {
            this.itemDetailId = surveyItemDetail.getItemDetailId();
            this.itemDetailName = surveyItemDetail.getItemDetailName();
            List<SurveyAnswerMaster> surveyAnswerMaster = surveyItemDetail.getSurveyAnswerMaster();
            this.answerCount = surveyAnswerMaster.size();
            for (SurveyAnswerMaster answerMaster : surveyAnswerMaster) {
                answerResultList.add(new SurveyResultAnswerDto(answerMaster));
            }
        }
    }

}
