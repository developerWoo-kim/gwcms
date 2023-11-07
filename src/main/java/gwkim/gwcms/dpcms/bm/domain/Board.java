package gwkim.gwcms.dpcms.bm.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.cmm.utils.auditing.BaseEntity;
import gwkim.gwcms.dpcms.bm.controller.form.BoardInsertForm;
import gwkim.gwcms.dpcms.sm.domain.System;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity(name = "tb_bm_board")
@Getter @Setter
@NoArgsConstructor
public class Board extends BaseEntity {
    @Id
    @Column(name = "board_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long boardId;               // 게시판 아이디
    private String boardName;           // 게시판 이름

    @Enumerated(EnumType.STRING)
    private BoardType boardType;           // 게시판 유형
    private String answerUseAt;         // 댓글 기능 사용 여부
    private String useAt;               // 사용 여부

    @JsonIgnore
    @OneToMany(mappedBy = "board")
    private List<Post> postList = new ArrayList<>();

    private String createId;            // 생성자 아이디
    private String createName;          // 생성자 이름
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "system_id")
    private System system;

    @Builder
    public Board(String boardName, BoardType boardType, String answerUseAt, String useAt, List<Post> postList, String createId, String createName, System system) {
        this.boardName = boardName;
        this.boardType = boardType;
        this.answerUseAt = answerUseAt;
        this.useAt = useAt;
        this.postList = postList;
        this.createId = createId;
        this.createName = createName;
        this.system = system;
    }

    public void addPost(Post post) {
        this.postList.add(post);
        post.setBoard(this);
    }

    public static Board createBoard(BoardInsertForm form, System system) {
        return new Board().builder()
                .boardName(form.getBoardName())
                .boardType(BoardType.valueOf(form.getBoardType()))
                .answerUseAt(form.getAnswerUseAt())
                .useAt(form.getUseAt())
                .system(system)
                .build();
    }
}
