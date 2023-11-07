package gwkim.gwcms.dpcms.au.controller.form;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@NoArgsConstructor
public class AuthorGroupInsertForm {
    @NotBlank(message = "권한명이 누락되었습니다.")
    private String authorGroupName;             // 권한 이름
    @NotBlank(message = "권한설명이 누락되었습니다.")
    private String authorGroupDescription;      // 권한 설명
}
