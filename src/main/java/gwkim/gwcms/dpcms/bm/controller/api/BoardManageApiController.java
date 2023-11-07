package gwkim.gwcms.dpcms.bm.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.bm.controller.form.BoardInsertForm;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequiredArgsConstructor
public class BoardManageApiController {
    private final BoardManageApiService boardManageApiService;

    /**
     * 게시판 저장
     * @param form : 게시판 등록 폼
     * @return CommonResponse
     */
    @PostMapping("/admin/bm/board")
    public CommonResponse<Long> insertBoard(@Valid BoardInsertForm form) {
        Long boardId = boardManageApiService.saveBoard(form);
        return CommonResponse.commonSuccess(boardId, CommonMessage.BM_BOARD_SAVE_SUCCESS.getMessage());
    }

}
