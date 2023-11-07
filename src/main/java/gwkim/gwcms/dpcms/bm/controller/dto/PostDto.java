package gwkim.gwcms.dpcms.bm.controller.dto;

import gwkim.gwcms.dpcms.bm.domain.Board;
import gwkim.gwcms.dpcms.bm.domain.Post;
import gwkim.gwcms.dpcms.fm.controller.dto.ThumbFileDto;
import gwkim.gwcms.dpcms.fm.domain.ThumbnailFile;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
public class PostDto {
    private Long postId;                    // 게시물 아이디
    private BoardDto board;                    // 게시판
    private String postTitle;               // 게시물 제목
    private String postContent;             // 게시물 내용
    private int viewCount;                  // 조회수
    private String createId;                // 생성자 아이디
    private String createName;              // 생서자 이름
    private LocalDateTime createDateTime;   // 생성 일시
    private String updateId;                // 수정자 아이디
    private String updateName;              // 수정자 이름
    private LocalDateTime updateDateTime;       // 수정 일시
    private ThumbFileDto thumbFile;         //썸네일

    public PostDto(Long postId, Board board, String postTitle, String postContent, int viewCount, String createId, String createName, LocalDateTime createDateTime, String updateId, String updateName, LocalDateTime updateDateTime, ThumbnailFile thumbnailFile) {
        this.postId = postId;
        this.board = new BoardDto(board);
        this.postTitle = postTitle;
        this.postContent = postContent;
        this.viewCount = viewCount;
        this.createId = createId;
        this.createName = createName;
        this.createDateTime = createDateTime;
        this.updateId = updateId;
        this.updateName = updateName;
        this.updateDateTime = updateDateTime;
        if(thumbnailFile != null) {
            this.thumbFile = new ThumbFileDto(thumbnailFile);
        }
    }

    public PostDto(Post post) {
        this.postId = post.getPostId();
        this.board = new BoardDto(post.getBoard());
        this.postTitle = post.getPostTitle();
        this.postContent = post.getPostContent();
        this.viewCount = post.getViewCount();
        this.createId = post.getCreateId();
        this.createName = post.getCreateName();
        this.createDateTime = post.getCreateDateTime();
        this.updateId = post.getUpdateId();
        this.updateName = post.getUpdateName();
        this.updateDateTime = post.getUpdateDateTime();
        if(post.getThumbnailFile() != null) {
            this.thumbFile = new ThumbFileDto(post.getThumbnailFile());
        }

    }
}
