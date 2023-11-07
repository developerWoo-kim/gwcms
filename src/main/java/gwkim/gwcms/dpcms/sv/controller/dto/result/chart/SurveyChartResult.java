package gwkim.gwcms.dpcms.sv.controller.dto.result.chart;

import gwkim.gwcms.dpcms.sv.domain.Survey;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class SurveyChartResult {
    private Long surveyId;          // 설문 아이디
    private String surveyTitle;     // 설문 제목
    private String surveyContents;  // 설문 내용
    private int memberCount;
    private List<SurveyPieChartResult> pieChartResultList = new ArrayList<>();

    public SurveyChartResult(Survey survey, int memberCount, List<SurveyPieChartResult> pieChartResultList) {
        this.surveyId = survey.getSurveyId();
        this.surveyTitle = survey.getSurveyTitle();
        this.memberCount = memberCount;
        this.pieChartResultList = pieChartResultList;
    }
}
