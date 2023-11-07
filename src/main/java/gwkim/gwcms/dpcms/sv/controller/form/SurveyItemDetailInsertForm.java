package gwkim.gwcms.dpcms.sv.controller.form;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

@Data
@NoArgsConstructor
public class SurveyItemDetailInsertForm {
    @NotEmpty(message = "항목 유형이 누락되었습니다.")
    private String itemDetailName;

    private String etcAt;
}
