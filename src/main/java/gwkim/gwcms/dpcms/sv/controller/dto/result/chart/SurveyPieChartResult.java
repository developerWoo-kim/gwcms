package gwkim.gwcms.dpcms.sv.controller.dto.result.chart;

import gwkim.gwcms.cmm.utils.chart.pieChart.PieChartDataDto;
import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemType;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@NoArgsConstructor
public class SurveyPieChartResult extends PieChartDataDto {
    private Long surveyItemId;
    private String surveyItemTitle;
    private SurveyItemType surveyItemType;
    private int preferenceTypeRange;
    private String preferenceTypeStartText;
    private String preferenceTypeEndText;

    public SurveyPieChartResult(SurveyItem surveyItem) {
        this.surveyItemId = surveyItem.getSurveyItemId();
        this.surveyItemTitle = surveyItem.getSurveyItemTitle();
        this.surveyItemType = surveyItem.getSurveyItemType();
        this.preferenceTypeRange = surveyItem.getPreferenceTypeRange();
        this.preferenceTypeStartText = surveyItem.getPreferenceTypeStartText();
        this.preferenceTypeEndText = surveyItem.getPreferenceTypeEndText();
    }
}
