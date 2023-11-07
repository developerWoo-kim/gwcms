package gwkim.gwcms.dpcms.bm.controller.dto;

import gwkim.gwcms.dpcms.bm.domain.Board;
import gwkim.gwcms.dpcms.bm.domain.BoardType;
import gwkim.gwcms.dpcms.sm.controller.dto.SystemDto;
import gwkim.gwcms.dpcms.sm.domain.System;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
public class BoardDto {
    private Long boardId;               // 게시판 아이디
    private String boardName;           // 게시판 이름
    private BoardType boardType;             // 게시판 유형
    private String answerUseAt;         // 댓글 기능 사용 여부
    private String useAt;               // 사용 여부
    private String createId;            // 생성자 아이디
    private String createName;          // 생성자 이름
    private LocalDateTime createDateTime;   // 생성 일시
    private SystemDto system;

    public BoardDto(Long boardId, String boardName, BoardType boardType, String answerUseAt, String useAt, String createId, String createName, LocalDateTime createDateTime, System sys) {
        this.boardId = boardId;
        this.boardName = boardName;
        this.boardType = boardType;
        this.answerUseAt = answerUseAt;
        this.useAt = useAt;
        this.createId = createId;
        this.createName = createName;
        this.createDateTime = createDateTime;
        this.system = new SystemDto(sys);
    }

    public BoardDto(Board board) {
        this.boardId = board.getBoardId();
        this.boardName = board.getBoardName();
        this.boardType = board.getBoardType();
        this.answerUseAt = board.getAnswerUseAt();
        this.useAt = board.getUseAt();
        this.createId = board.getCreateId();
        this.createName = board.getCreateName();
        this.createDateTime = board.getCreateDateTime();
        this.system = new SystemDto(board.getSystem());
    }
}
