package gwkim.gwcms.dpcms.au.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupDto;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupMemberDto;
import gwkim.gwcms.dpcms.au.domain.AuthorGroup;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupRole;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupRepository;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupRoleRepository;
import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
public class AuthorGroupQueryApiController {
    private final AuthorGroupRepository authorGroupRepository;
    private final AuthorGroupRoleRepository authorGroupRoleRepository;

    /**
     * 권한 설명 중복 체크
     * @param authorGroupName : 권한명
     * @return CommonResponse<String>
     */
    @GetMapping("/admin/au/author/{authorGroupName}/authorGroupName-duplicationCheck")
    public CommonResponse<String> authorGroupName_duplicationCheck(@PathVariable("authorGroupName") String authorGroupName) {
        Optional<AuthorGroup> byAuthorGroupDescription = authorGroupRepository.findByAuthorGroupName(authorGroupName);
        if(byAuthorGroupDescription.isPresent()) {
            return CommonResponse.commonFail(CommonMessage.AU_AUTHOR_GROUP_NAME_IS_DUPLICATION.getMessage());
        }
        return CommonResponse.commonSuccess(CommonMessage.AU_AUTHOR_GROUP_NAME_IS_AVAILABLE.getMessage());
    }

    /**
     * 권한 설명 중복 체크
     * @param authorGroupDescription : 권한 설명
     * @return CommonResponse<String>
     */
    @GetMapping("/admin/au/author/{authorGroupDescription}/authorGroupDescription-duplicationCheck")
    public CommonResponse<String> authorGroupDescription_duplicationCheck(@PathVariable("authorGroupDescription") String authorGroupDescription) {
        Optional<AuthorGroup> byAuthorGroupDescription = authorGroupRepository.findByAuthorGroupDescription(authorGroupDescription);
        if(byAuthorGroupDescription.isPresent()) {
            return CommonResponse.commonFail(CommonMessage.AU_AUTHOR_GROUP_DESCRIPTION_IS_DUPLICATION.getMessage());
        }
        return CommonResponse.commonSuccess(CommonMessage.AU_AUTHOR_GROUP_DESCRIPTION_IS_AVAILABLE.getMessage());
    }

    /**
     * 권한 역할명 중복 체크
     * @param authorGroupRoleName : 권한 역할명
     * @return CommonResponse<String>
     */
    @GetMapping("/admin/au/author-role/{authorGroupRoleName}/roleName-duplicationCheck")
    public CommonResponse<String> roleName_duplicationCheck(@PathVariable("authorGroupRoleName") String authorGroupRoleName) {
        Optional<AuthorGroupRole> byAuthorGroupDescription = authorGroupRoleRepository.findByAuthorGroupRoleName(authorGroupRoleName);
        if(byAuthorGroupDescription.isPresent()) {
            return CommonResponse.commonFail(CommonMessage.AU_AUTHOR_GROUP_ROLE_NAME_IS_DUPLICATION.getMessage());
        }
        return CommonResponse.commonSuccess(CommonMessage.AU_AUTHOR_GROUP_ROLE_NAME_IS_AVAILABLE.getMessage());
    }

    /**
     * 부여 가능한 권한 목록 조회
     * @param memberId String : 회원 아이디
     * @return CommonResponse<List<AuthorGroupMemberDto>>
     */
    @GetMapping("/admin/au/author/{memberId}/availableList")
    public CommonResponse<List<AuthorGroupDto>> findAvailableAuthorGroupList(@PathVariable("memberId") String memberId) {
        List<AuthorGroupDto> availableAuthorList = authorGroupRepository.findAvailableAuthorList(memberId);
        return CommonResponse.commonSuccess(availableAuthorList);
    }

    /**
     * 회원이 소유한 권한 조회
     * @param memberId
     * @return
     */
    @GetMapping("/admin/au/author/{memberId}/member-author")
    public CommonResponse<List<AuthorGroupMemberDto>> findMembersAuthorList(@PathVariable("memberId") String memberId) {
        List<AuthorGroupMemberDto> availableAuthorList = authorGroupRepository.findMembersAuthorList(memberId);
        return CommonResponse.commonSuccess(availableAuthorList);
    }

}
