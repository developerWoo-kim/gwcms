package gwkim.gwcms.dpcms.mm.controller;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.cmm.utils.paging.PagingDto;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCode;
import gwkim.gwcms.dpcms.cd.repository.CommonDetailCodeRepository;
import gwkim.gwcms.dpcms.mm.controller.dto.MemberDto;
import gwkim.gwcms.dpcms.mm.controller.dto.MemberManageListDto;
import gwkim.gwcms.dpcms.mm.controller.form.MemberSearchCondition;
import gwkim.gwcms.dpcms.mm.repository.MemberManageRepository;
import gwkim.gwcms.dpcms.mm.service.MemberManageService;
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
public class MemberManageController {
    private final CommonDetailCodeRepository commonDetailCodeRepository;
    private final SystemManageRepository systemManageRepository;
    private final MemberManageRepository memberManageRepository;
    private final MemberManageService memberManageService;

    /**
     * 회원 관리 목록 조회
     *
     * @param model
     * @return
     */
    @RequestMapping("/admin/mm/member/manageList")
    public String memberManageList(SearchCondition condition, @PageableDefault(size = 10) Pageable pageable, Model model) {
        Page<MemberManageListDto> page = memberManageRepository.findMemberManageListPage(condition, pageable);
        PagingDto<MemberManageListDto> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);
        model.addAttribute("content", "dpcms/mm/memberManageList.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 회원 관리 상세 화면
     *
     * @param condition MemberSearchCondition
     * @param model Model
     * @return String
     */
    @RequestMapping("/admin/mm/member/manageDetail")
    public String memberManageDetail(MemberSearchCondition condition, Model model) {
        MemberDto member = memberManageService.findMemberInfoReturnDto(condition.getMemberId());

        model.addAttribute("member", member);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/mm/memberManageDetailPage.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 회원 생성 화면
     *
     * @param condition
     * @param model
     * @return
     */
    @RequestMapping("/admin/mm/member/insertPage")
    public String memberInsertPage(SearchCondition condition, Model model) {

        // 회원 유형 코드 조회
        List<CommonDetailCode> memberTypeList = commonDetailCodeRepository.findById_CommonCode("memberType");
        // 시스템 목록 조회
        List<System> systemList = systemManageRepository.findAll();

        model.addAttribute("systemList", systemList);
        model.addAttribute("memberTypeList", memberTypeList);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/mm/memberInsertPage.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 회원 권한 부여 화면
     *
     * @param condition
     * @param model
     * @return
     */
    @RequestMapping("/admin/mm/memberAuthor/insertPage")
    public String memberAuthorInsertPage(MemberSearchCondition condition, Model model) {

        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/mm/memberAuthorInsertPage.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }
}
