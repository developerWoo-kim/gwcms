package gwkim.gwcms.dpcms.au.controller.dto;

import gwkim.gwcms.dpcms.au.domain.AuthorGroupMenu;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AuthorGroupMenuDto {
    private Long authorGroupMenuId;
    private AuthorGroupDto authorGroup;

    public AuthorGroupMenuDto(Long authorGroupMenuId, AuthorGroupDto authorGroup) {
        this.authorGroupMenuId = authorGroupMenuId;
        this.authorGroup = authorGroup;
    }

    public AuthorGroupMenuDto(AuthorGroupMenu authorGroupMenu) {
        this.authorGroupMenuId = authorGroupMenu.getAuthorGroupMenuId();
        this.authorGroup = new AuthorGroupDto(authorGroupMenu.getAuthorGroup());
    }
}
