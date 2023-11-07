package gwkim.gwcms.dpcms.bm.controller;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.cmm.utils.paging.PagingDto;
import gwkim.gwcms.dpcms.bm.controller.dto.PostDto;
import gwkim.gwcms.dpcms.bm.controller.condition.PostManageSearchCondition;
import gwkim.gwcms.dpcms.bm.domain.Post;
import gwkim.gwcms.dpcms.bm.repository.PostRepository;
import gwkim.gwcms.dpcms.fm.controller.dto.AttachFileMasterDto;
import gwkim.gwcms.dpcms.fm.service.AttachFileService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
public class PostController {
    private final PostRepository postRepository;
    private final AttachFileService attachFileService;

    /**
     * 게시물 관리 - 게시물 관리 목록
     *
     * @param condition : search condition
     * @param pageable : spring pageable
     * @param model : model
     * @return jsp
     */
    @RequestMapping("/{ctx}/bm/post/list")
    public String postList(@PathVariable("ctx") String systemId, PostManageSearchCondition condition, @PageableDefault(size = 10) Pageable pageable, Model model) {
        Page<PostDto> page = postRepository.searchPostManagePagingList(condition, pageable);
        PagingDto<PostDto> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);
        model.addAttribute("content", "dpcms/bm/postList.jsp");

        return CommonUtil.getSubLayoutPathBySysID(systemId);
    }

    /**
     * 게시물 관리 - 게시물 상세 화면
     *
     * @param postId : postId
     * @param condition : PostManageSearchCondition
     * @param model : Model
     * @return jsp
     */
    @RequestMapping("/{ctx}/bm/post/{postId}/info")
    public String postManageInfoPage(@PathVariable("ctx") String systemId, @PathVariable("postId") Long postId, PostManageSearchCondition condition, Model model) {

        Post post = postRepository.findById(postId).orElseThrow();
        AttachFileMasterDto fileMaster = attachFileService.findAttachFileMasterContainFileList(post.getPostId());

        model.addAttribute("postInfo", post);
        model.addAttribute("fileMaster", fileMaster);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/bm/postDetailPage.jsp");

        return CommonUtil.getSubLayoutPathBySysID(systemId);
    }
}
