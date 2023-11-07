package gwkim.gwcms.dpcms.mm.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.mm.controller.form.MemberInsertForm;
import gwkim.gwcms.dpcms.mm.domain.Member;
import gwkim.gwcms.dpcms.mm.repository.MemberManageRepository;
import gwkim.gwcms.dpcms.mm.service.MemberManageService;
import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
public class MemberManageApiController {
    private final MemberManageService memberManageService;
    private final MemberManageRepository memberRepository;

    /**
     * 회원 생성
     *
     * @param insertForm
     * @return
     */
    @PostMapping("/admin/mm/member")
    public CommonResponse<String> saveMember(@Valid MemberInsertForm insertForm) {
        System.out.println(insertForm);
        String member = memberManageService.createMember(insertForm);
        if(member.isEmpty()) return CommonResponse.commonFail(CommonMessage.MM_MEMBER_CREATE_FAIL.getMessage());
        return  CommonResponse.commonSuccess(member, CommonMessage.MM_MEMBER_CREATE_SUCCESS.getMessage());
    }

    /**
     * 회원 아이디 중복 체크
     * @param memberId
     * @return
     */
    @GetMapping("/admin/mm/member/{memberId}/duplicationCheck")
    public CommonResponse<Member> memberIdDuplicationCheck(@PathVariable("memberId") String memberId) {
        Optional<Member> findMember = memberRepository.findById(memberId);

        if(findMember.isPresent()) {
            return CommonResponse.commonFail(CommonMessage.MM_MEMBER_ID_IS_DUPLICATION.getMessage());
        }

        return CommonResponse.commonSuccess(null, CommonMessage.MM_MEMBER_ID_IS_AVAILABLE.getMessage());
    }
}
