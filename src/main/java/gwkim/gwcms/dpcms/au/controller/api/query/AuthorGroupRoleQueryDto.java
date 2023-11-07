package gwkim.gwcms.dpcms.au.controller.api.query;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AuthorGroupRoleQueryDto {
    private Long authorGroupId;
    private String authorGroupName;
    private Long authorGroupRoleId;
    private String authorGroupRoleName;

}
