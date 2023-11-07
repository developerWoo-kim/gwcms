package gwkim.gwcms.dpcms.au.controller.form;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

@Data
@NoArgsConstructor
public class AuthorGroupRoleInsertForm {
    @Min(value = 1, message = "권한 그룹이 누락되었습니다.")
    private Long authorGroupId;
    @NotBlank(message = "역할이 누락되었습니다.")
    private String authorGroupRoleName;
}
