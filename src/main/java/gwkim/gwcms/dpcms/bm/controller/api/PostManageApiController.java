package gwkim.gwcms.dpcms.bm.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.bm.controller.form.PostInsertForm;
import gwkim.gwcms.dpcms.bm.controller.form.PostUpdateForm;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequiredArgsConstructor
public class PostManageApiController {
    private final PostManageApiService postManageApiService;

    /**
     * 게시물 저장
     *
     * @param form : PostInsertForm
     * @return CommonResponse
     */
    @PostMapping("/admin/bm/post")
    public CommonResponse<String> savePost(@Valid PostInsertForm form) {
        postManageApiService.savePost(form);
        return CommonResponse.commonSuccess(CommonMessage.BM_POST_SAVE_SUCCESS.getMessage());
    }

    /**
     * 게시물 수정
     *
     * @param form : PostInsertForm
     * @return CommonResponse
     */
    @PutMapping("/admin/bm/post")
    public CommonResponse<String> updatePost(@Valid PostUpdateForm form) {
        postManageApiService.updatePost(form);
        return CommonResponse.commonSuccess(CommonMessage.BM_POST_UPDATE_SUCCESS.getMessage());
    }
}
