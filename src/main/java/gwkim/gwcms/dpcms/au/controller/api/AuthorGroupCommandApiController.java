package gwkim.gwcms.dpcms.au.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.au.controller.form.AuthorGroupInsertForm;
import gwkim.gwcms.dpcms.au.controller.form.AuthorGroupRoleInsertForm;
import gwkim.gwcms.dpcms.au.service.impl.AuthorGroupCommandServiceImpl;
import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequiredArgsConstructor
public class AuthorGroupCommandApiController {
    private final AuthorGroupCommandServiceImpl authorGroupCommandService;

    /**
     * 권한 등록
     * @param form AuthorGroupInsertForm
     * @return CommonResponse<String>
     */
    @PostMapping("/admin/au/author")
    public CommonResponse<String> saveAuthorGroup(@Valid AuthorGroupInsertForm form) {
        authorGroupCommandService.saveAuthorGroup(form);
        return CommonResponse.commonSuccess(CommonMessage.AU_AUTHOR_GROUP_SAVE_SUCCESS.getMessage());
    }

    /**
     * 권한 삭제
     * @param authorGroupId Long
     * @return CommonResponse<String>
     */
    @DeleteMapping("/admin/au/author/{authorGroupId}")
    public CommonResponse<String> deleteAuthorGroup(@PathVariable("authorGroupId") Long authorGroupId) {
        authorGroupCommandService.deleteAuthorGroup(authorGroupId);
        return CommonResponse.commonSuccess(CommonMessage.AU_AUTHOR_GROUP_DELETE_SUCCESS.getMessage());
    }

    /**
     * 권한 역할 등록
     * @param form AuthorGroupInsertForm
     * @return CommonResponse<String>
     */
    @PostMapping("/admin/au/author-role")
    public CommonResponse<String> saveAuthorGroup(@Valid AuthorGroupRoleInsertForm form) {
        authorGroupCommandService.saveAuthorGroupRole(form);
        return CommonResponse.commonSuccess(CommonMessage.AU_AUTHOR_GROUP_ROLE_SAVE_SUCCESS.getMessage());
    }

    /**
     * 권한 역할 삭제
     * @param authorGroupRoleId Long
     * @return CommonResponse<String>
     */
    @DeleteMapping("/admin/au/author-role/{authorGroupRoleId}")
    public CommonResponse<String> deleteAuthorGroupRole(@PathVariable("authorGroupRoleId") Long authorGroupRoleId) {
        authorGroupCommandService.deleteAuthorGroupRole(authorGroupRoleId);
        return CommonResponse.commonSuccess(CommonMessage.AU_AUTHOR_GROUP_DELETE_SUCCESS.getMessage());
    }

    /**
     * 회원에게 권한 부여
     * @param memberId : 회원 아이디
     * @param authorId : 권한 아이디
     * @return
     */
    @PostMapping("/admin/au/author/member-author")
    public CommonResponse<Long> saveMemberAuthor(@RequestParam("memberId") String memberId, @RequestParam("authorId") Long authorId) {
        authorGroupCommandService.giveAuthorityToMember(memberId, authorId);
        return CommonResponse.commonSuccess(CommonMessage.AU_AUTHOR_GROUP_MEMBER_SAVE_SUCCESS.getMessage());
    }

    /**
     * 회원 권한 회수
     * @param authorGroupMemberId Long
     * @return CommonResponse<String>
     */
    @DeleteMapping("/admin/au/author/{authorGroupMemberId}/member-author")
    public CommonResponse<String> deleteMemberAuthor(@PathVariable("authorGroupMemberId") Long authorGroupMemberId) {
        authorGroupCommandService.deleteAuthorGroupMember(authorGroupMemberId);
        return CommonResponse.commonSuccess(CommonMessage.AU_AUTHOR_MEMBER_DELETE_SUCCESS.getMessage());
    }

}
