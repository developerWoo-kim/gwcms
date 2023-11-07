package gwkim.gwcms.dpcms.sv.controller.dto.result;

import gwkim.gwcms.dpcms.sv.domain.SurveyAnswerMaster;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class SurveyResultAnswerDto {
    private String openEndedAnswer;
    private String etcAnswer;

    public SurveyResultAnswerDto(SurveyAnswerMaster surveyAnswerMaster) {
        this.openEndedAnswer = surveyAnswerMaster.getOpenEndedAnswer();
        this.etcAnswer = surveyAnswerMaster.getEtcAnswer();
    }
}
