package gwkim.gwcms.dpcms.tm.controller.form;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@NoArgsConstructor
public class TemplateInsertForm {
    @NotBlank(message = "템플릿 아이디가 누락 되었습니다.")
    private String templateId;              // 템플릿 아이디
    @NotBlank(message = "템플릿 이름이 누락 되었습니다.")
    private String templateName;            // 템플릿 이름
    private String templateType;            // 템플릿 유형
    private String templateDescription;     // 템플릿 설명
    private String useAt;                   // 사용 여부
}
