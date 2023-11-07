package gwkim.gwcms.dpcms.cd.controller.form;

import lombok.Data;

@Data
public class CommonCodeForm {
    private String commonCodeName;          // 공통 코드 이름
    private String commonCodeDescription;   // 공통 코드 설명
    private String useAt;                   // 사용 여부
}
