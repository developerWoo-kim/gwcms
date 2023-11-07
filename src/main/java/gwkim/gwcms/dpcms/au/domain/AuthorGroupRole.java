package gwkim.gwcms.dpcms.au.domain;

import gwkim.gwcms.dpcms.au.controller.form.AuthorGroupRoleInsertForm;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter @Setter
@NoArgsConstructor
@Entity(name = "tb_au_author_group_role")
public class AuthorGroupRole {

    @Id
    @Column(name = "author_group_role_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long authorGroupRoleId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "author_group_id")
    private AuthorGroup authorGroup;
    private String authorGroupRoleName;


    /**
     * 권한 그룹 역할 생성
     * @param form AuthorGroupRoleInsertForm
     */
    public static AuthorGroupRole createAuthorGroupRole(AuthorGroupRoleInsertForm form, AuthorGroup authorGroup) {
        AuthorGroupRole authorGroupRole = new AuthorGroupRole();
        authorGroupRole.setAuthorGroupRoleName(form.getAuthorGroupRoleName());
        authorGroupRole.setAuthorGroup(authorGroup);

        return authorGroupRole;
    }
}
