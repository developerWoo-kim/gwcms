package gwkim.gwcms.dpcms.cd.controller.form;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@NoArgsConstructor
public class CommonCodeUpdateForm {
    @NotBlank
    private String commonCode;              // 공통 코드
    private String commonCodeName;          // 공통 코드 이름
    private String commonCodeDescription;   // 공통 코드 설명
    private String useAt;                   // 사용 여부
}
