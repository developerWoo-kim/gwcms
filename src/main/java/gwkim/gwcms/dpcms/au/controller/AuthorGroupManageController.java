package gwkim.gwcms.dpcms.au.controller;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.cmm.utils.paging.PagingDto;
import gwkim.gwcms.dpcms.au.controller.api.query.AuthorGroupRoleQueryDto;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorListDto;
import gwkim.gwcms.dpcms.au.controller.search.AuthorSearchCondition;
import gwkim.gwcms.dpcms.au.domain.AuthorGroup;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupRepository;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupRoleRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequiredArgsConstructor
public class AuthorGroupManageController {
    private final AuthorGroupRepository authorGroupRepository;
    private final AuthorGroupRoleRepository authorGroupRoleRepository;

    /**
     * 권한 관리 목록
     *
     * @param pageable Pageable
     * @param condition : 검색 조건
     * @param model Model
     * @return String
     */
    @RequestMapping("/admin/au/author/list")
    public String authorList(@PageableDefault(size = 10) Pageable pageable, AuthorSearchCondition condition, Model model) {
        Page<AuthorListDto> page = authorGroupRepository.searchPageAuthorGroup(condition, pageable);
        PagingDto<AuthorListDto> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);
        model.addAttribute("content", "dpcms/au/authorList.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 권한 등록 화면
     * @param condition AuthorSearchCondition 검색 조건
     * @param model Model
     * @return String
     */
    @RequestMapping("/admin/au/author/insertPage")
    public String authorInsertPage(AuthorSearchCondition condition, Model model) {
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/au/authorInsertPage.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 권한 역할 리스트
     * @param pageable Pageable
     * @param condition AuthorSearchCondition 검색 조건
     * @param model Model
     * @return String
     */
    @RequestMapping("/admin/au/author-role/list")
    public String authorGroupRoleListPage(@PageableDefault(size = 10) Pageable pageable, AuthorSearchCondition condition, Model model) {
        Page<AuthorGroupRoleQueryDto> page = authorGroupRoleRepository.searchPageAuthorGroupRole(condition, pageable);
        PagingDto<AuthorGroupRoleQueryDto> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);
        model.addAttribute("content", "dpcms/au/authorGroupRoleList.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 권한 역할 등록 화면
     * @param condition AuthorSearchCondition 검색 조건
     * @param model Model
     * @return String
     */
    @RequestMapping("/admin/au/author-role/insertPage")
    public String authorRoleInsertPage(AuthorSearchCondition condition, Model model) {
        Optional<AuthorGroup> findAuthorGroup = authorGroupRepository.findById(condition.getAuthorGroupId());

        if(findAuthorGroup.isPresent()){
            AuthorGroup authorGroup = findAuthorGroup.get();
            model.addAttribute("authorGroup", authorGroup);
        }

        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/au/authorRoleInsertPage.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

}
