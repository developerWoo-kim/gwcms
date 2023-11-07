package gwkim.gwcms.dpcms.sv.controller.dto.result;

import gwkim.gwcms.dpcms.sv.domain.Survey;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class SurveyResultDto {
    private Long surveyId;          // 설문 아이디
    private List<SurveyResultItemDto> itemList = new ArrayList<>();
    private String surveyTitle;     // 설문 제목
    private int memberCount;

    public SurveyResultDto(Long surveyId, List<SurveyResultItemDto> itemList, String surveyTitle) {
        this.surveyId = surveyId;
        this.itemList = itemList;
        this.surveyTitle = surveyTitle;
    }

    /**
     * 설문 결과 DTO - 전체 객체 그래프
     *
     * @param survey : Survey
     * @param memberCount : int
     * @param surveyResultItemDtoList : List<SurveyResultItemDto>
     */
    public SurveyResultDto(Survey survey, int memberCount, List<SurveyResultItemDto> surveyResultItemDtoList) {
        this.surveyId = survey.getSurveyId();
        for (SurveyResultItemDto surveyResultItemDto : surveyResultItemDtoList) {
            this.itemList.add(surveyResultItemDto);
        }
        this.memberCount = memberCount;
        this.surveyTitle = survey.getSurveyTitle();
    }

    /**
     * 설문 결과 DTO - 설문 제목, 내용, 참여 인원 등
     *
     * @param survey : Survey
     * @param memberCount : int
     */
    public SurveyResultDto(Survey survey, int memberCount) {
        this.surveyId = survey.getSurveyId();
        this.memberCount = memberCount;
        this.surveyTitle = survey.getSurveyTitle();
    }
}
