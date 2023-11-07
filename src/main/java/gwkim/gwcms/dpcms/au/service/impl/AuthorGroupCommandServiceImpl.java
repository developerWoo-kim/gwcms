package gwkim.gwcms.dpcms.au.service.impl;

import gwkim.gwcms.dpcms.au.controller.form.AuthorGroupInsertForm;
import gwkim.gwcms.dpcms.au.controller.form.AuthorGroupRoleInsertForm;
import gwkim.gwcms.dpcms.au.domain.AuthorGroup;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupMember;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupRole;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupMemberRepository;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupRepository;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupRoleRepository;
import gwkim.gwcms.dpcms.mm.domain.Member;
import gwkim.gwcms.dpcms.mm.repository.MemberManageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@RequiredArgsConstructor
public class AuthorGroupCommandServiceImpl {
    private final AuthorGroupRepository authorGroupRepository;
    private final AuthorGroupRoleRepository authorGroupRoleRepository;
    private final AuthorGroupMemberRepository authorGroupMemberRepository;
    private final MemberManageRepository memberManageRepository;

    /**
     * 권한 그룹 저장
     * @param form AuthorGroupInsertForm
     */
    public void saveAuthorGroup(AuthorGroupInsertForm form) {
        AuthorGroup authorGroup = AuthorGroup.createAuthorGroup(form);
        authorGroupRepository.save(authorGroup);
    }

    /**
     * 권한 그룹 삭제
     * @param authorGroupId Long
     */
    public void deleteAuthorGroup(Long authorGroupId) {
        authorGroupRepository.deleteById(authorGroupId);
    }

    /**
     * 권한 역할 저장
     * @param form AuthorGroupRoleInsertForm
     */
    public void saveAuthorGroupRole(AuthorGroupRoleInsertForm form) {
        AuthorGroup authorGroup = authorGroupRepository.findById(form.getAuthorGroupId()).orElseThrow();

        AuthorGroupRole authorGroupRole = AuthorGroupRole.createAuthorGroupRole(form, authorGroup);
        authorGroupRoleRepository.save(authorGroupRole);
    }

    /**
     * 권한 역할 삭제
     * @param authorGroupRoleId Long
     */
    public void deleteAuthorGroupRole(Long authorGroupRoleId) {
        authorGroupRoleRepository.deleteById(authorGroupRoleId);
    }

    /**
     * 회원 권한 부여
     * @param memberId String
     * @param authorId Long
     */
    public void giveAuthorityToMember(String memberId, Long authorId) {
        Member member = memberManageRepository.findById(memberId).orElseThrow();
        AuthorGroup authorGroup = authorGroupRepository.findById(authorId).orElseThrow();

        AuthorGroupMember authorGroupMember = AuthorGroupMember.createAuthorGroupMember(member, authorGroup);

        authorGroupMemberRepository.save(authorGroupMember);
    }

    /**
     * 회원 권한 회수
     * @param memberAuthorId
     */
    public void deleteAuthorGroupMember(Long memberAuthorId) {
        authorGroupMemberRepository.deleteById(memberAuthorId);
    }
}
