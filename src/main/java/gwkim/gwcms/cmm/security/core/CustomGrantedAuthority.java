package gwkim.gwcms.cmm.security.core;

import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupDto;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupMemberDto;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupRoleDto;
import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;

import java.util.List;

public class CustomGrantedAuthority implements GrantedAuthority {
    private static final long serialVersionUID = -51255679987025341L;
    private final String groupName;
    @Getter
    private final AuthorGroupDto authorGroup;

    public CustomGrantedAuthority(AuthorGroupMemberDto authorGroupMemberDto) {
        this.groupName = authorGroupMemberDto.getAuthorGroup().getAuthorGroupName();
        this.authorGroup = authorGroupMemberDto.getAuthorGroup();
    }
    @JsonIgnore
    @Override
    public String getAuthority() {
        return this.groupName;
    }

    @Override
    public int hashCode() {
        return this.groupName.hashCode();
    }

    @Override
    public String toString() {
        return this.groupName;
    }

    @JsonIgnore
    public List<AuthorGroupRoleDto> getHasRoles() {
        return this.authorGroup.getRoleList();
    }
}
