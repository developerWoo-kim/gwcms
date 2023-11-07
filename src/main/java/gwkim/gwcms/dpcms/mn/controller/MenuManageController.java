package gwkim.gwcms.dpcms.mn.controller;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.cmm.security.util.SecurityAuthorUtil;
import gwkim.gwcms.cmm.utils.paging.PagingDto;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupDto;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupRepository;
import gwkim.gwcms.dpcms.bm.domain.Board;
import gwkim.gwcms.dpcms.bm.repository.BoardRepository;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCode;
import gwkim.gwcms.dpcms.cd.repository.CommonDetailCodeRepository;
import gwkim.gwcms.dpcms.mn.controller.dto.MenuDto;
import gwkim.gwcms.dpcms.mn.controller.form.MenuSearchCondition;
import gwkim.gwcms.dpcms.mn.domain.Menu;
import gwkim.gwcms.dpcms.mn.repository.MenuManageRepository;
import gwkim.gwcms.dpcms.mn.service.MenuManageService;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

import static gwkim.gwcms.dpcms.mn.utils.MenuGenerator.*;

@Controller
@RequiredArgsConstructor
public class MenuManageController {
    private final MenuManageService menuManageService;
    private final MenuManageRepository menuManageRepository;
    private final SystemManageRepository systemManageRepository;
    private final CommonDetailCodeRepository commonDetailCodeRepository;
    private final AuthorGroupRepository authorGroupRepository;
    private final BoardRepository boardRepository;


    /**
     * 메뉴 관리 시스템 목록 화면
     * @param condition
     * @param pageable
     * @param model
     * @return
     */
    @RequestMapping("/admin/mn/menu/sysList")
    public String menuSysList(SearchCondition condition, @PageableDefault(size = 10) Pageable pageable, Model model, RedirectAttributes re) {
        // 시스템 관리자 체크
        if(SecurityAuthorUtil.hasSystemAdmin()) {
            // 시스템 관리자 전체 시스템 목록 조회
            Page<System> page = systemManageRepository.searchSystemManagePageList(condition, pageable);
            PagingDto<System> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

            model.addAttribute("condition", condition);
            model.addAttribute("pagination", paging);
        } else {
            // 관리자 권한일 경우에는 바로 메뉴 관리 화면으로 이동
            System system = systemManageRepository.findById(SecurityAuthorUtil.getSystemId()).orElseThrow();
            re.addAttribute("systemId", system.getSystemId());
            re.addAttribute("systemName", system.getSystemName());
            return "redirect:/admin/mn/menu/list";
        }
        model.addAttribute("content", "dpcms/mn/menuSysList.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 시스템별 메뉴 목록 화면
     * @param response
     * @param model
     * @param condition
     * @return
     */
    @RequestMapping("/admin/mn/menu/list")
    public String menuList(HttpServletResponse response, Model model, MenuSearchCondition condition) {
        List<Menu> menuList = menuManageRepository.findBySystemId(condition.getSystemId());

        model.addAttribute("menuList", makeMenuList(menuList));
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/mn/menuList.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 메뉴 등록 화면
     *
     * @param systemId
     * @param model
     * @return
     */
    @RequestMapping("/admin/mn/menu/insertPage")
    public String menuInsertPage(@RequestParam("systemId") String systemId, Model model) {
        // 상위 메뉴 조회
        List<MenuDto> upperMenuList = menuManageService.findUpperMenuNaviList(systemId);
        model.addAttribute("upperMenuList", upperMenuList);

        // 권한 조회
        List<AuthorGroupDto> authorList = authorGroupRepository.findGrantableAuthorList();
        model.addAttribute("authorList", authorList);

        // 메뉴 타입 조회
        List<CommonDetailCode> menuTyList = commonDetailCodeRepository.findById_CommonCode("menuType");
        model.addAttribute("menuTyList", menuTyList);

        // 게시판 조회
        List<Board> boardList = boardRepository.findAllBySystem_SystemId(systemId);
        model.addAttribute("boardList", boardList);

        return "dpcms/mn/menuInsertPage";
    }

    /**
     * 메뉴 수정 화면
     *
     * @param menuId
     * @param model
     * @return
     */
    @RequestMapping("/admin/mn/menu/updatePage")
    public String menuUpdatePage(@RequestParam("menuId") Long menuId, Model model) {
        // 메뉴 상세 정보 조회
        MenuDto menu = menuManageService.findOne(menuId);
        model.addAttribute("menuInfo", menu);

        // 상위 메뉴 조회
        List<MenuDto> upperMenuList = menuManageService.findUpperMenuNaviList(menu.getSystem().getSystemId());
        model.addAttribute("upperMenuList", upperMenuList);

        // 권한 조회
        List<AuthorGroupDto> authorList = authorGroupRepository.findGrantableAuthorList();
        model.addAttribute("authorList", authorList);

        // 메뉴 타입 조회
        List<CommonDetailCode> menuTyList = commonDetailCodeRepository.findById_CommonCode("menuType");
        model.addAttribute("menuTyList", menuTyList);

        // 게시판 조회
        List<Board> boardList = boardRepository.findAllBySystem_SystemId(menu.getSystem().getSystemId());
        model.addAttribute("boardList", boardList);

        return "dpcms/mn/menuUpdatePage";
    }
}
