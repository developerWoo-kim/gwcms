package gwkim.gwcms.dpcms.bm.domain;
import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.cmm.security.util.SecurityAuthorUtil;
import gwkim.gwcms.cmm.utils.auditing.BaseEntity;
import gwkim.gwcms.dpcms.bm.controller.form.PostInsertForm;
import gwkim.gwcms.dpcms.fm.domain.AttachFileMaster;
import gwkim.gwcms.dpcms.fm.domain.ThumbnailFile;
import gwkim.gwcms.dpcms.mm.controller.dto.MemberDto;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity(name = "tb_bm_post")
@Getter
@Setter
@NoArgsConstructor
public class Post extends BaseEntity {

    @Id
    @Column(name = "post_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long postId;                    // 게시물 아이디

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "board_id")
    private Board board;                    // 게시판

    @JsonIgnore
    @OneToOne(mappedBy = "post", fetch = FetchType.LAZY)
    private AttachFileMaster attachFileMaster;          // 첨부파일 마스터

    @JsonIgnore
    @OneToOne(mappedBy = "post", fetch = FetchType.LAZY)
    private ThumbnailFile thumbnailFile;                // 썸네일

    private String postTitle;               // 게시물 제목
    @Lob
    private String postContent;             // 게시물 내용
    private int viewCount;                  // 조회수

    private String createId;                // 생성자 아이디
    private String createName;              // 생서자 이름
    private String updateId;                // 수정자 아이디
    private String updateName;              // 수정자 이름

    @Builder
    public Post(Board board, String postTitle, String postContent, int viewCount, String createId, String createName, String updateId, String updateName) {
        this.postTitle = postTitle;
        this.postContent = postContent;
        this.viewCount = viewCount;
        this.createId = createId;
        this.createName = createName;
        this.updateId = updateId;
        this.updateName = updateName;
    }

    public void addThumbFile(ThumbnailFile thumbnailFile) {
        thumbnailFile.setPost(this);
        this.thumbnailFile = thumbnailFile;
    }

    public static Post createPost(PostInsertForm form, Board board) {
        MemberDto member = SecurityAuthorUtil.getMember();
        Post post = new Post().builder()
                .postTitle(form.getPostTitle())
                .postContent(form.getPostContent())
                .createId(member.getMemberId())
                .createName(member.getMemberName())
                .build();
        board.addPost(post);
        return post;
    }

}
