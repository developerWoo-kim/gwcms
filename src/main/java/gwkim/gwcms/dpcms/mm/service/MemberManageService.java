package gwkim.gwcms.dpcms.mm.service;

import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupMemberDto;
import gwkim.gwcms.dpcms.mm.controller.dto.MemberDto;
import gwkim.gwcms.dpcms.mm.controller.form.MemberInsertForm;

import java.util.List;

public interface MemberManageService {

    /**
     * 관리자가 회원을 생성
     *
     * @param insertForm
     * @return
     */
    String createMember(MemberInsertForm insertForm);

    /**
     * 로그인 시도 횟수 증가
     * @param memberId 회원 아이디
     */
    void incrementLoginFailCount(String memberId);

    /**
     * 로그인 시도 횟수 초기화
     * @param memberId 회원 아이디
     */
    void resetLoginFailCount(String memberId);

    /**
     * 회원 정보 조회 - dto 반환(service layer)
     *
     * @param memberId String : 회원 아이디
     * @return MemberDto
     */
    MemberDto findMemberInfoReturnDto(String memberId);

    /**
     * 회원 그룹 권한 가져오기
     * @param memberId String : 회원 아이디
     * @return List<Long> : AuthorGroupId
     */
     List<Long> findMemberAuthority(String memberId);

    /**
     * 회원의 그룹 권한 Dto반환
     * @param memberId String : 회원 아이디
     * @return List<AuthorGroupMemberDto>
     */
    List<AuthorGroupMemberDto> findAuthorGroupMemberReturnDto(String memberId);
}
