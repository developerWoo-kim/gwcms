package gwkim.gwcms.dpcms.tm.controller;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.cmm.utils.paging.PagingDto;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.tm.domain.Template;
import gwkim.gwcms.dpcms.tm.repository.TemplateManageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class TemplateManageController {
    private final TemplateManageRepository templateManageRepository;

    /**
     * 템플릿 리스트 조회 페이지
     *
     * @param condition SearchCondition
     * @param pageable Pageable
     * @param model Model
     * @return String
     */
    @RequestMapping("/admin/tm/template/list")
    public String templateListPage(SearchCondition condition, @PageableDefault(size = 10) Pageable pageable, Model model) {
        Page<Template> page = templateManageRepository.searchTemplateListPaging(condition, pageable);
        PagingDto<Template> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);
        model.addAttribute("content", "dpcms/tm/templatePageList.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 템플릿 리스트 조회 페이지
     *
     * @param condition SearchCondition
     * @param model Model
     * @return String
     */
    @RequestMapping("/admin/tm/template/insertPage")
    public String templateListPage(SearchCondition condition, Model model) {

        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/tm/templateInsertPage.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }


    @RequestMapping("/admin/tm/template/list-view")
    public String findTemplateListView(Model model) {
        List<Template> allList = templateManageRepository.findAll();

        model.addAttribute("templateList", allList);

        return "dpcms/tm/tmplatUseList";
    }
}
