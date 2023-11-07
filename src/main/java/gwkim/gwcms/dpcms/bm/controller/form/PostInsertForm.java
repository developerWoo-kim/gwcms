package gwkim.gwcms.dpcms.bm.controller.form;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Getter @Setter
@NoArgsConstructor
public class PostInsertForm {
    @NotNull(message = "게시판 아이디가 누락 되었습니다.")
    private Long boardId;                   // 게시판 아이디
    @NotBlank(message = "게시판 제목이 누락 되었습니다.")
    private String postTitle;               // 게시물 제목
    private String postContent;             // 게시물 내용
    private MultipartFile thumbFile;        // 썸네일 파일
    private List<MultipartFile> file;       // 첨부 파일

}
