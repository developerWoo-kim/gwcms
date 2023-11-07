package gwkim.gwcms.dpcms.au.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.dpcms.au.controller.form.AuthorGroupInsertForm;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Getter @Setter
@NoArgsConstructor
@Entity(name = "tb_au_author_group")
public class AuthorGroup {

    @Id
    @Column(name = "author_group_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long authorGroupId;
    private String authorGroupName;
    private String authorGroupDescription;

    @JsonIgnore
    @OneToMany(mappedBy = "authorGroup")
    private List<AuthorGroupRole> roleList = new ArrayList<>();

    @Builder
    public AuthorGroup(String authorGroupName, String authorGroupDescription) {
        this.authorGroupName = authorGroupName;
        this.authorGroupDescription = authorGroupDescription;
    }

    /**
     * 권한 생성
     * @param form AuthorGroupInsertForm
     * @return AuthorGroup
     */
    public static AuthorGroup createAuthorGroup(AuthorGroupInsertForm form) {
        return new AuthorGroup().builder()
                .authorGroupName(form.getAuthorGroupName())
                .authorGroupDescription(form.getAuthorGroupDescription())
                .build();
    }
}
