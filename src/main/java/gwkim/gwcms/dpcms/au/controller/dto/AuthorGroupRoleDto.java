package gwkim.gwcms.dpcms.au.controller.dto;

import gwkim.gwcms.dpcms.au.domain.AuthorGroupRole;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AuthorGroupRoleDto {
    private Long authorGroupRoleId;
    private String authorGroupRoleName;

    public AuthorGroupRoleDto(AuthorGroupRole authorGroupRole) {
        this.authorGroupRoleId = authorGroupRole.getAuthorGroupRoleId();
        this.authorGroupRoleName = authorGroupRole.getAuthorGroupRoleName();
    }
}
