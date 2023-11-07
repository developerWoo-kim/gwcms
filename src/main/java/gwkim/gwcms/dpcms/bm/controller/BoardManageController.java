package gwkim.gwcms.dpcms.bm.controller;

import gwkim.gwcms.cmm.security.util.SecurityAuthorUtil;
import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.cmm.utils.paging.PagingDto;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.bm.controller.dto.BoardDto;
import gwkim.gwcms.dpcms.bm.controller.condition.BoardManageSearchCondition;
import gwkim.gwcms.dpcms.bm.repository.BoardRepository;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCode;
import gwkim.gwcms.dpcms.cd.repository.CommonDetailCodeRepository;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * 게시판 관리 VIEW 컨트롤러
 *
 * @author gwkim
 * @since 2023.09.13
 * @version 1.0
 */
@Controller
@RequiredArgsConstructor
public class BoardManageController {
    private final BoardRepository boardRepository;
    private final CommonDetailCodeRepository commonDetailCodeRepository;
    private final SystemManageRepository systemManageRepository;

    /**
     * 게시판 관리 - 시스템 목록 화면
     *
     * @param condition : search condition
     * @param pageable : spring pageable
     * @param model : model
     * @param re : redirect param
     * @return jsp
     */
    @RequestMapping("/admin/bm/board/sysList")
    public String boardSysList(SearchCondition condition, @PageableDefault(size = 10) Pageable pageable, Model model, RedirectAttributes re) {
        // SPUR 권한 이상은 전체 시스템 목록 조회
        if(SecurityAuthorUtil.hasSystemAdmin()) {
            Page<System> page = systemManageRepository.searchSystemManagePageList(condition, pageable);
            PagingDto<System> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

            model.addAttribute("condition", condition);
            model.addAttribute("pagination", paging);

            // 그냥 시스템 관리자 권한일 경우에는 바로 메뉴 관리 화면으로 이동
        } else {
            System system = systemManageRepository.findById(SecurityAuthorUtil.getSystemId()).orElseThrow();
            re.addAttribute("systemId", system.getSystemId());
            re.addAttribute("systemName", system.getSystemName());
            return "redirect:/admin/bm/board/list";
        }

        model.addAttribute("content", "dpcms/bm/boardSysList.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 게시판 관리 - 시스템 별 게시판 목록 화면
     *
     * @param condition : search condition
     * @param pageable : spring pageable
     * @param model : model
     * @return jsp
     */
    @RequestMapping("/admin/bm/board/list")
    public String boardSysList(BoardManageSearchCondition condition, @PageableDefault(size = 10) Pageable pageable, Model model) {
        System system = systemManageRepository.findById(condition.getSystemId()).orElseThrow();
        model.addAttribute("system", system);

        Page<BoardDto> page = boardRepository.searchPageReturnDto(condition, pageable);
        PagingDto<BoardDto> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());
        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);

        model.addAttribute("content", "dpcms/bm/boardManageList.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 게시판 관리 - 게시판 등록 화면
     *
     * @param condition : search condition
     * @param model : model
     * @return jsp
     */
    @RequestMapping("/admin/bm/board/insertPage")
    public String boardInsertPage(BoardManageSearchCondition condition, Model model) {
        List<CommonDetailCode> boardTypeList = commonDetailCodeRepository.findById_CommonCode("boardType");

        model.addAttribute("boardTypeList", boardTypeList);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/bm/boardInsertPage.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

}
