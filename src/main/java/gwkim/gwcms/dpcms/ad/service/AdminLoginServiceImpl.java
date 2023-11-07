package gwkim.gwcms.dpcms.ad.service;

import gwkim.gwcms.dpcms.mm.repository.MemberManageRepository;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

@Service
@RequiredArgsConstructor
public class AdminLoginServiceImpl implements AdminLoginService{
    private final MemberManageRepository memberManageRepository;
    private final SystemManageRepository systemManageRepository;

    /**
     * 시큐리티 전환으로 쓰지 않는 코드입니다.
     *
     * @param request
     * @param memberId
     * @param memberPassword
     */
    @Override
    public void adminLogin(HttpServletRequest request, String memberId, String memberPassword) {
        // 회원의 Salt 조회
//        String pwSalt = memberManageRepository.findById(memberId)
//                .orElseThrow(() -> new MemberNotFoundException(MM_MEMBER_LOGIN_NOT_FOUND.getMessage()))
//                .getPwSalt();

        // 암호화 후 비밀번호 확인
//        String encryptPw = Member.encryptPassword(pwSalt, memberPassword);
//        Member member = memberManageRepository.findByMemberIdAndMemberPassword(memberId, encryptPw)
//                .orElseThrow(() -> new MemberNotFoundException(MM_MEMBER_LOGIN_NOT_FOUND.getMessage()));

//        // 로그인 횟수 체크
//        int loginCnt = member.getLoginCnt();
//        if(loginCnt >= 5)
//            throw new MemberLoginCountOverException(MM_MEMBER_LOGIN_COUNT_OVER.getMessage());
//        // => 로그인 시도 횟수 업데이트 처리 추가해야함
//
//        // 권한 체크
//        List<AuthorDto> membersAuthorList = authorRepository.findMembersAuthorList(memberId)
//                .orElseThrow(() -> new AuthorNotFoundException(AU_AUTHOR_NOT_FOUND.getMessage()));
//
//        // 관리자 권한이 없을 시 403 FORBIDDEN
//        if(!CommonCustomAuth.hasAdminAuth(membersAuthorList))
//            throw new AuthorAdminNotFoundException(AU_AUTHOR_ADMIN_NOT_FOUND.getMessage());
//
//        // 권한을 기준으로 관리 대상인 시스템 목록 조회
//        Map<String, List<AuthorDto>> authorMap = membersAuthorList.stream()
//                .collect(Collectors.groupingBy(author -> author.getSystem().getSystemId()));
//        // 그룹화된 sysId 값을 배열로 가져오기
//        List<String> sysIdList = new ArrayList<>(authorMap.keySet());
//
//        HttpSession session = request.getSession();
//        List<System> listOfSystemToManage = systemManageRepository.findListOfSystemToManage(sysIdList)
//                .orElseThrow(() -> new AuthorAdminNotFoundException(AU_AUTHOR_ADMIN_NOT_FOUND.getMessage()));
//        SystemSessionInfo.setSessionInfo(request, session.getId()+"_sysInfo", listOfSystemToManage);
//
//        // 로그인 정보 세션에 SET
//        LoginInfoVO loginInfoVO = new LoginInfoVO(member, membersAuthorList);
//        SystemSessionInfo.setSessionInfo(request, session.getId()+"_loginInfo_"+loginInfoVO.getSysId(), loginInfoVO);
    }
}
