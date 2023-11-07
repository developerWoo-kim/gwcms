package gwkim.gwcms.dpcms.au.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.dpcms.mm.domain.Member;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@Entity(name = "tb_au_author_group_member")
public class AuthorGroupMember {
    @Id
    @Column(name = "author_group_member_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long authorGroupMemberId;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_id")
    private Member member;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "author_group_id")
    private AuthorGroup authorGroup;


    /**
     * 회원 권한 생성
     * @param member Member
     * @param authorGroup AuthorGroup
     * @return AuthorGroupMember
     */
    public static AuthorGroupMember createAuthorGroupMember(Member member, AuthorGroup authorGroup) {
        AuthorGroupMember authorGroupMember = new AuthorGroupMember();
        authorGroupMember.setAuthorGroup(authorGroup);
        authorGroupMember.setMember(member);
        return authorGroupMember;
    }
}
