package gwkim.gwcms.dpcms.au.controller.dto;

import gwkim.gwcms.dpcms.au.domain.AuthorGroup;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupRole;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class AuthorGroupDto {
    private Long authorGroupId;
    private String authorGroupName;
    private String authorGroupDescription;
    private List<AuthorGroupRoleDto> roleList = new ArrayList<>();

    public AuthorGroupDto(AuthorGroup authorGroup) {
        this.authorGroupId = authorGroup.getAuthorGroupId();
        this.authorGroupName = authorGroup.getAuthorGroupName();
        this.authorGroupDescription = authorGroup.getAuthorGroupDescription();
        List<AuthorGroupRole> list = authorGroup.getRoleList();
        for (AuthorGroupRole authorGroupRole : list) {
            roleList.add(new AuthorGroupRoleDto(authorGroupRole));
        }
    }
}
