package gwkim.gwcms.dpcms.sv.controller.dto;

import gwkim.gwcms.dpcms.sv.domain.Survey;
import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class SurveyDto {
    private Long surveyId;              // 설문 아이디
    private String surveyTitle;         // 설문 제목
    private String surveyContent;       // 설문 내용
    private String periodAt;            // 기간 설정 여부
    private LocalDate startDate;        // 설문 시작일
    private LocalDate endDate;          // 설문 종료일
    private LocalDateTime createDateTime;   // 등록 일시

    private List<SurveyItemDto> surveyItemList = new ArrayList<>(); // 설문 문항

    @Builder
    public SurveyDto(Long surveyId, String surveyTitle, String surveyContent, String periodAt, LocalDate startDate, LocalDate endDate, LocalDateTime createDateTime) {
        this.surveyId = surveyId;
        this.surveyTitle = surveyTitle;
        this.surveyContent = surveyContent;
        this.periodAt = periodAt;
        this.startDate = startDate;
        this.endDate = endDate;
        this.createDateTime = createDateTime;
    }

    public SurveyDto(Survey survey) {
        this.surveyId = survey.getSurveyId();
        this.surveyTitle = survey.getSurveyTitle();
        this.surveyContent = survey.getSurveyContent();
        this.periodAt = survey.getPeriodAt();
        this.startDate = survey.getStartDate();
        this.endDate = survey.getEndDate();
        this.createDateTime = survey.getCreateDateTime();
        List<SurveyItem> surveyItems = survey.getSurveyItemList();
        for (SurveyItem surveyItem : surveyItems) {
            surveyItemList.add(new SurveyItemDto(surveyItem));
        }
    }
}
