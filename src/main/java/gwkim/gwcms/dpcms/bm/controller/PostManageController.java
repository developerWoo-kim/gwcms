package gwkim.gwcms.dpcms.bm.controller;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.cmm.utils.paging.PagingDto;
import gwkim.gwcms.dpcms.bm.controller.dto.PostDto;
import gwkim.gwcms.dpcms.bm.controller.condition.PostManageSearchCondition;
import gwkim.gwcms.dpcms.bm.domain.Board;
import gwkim.gwcms.dpcms.bm.domain.Post;
import gwkim.gwcms.dpcms.bm.repository.BoardRepository;
import gwkim.gwcms.dpcms.bm.repository.PostRepository;
import gwkim.gwcms.dpcms.fm.controller.dto.AttachFileMasterDto;
import gwkim.gwcms.dpcms.fm.service.AttachFileService;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
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
public class PostManageController {
    private final SystemManageRepository systemManageRepository;
    private final BoardRepository boardRepository;
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
    @RequestMapping("/admin/bm/post/manage-list")
    public String postManageList(PostManageSearchCondition condition, @PageableDefault(size = 10) Pageable pageable, Model model) {
        System system = systemManageRepository.findById(condition.getSystemId()).orElseThrow();
        model.addAttribute("system", system);

        Page<PostDto> page = postRepository.searchPostManagePagingList(condition, pageable);
        PagingDto<PostDto> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());



        Board board = boardRepository.findById(condition.getBoardId()).orElseThrow();
        switch (board.getBoardType()) {
            case IMAGE:
                model.addAttribute("content", "dpcms/bm/postManageImageList.jsp");
                break;
            default:
                model.addAttribute("content", "dpcms/bm/postManageList.jsp");
                break;
        }

        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 게시물 관리 - 게시물 등록 화면
     *
     * @param condition : PostManageSearchCondition
     * @param model : Model
     * @return jsp
     */
    @RequestMapping("/admin/bm/post/manage-insertPage")
    public String postMangeInsertPage(PostManageSearchCondition condition, Model model) {
        Board board = boardRepository.findById(condition.getBoardId()).orElseThrow();
        model.addAttribute("board", board);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/bm/postInsertPage.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 게시물 관리 - 게시물 상세 화면
     *
     * @param postId : postId
     * @param condition : PostManageSearchCondition
     * @param model : Model
     * @return jsp
     */
    @RequestMapping("/admin/bm/post/{postId}/manage-detail")
    public String postManageInfoPage(@PathVariable("postId") Long postId, PostManageSearchCondition condition, Model model) {

        Post post = postRepository.findById(postId).orElseThrow();
        AttachFileMasterDto fileMaster = attachFileService.findAttachFileMasterContainFileList(post.getPostId());

        model.addAttribute("postInfo", post);
        model.addAttribute("fileMaster", fileMaster);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/bm/postDetailPage.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }
}
