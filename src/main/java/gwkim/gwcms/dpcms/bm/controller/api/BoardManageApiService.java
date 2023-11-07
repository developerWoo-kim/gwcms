package gwkim.gwcms.dpcms.bm.controller.api;

import gwkim.gwcms.dpcms.bm.controller.form.BoardInsertForm;
import gwkim.gwcms.dpcms.bm.domain.Board;
import gwkim.gwcms.dpcms.bm.repository.BoardRepository;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class BoardManageApiService {
    private final BoardRepository boardRepository;
    private final SystemManageRepository systemManageRepository;

    /**
     * 게시판 저장
     *
     * @param form : 게시판 등록 폼
     * @return boardId
     */
    public Long saveBoard(BoardInsertForm form) {
        System system = systemManageRepository.findById(form.getSystemId()).orElseThrow();
        Board board = Board.createBoard(form, system);

        Board saveBoard = boardRepository.save(board);

        return saveBoard.getBoardId();
    }
}
