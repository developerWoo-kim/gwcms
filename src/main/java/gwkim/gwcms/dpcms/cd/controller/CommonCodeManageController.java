package gwkim.gwcms.dpcms.cd.controller;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.cmm.utils.paging.PagingDto;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.cd.controller.dto.CommonDetailCodeQueryDto;
import gwkim.gwcms.dpcms.cd.CmmnDetailCodeSearchCondition;
import gwkim.gwcms.dpcms.cd.domain.CommonCode;
import gwkim.gwcms.dpcms.cd.repository.CommonCodeRepository;
import gwkim.gwcms.dpcms.cd.service.CommonCodeService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *	Class Name	: CommonCodeManageController.java
 *	Description	: 공통 코드 관리 View Controller
 *	Modification Information
 *	수정일		수정자		수정 내용
 *	-----------	----------	---------------------------
 *	2023.08.25	gwkim		최초 생성
 *
 *
 *	@author  gwkim
 *	@since  2023.08.25
 *	@version 1.0
 */
@Controller
@RequiredArgsConstructor
public class CommonCodeManageController {
    private final CommonCodeService commonCodeService;
    private final CommonCodeRepository commonCodeRepository;

    /**
     * 공통 코드 조회 페이지
     *
     * @param condition
     * @param pageable
     * @param model
     * @return
     */
    @RequestMapping("/admin/cd/commonCode/list")
    public String cmmnCodeListPage(SearchCondition condition, @PageableDefault(size = 10) Pageable pageable, Model model) {
        Page<CommonCode> page = commonCodeRepository.searchPageSimple(condition, pageable);
        PagingDto<CommonCode> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);
        model.addAttribute("content", "dpcms/cd/cmmnCodeList.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 공통 코드 등록 화면
     *
     * @param condition
     * @param model
     * @return
     */
    @RequestMapping("/admin/cd/commonCode/insertPage")
    public String cmmnCodeInsertPage(SearchCondition condition, Model model) {
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/cd/cmmnCodeInsertPage.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 공통 코드 수정 화면
     *
     * @param cmmnCode
     * @param condition
     * @param model
     * @return
     */
    @RequestMapping("/admin/cd/commonCode/{cmmnCode}/updatePage")
    public String cmmnCodeUpdatePage(HttpServletResponse response, @PathVariable("cmmnCode") String cmmnCode,
                             SearchCondition condition, Model model) {
        CommonCode commonCode = commonCodeRepository.findById(cmmnCode).orElseThrow();

        model.addAttribute("commonCode", commonCode);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/cd/cmmnCodeUpdatePage.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 상세 공통 코드 조회 페이지
     *
     * @param condition
     * @param pageable
     * @param model
     * @return
     *
     */
    @RequestMapping("/admin/cd/commonDetailCode/list")
    public String cmmnCodeDetailListPage(CmmnDetailCodeSearchCondition condition,
                                         @PageableDefault(size = 10) Pageable pageable, Model model) {
        Page<CommonDetailCodeQueryDto> page = commonCodeRepository.searchPageCommonCodeDetail(condition, pageable);
        PagingDto<CommonDetailCodeQueryDto> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

        List<CommonCode> commonCodeList = commonCodeRepository.findAll();

        model.addAttribute("commonCodeList", commonCodeList);
        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);
        model.addAttribute("content", "dpcms/cd/cmmnDetailCodeList.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 공통 상세 코드 등록 화면
     *
     * @param condition
     * @param model
     * @return
     */
    @RequestMapping("/admin/cd/commonDetailCode/insertPage")
    public String cmmnCodeDetailInsertPage(CmmnDetailCodeSearchCondition condition, Model model) {

        List<CommonCode> commonCodeList = commonCodeRepository.findAll();

        model.addAttribute("commonCodeList", commonCodeList);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/cd/cmmnDetailCodeInsert.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

}
