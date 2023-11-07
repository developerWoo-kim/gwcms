package gwkim.gwcms.dpcms.sv.controller.form;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class SurveyInsertForm {
    @NotEmpty(message = "설문 제목이 누락되었습니다.")
    private String surveyTitle;     // 설문 제목
    private String surveyContent;       // 설문 내용
    private String periodAt;            // 기간 설정 여부
    private String startDate;        // 설문 시작일
    private String endDate;          // 설문 종료일

    @Valid
    @NotNull(message = "답변 항목이 누락되었습니다.")
    @Size(min = 1, message = "답변 항목이 누락되었습니다.")
    private List<SurveyItemInsertForm> surveyItemList = new ArrayList<>();
}
