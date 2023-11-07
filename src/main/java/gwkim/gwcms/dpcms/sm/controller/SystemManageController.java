package gwkim.gwcms.dpcms.sm.controller;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.cmm.utils.paging.PagingDto;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
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

import java.util.List;

@Controller
@RequiredArgsConstructor
public class SystemManageController {
    private final SystemManageRepository systemManageRepository;
    private final CommonDetailCodeRepository commonDetailCodeRepository;

    /**
     * 시스템 관리 목록 화면
     *
     * @param condition
     * @param pageable
     * @param model
     * @return
     */
    @RequestMapping("/admin/sm/system/list")
    public String systemList(SearchCondition condition, @PageableDefault(size = 10) Pageable pageable, Model model) {
        Page<System> page = systemManageRepository.searchSystemManagePageList(condition, pageable);
        PagingDto<System> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);
        model.addAttribute("content", "dpcms/sm/systemList.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 시스템 등록 화면
     *
     * @param condition SearchCondition
     * @param model Model
     * @return String
     */
    @RequestMapping("/admin/sm/system/insertPage")
    public String systemInsertPage(SearchCondition condition, Model model){
        List<CommonDetailCode> systemTypeList = commonDetailCodeRepository.findById_CommonCode("systemType");

        model.addAttribute("systemTypeList", systemTypeList);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/sm/systemInsertPage.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }
}
