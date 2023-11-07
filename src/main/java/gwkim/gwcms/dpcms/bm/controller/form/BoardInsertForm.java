package gwkim.gwcms.dpcms.bm.controller.form;

import gwkim.gwcms.cmm.utils.validation.EnumValid;
import gwkim.gwcms.dpcms.bm.domain.BoardType;
import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class BoardInsertForm {
    @NotBlank(message = "게시판 이름이 누락되었습니다.")
    private String boardName;           // 게시판 이름
    @EnumValid(enumClass = BoardType.class, message = "게시판 유형이 누락 되었거나, 존재하지 않는 유형입니다.")
    private String boardType;           // 게시판 유형
    private String answerUseAt;         // 댓글 기능 사용 여부
    private String useAt;               // 사용 여부
    @NotBlank(message = "시스템 아이디가 누락되었습니다.")
    private String systemId;            // 시스템 아이디
}
