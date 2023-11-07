package gwkim.gwcms.dpcms.mm.service.impl;

import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupMemberDto;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupMember;
import gwkim.gwcms.dpcms.mm.controller.dto.MemberDto;
import gwkim.gwcms.dpcms.mm.controller.form.MemberInsertForm;
import gwkim.gwcms.dpcms.mm.domain.LoginPreventStatus;
import gwkim.gwcms.dpcms.mm.domain.Member;
import gwkim.gwcms.dpcms.mm.repository.MemberManageRepository;
import gwkim.gwcms.dpcms.mm.service.MemberManageService;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class MemberManageServiceImpl implements MemberManageService {
    private final MemberManageRepository memberRepository;
    private final SystemManageRepository systemManageRepository;

    @Value("${security.login.fail.imsi-lock.max-count}")
    private Integer imsiLockMaxCount;

    @Override
    @Transactional
    public String createMember(MemberInsertForm insertForm) {
        System systemManage = systemManageRepository.findById(insertForm.getSystemId()).orElseThrow();

        Member member = Member.createMember(insertForm, systemManage);
        Member saveMember = memberRepository.save(member);
        return saveMember.getMemberId();
    }

    /**
     * 로그인 시도 횟수 증가
     * @param memberId 회원 아이디
     */
    @Transactional
    public void incrementLoginFailCount(String memberId) {
        Member member = memberRepository.findById(memberId).orElseThrow();
        // 로그인 시도 횟수 증가
        member.incrementLoginFailCount();
        // 로그인 최대 시도 횟수에 도달하면 계정 잠금
        if(member.getLoginCnt() >= imsiLockMaxCount) {
            member.setLoginPreventStatus(LoginPreventStatus.LOCKED);
        }
    }

    /**
     * 로그인 시도 횟수 초기화
     * @param memberId 회원 아이디
     */
    @Transactional
    public void resetLoginFailCount(String memberId) {
        Member member = memberRepository.findById(memberId).orElseThrow();
        // 로그인 시도 횟수 초기화
        member.resetLoginFailCount();
    }

    /**
     * 회원 정보 조회 - dto 반환(service layer)
     *
     * @param memberId String : 회원 아이디
     * @return MemberDto
     */
    public MemberDto findMemberInfoReturnDto(String memberId) {
        Member findMember = memberRepository.findById(memberId)
                .orElseThrow(() -> new UsernameNotFoundException(CommonMessage.MM_MEMBER_LOGIN_NOT_FOUND.getMessage()));
        MemberDto member = new MemberDto(findMember);
        return member;
    }

    /**
     * 회원 그룹 권한 가져오기
     * @param memberId String : 회원 아이디
     * @return List<Long> : AuthorGroupId
     */
    public List<Long> findMemberAuthority(String memberId) {
        Member member = memberRepository.findById(memberId).orElseThrow();
        return member.getAuthorGroupMemberList().stream()
                .map(s -> s.getAuthorGroup().getAuthorGroupId())
                .collect(Collectors.toList());
    }

    /**
     * 회원의 그룹 권한 Dto반환
     * @param memberId String : 회원 아이디
     * @return List<AuthorGroupMemberDto>
     */
    public List<AuthorGroupMemberDto> findAuthorGroupMemberReturnDto(String memberId) {
        Member member = memberRepository.findById(memberId).orElseThrow();

        List<AuthorGroupMember> authorGroupMemberList = member.getAuthorGroupMemberList();
        List<AuthorGroupMemberDto> authorGroupMemberDtoList = new ArrayList<>();
        if(!authorGroupMemberList.isEmpty()) {
            for (AuthorGroupMember authorGroupMember : authorGroupMemberList) {
                authorGroupMemberDtoList.add(new AuthorGroupMemberDto(authorGroupMember));
            }
        }
        return authorGroupMemberDtoList;
    }


}
