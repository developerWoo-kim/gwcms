package gwkim.gwcms;


import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.dpcms.au.domain.AuthorGroup;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupMember;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupMemberRepository;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupRepository;
import gwkim.gwcms.dpcms.bm.domain.Board;
import gwkim.gwcms.dpcms.bm.domain.Post;
import gwkim.gwcms.dpcms.bm.repository.BoardRepository;
import gwkim.gwcms.dpcms.bm.repository.PostRepository;
import gwkim.gwcms.dpcms.cd.domain.CommonCode;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCode;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCodeId;
import gwkim.gwcms.dpcms.cd.repository.CommonCodeRepository;
import gwkim.gwcms.dpcms.cd.repository.CommonDetailCodeRepository;
import gwkim.gwcms.dpcms.mm.domain.LoginPreventStatus;
import gwkim.gwcms.dpcms.mm.domain.Member;
import gwkim.gwcms.dpcms.mm.domain.MemberStatus;
import gwkim.gwcms.dpcms.mm.domain.MemberType;
import gwkim.gwcms.dpcms.mm.repository.MemberManageRepository;
import gwkim.gwcms.dpcms.mn.controller.api.MenuManageApiService;
import gwkim.gwcms.dpcms.mn.controller.form.MenuInsertForm;
import gwkim.gwcms.dpcms.mn.domain.Menu;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
import gwkim.gwcms.dpcms.tm.domain.Template;
import gwkim.gwcms.dpcms.tm.repository.TemplateManageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.time.LocalDate;

@Component
@RequiredArgsConstructor
public class InitDb {
    private final InitService initService;

    /**
     * 개발 & 운영 배포 시 주석 해제 X
     * 로컬 메모리 DB에서 테스트 시
     * 주석 제거하고 사용 가능
     */
    @PostConstruct
    public void init() {
//        /** 공통 코드 */
//        initService.insertCommonCode();
//        /** 공통 상세 코드 */
//        initService.insertCommonDetailCode();
//        /** 시스템 */
//        initService.insertSystem();
//        /** 메뉴 */
//        initService.insertMenu();
//        /** 권한 */
//        initService.insertAuthor();
//        /** 템플릿 */
//        initService.insertTemplate();
//        /** 회원 */
//        initService.insertMember();
//        /** 게시판 게시물 */
    }

    /**
     * 기초 데이터 삽입
     */
    @Component
    @Transactional
    @RequiredArgsConstructor
    public static class InitService {
        private final CommonCodeRepository commonCodeRepository;
        private final CommonDetailCodeRepository commonDetailCodeRepository;
        private final SystemManageRepository systemManageRepository;
        private final MenuManageApiService menuManageApiService;
        private final AuthorGroupRepository authorGroupRepository;
        private final AuthorGroupMemberRepository authorGroupMemberRepository;
        private final TemplateManageRepository templateManageRepository;
        private final MemberManageRepository memberManageRepository;
        private final BoardRepository boardRepository;
        private final PostRepository postRepository;

        /**
         * 공통 코드 : tb_cd_common_code
         */
        public void insertCommonCode() {
            commonCodeRepository.save(createCommonCode("systemType", "홈페이지 타입", "홈페이지 타입", "Y"));
            commonCodeRepository.save(createCommonCode("memberType", "회원구분", "회원구분", "Y"));
            commonCodeRepository.save(createCommonCode("menuType", "메뉴구분", "메뉴구분", "Y"));
            commonCodeRepository.save(createCommonCode("menuUrl", "메뉴링크", "메뉴링크", "Y"));
            commonCodeRepository.save(createCommonCode("boardType", "게시판타입", "게시판타입", "Y"));
        }

        public CommonCode createCommonCode(String cmmnCode, String cmmnCodeNm, String cmmnCodeDc, String useAt) {
            return new CommonCode().builder()
                    .commonCode(cmmnCode)
                    .commonCodeName(cmmnCodeNm)
                    .commonCodeDescription(cmmnCodeDc)
                    .useAt(useAt)
                    .build();
        }

        /**
         * 공통 상세 코드 : tb_cd_common_detail_code
         */
        public void insertCommonDetailCode() {
            CommonCode commonCode1 = commonCodeRepository.findById("memberType").orElseThrow();
            commonDetailCodeRepository.save(
                    createCommonDetailCode(commonCode1, "ADMIN", "관리자", "관리자", 1, "Y")
            );
            commonDetailCodeRepository.save(
                createCommonDetailCode(commonCode1, "BASIC", "일반회원", "일반회원", 2, "Y")
            );

            CommonCode commonCode2 = commonCodeRepository.findById("systemType").orElseThrow();
            commonDetailCodeRepository.save(
                createCommonDetailCode(commonCode2, "INSTT", "일반기관", "일반기관(교육기관 외)", 1, "Y")
            );
            commonDetailCodeRepository.save(
                createCommonDetailCode(commonCode2, "ETC", "기타", "기타", 2, "Y")
            );

            CommonCode commonCode3 = commonCodeRepository.findById("menuType").orElseThrow();
            commonDetailCodeRepository.save(
                createCommonDetailCode(commonCode3, "MENU", "메뉴", "메뉴", 1, "Y")
            );
            commonDetailCodeRepository.save(
                createCommonDetailCode(commonCode3, "BOARD", "게시판", "게시판", 2, "Y")
            );
            commonDetailCodeRepository.save(
                createCommonDetailCode(commonCode3, "CONTENT", "콘텐츠", "콘텐츠", 3, "Y")
            );
            commonDetailCodeRepository.save(
                createCommonDetailCode(commonCode3, "LINK", "링크", "링크", 4, "Y")
            );

            CommonCode commonCode4 = commonCodeRepository.findById("boardType").orElseThrow();
            commonDetailCodeRepository.save(
                    createCommonDetailCode(commonCode4, "NORMAL", "일반게시판(자료탑재형)", "일반게시판(자료탑재형)", 1, "Y")
            );
            commonDetailCodeRepository.save(
                    createCommonDetailCode(commonCode4, "IMAGE", "사진 게시판", "사진 게시판", 2, "Y")
            );

        }

        public CommonDetailCode createCommonDetailCode(CommonCode commonCode, String cmmnDetailCode, String cmmnDetailCodeNm, String cmmnDetailCodeDc, int cmmnDetailCodeOrdr, String useAt) {
            CommonDetailCode build = new CommonDetailCode().builder()
                    .commonCode(commonCode)
                    .commonDetailCodeDescription(cmmnDetailCodeDc)
                    .commonDetailCodeName(cmmnDetailCodeNm)
                    .sortOrder(cmmnDetailCodeOrdr)
                    .useAt(useAt)
                    .build();
            CommonDetailCodeId commonDetailCodeId = new CommonDetailCodeId();
            commonDetailCodeId.setCommonDetailCode(cmmnDetailCode);
            build.setId(commonDetailCodeId);
            return build;
        }

        /**
         * 시스템 : tb_sm_system
         */
        public void insertSystem() {
            systemManageRepository.save(
                    createSystem("admin", "관리자페이지", "ADMIN", "O", "00000", "ETC")
            );
        }

        public System createSystem(String systemId, String systemName, String systemType, String systemStatus, String templateId, String templateType) {
            return new System().builder()
                    .systemId(systemId)
                    .systemName(systemName)
                    .systemType(systemType)
                    .systemStatus(systemStatus)
                    .templateId(templateId)
                    .templateType(templateType)
                    .build();
        }

        public void insertMenu() {
            // ====================================== 1차 ========================================= //

            MenuInsertForm menuInsertForm1 = createMenuInsertForm("시스템 관리", "MENU", "#", 1, "", null, null, "N",
                    null, null, "Y", 1, "N", "admin");
            Menu menu1 = menuManageApiService.createMenu(menuInsertForm1);

            MenuInsertForm menuInsertForm2 = createMenuInsertForm("홈페이지 관리", "LINK", "/sm/system/list", 2, "", menu1.getMenuId(), menu1.getMenuName(), "N",
                    null, null, "Y", 2, "N", "admin");
            menuManageApiService.createMenu(menuInsertForm2);

            MenuInsertForm menuInsertForm3 = createMenuInsertForm("메뉴 관리", "LINK", "/mn/menu/sysList", 2, "", menu1.getMenuId(), menu1.getMenuName(), "N",
                    null, null, "Y", 3, "N", "admin");
            menuManageApiService.createMenu(menuInsertForm3);

            MenuInsertForm menuInsertForm4 = createMenuInsertForm("템플릿 관리", "LINK", "/tm/template/list", 2, "", menu1.getMenuId(), menu1.getMenuName(), "N",
                    null, null, "Y", 4, "N", "admin");
            menuManageApiService.createMenu(menuInsertForm4);

            // ====================================== 2차 ========================================= //
            MenuInsertForm menuInsertForm5 = createMenuInsertForm("서비스 관리", "MENU", "#", 1, "", null, null, "N",
                    null, null, "Y", 5, "N", "admin");
            Menu menu2 = menuManageApiService.createMenu(menuInsertForm5);

            MenuInsertForm menuInsertForm6 = createMenuInsertForm("게시판 관리", "LINK", "/bm/board/sysList", 2, "", menu2.getMenuId(), menu2.getMenuName(), "N",
                    null, null, "Y", 6, "N", "admin");
            menuManageApiService.createMenu(menuInsertForm6);

            // ====================================== 3차 ========================================= //

            MenuInsertForm menuInsertForm7 = createMenuInsertForm("부가 기능 관리", "MENU", "#", 1, "", null, null, "N",
                    null, null, "Y", 7, "N", "admin");
            Menu menu3 = menuManageApiService.createMenu(menuInsertForm7);

            MenuInsertForm menuInsertForm8 = createMenuInsertForm("설문 관리", "LINK", "/sv/survey/manage-list", 2, "", menu3.getMenuId(), menu3.getMenuName(), "N",
                    null, null, "Y", 8, "N", "admin");
            menuManageApiService.createMenu(menuInsertForm8);

            // ====================================== 4차 ========================================= //

            MenuInsertForm menuInsertForm9 = createMenuInsertForm("회원 관리", "MENU", "#", 1, "", null, null, "N",
                    null, null, "Y", 9, "N", "admin");
            Menu menu4 = menuManageApiService.createMenu(menuInsertForm9);

            MenuInsertForm menuInsertForm10 = createMenuInsertForm("회원 관리", "LINK", "/mm/member/manageList", 2, "", menu4.getMenuId(), menu4.getMenuName(), "N",
                    null, null, "Y", 10, "N", "admin");
            menuManageApiService.createMenu(menuInsertForm10);

            // ====================================== 5차 ========================================= //

            MenuInsertForm menuInsertForm11 = createMenuInsertForm("코드/권한 관리", "MENU", "#", 1, "", null, null, "N",
                    null, null, "Y", 11, "N", "admin");
            Menu menu5 = menuManageApiService.createMenu(menuInsertForm11);

            MenuInsertForm menuInsertForm12 = createMenuInsertForm("권한 관리", "LINK", "/au/author/list", 2, "", menu5.getMenuId(), menu5.getMenuName(), "N",
                    null, null, "Y", 12, "N", "admin");
            menuManageApiService.createMenu(menuInsertForm12);

            MenuInsertForm menuInsertForm13 = createMenuInsertForm("공통코드 관리", "LINK", "/cd/commonCode/list", 2, "", menu5.getMenuId(), menu5.getMenuName(), "N",
                    null, null, "Y", 13, "N", "admin");
            menuManageApiService.createMenu(menuInsertForm13);
        }

        public MenuInsertForm createMenuInsertForm(String menuName, String menuType, String menuUrl, int menuLevel, String menuAuthor, Long upperMenuId,
                                                   String upperMenuName, String contentAt, String contentId, String connectMenuId, String useAt,
                                                   int sortOrder, String newWindowAt, String systemId) {
            MenuInsertForm form = new MenuInsertForm();
            form.setMenuName(menuName); form.setMenuType(menuType); form.setMenuUrl(menuUrl);
            form.setMenuLevel(menuLevel); form.setMenuAuthor(menuAuthor); form.setUpperMenuId(upperMenuId);
            form.setUpperMenuName(upperMenuName); form.setContentAt(contentAt); form.setContentId(contentId);
            form.setContentId(contentId); form.setConnectMenuId(connectMenuId); form.setUseAt(useAt);
            form.setSortOrder(sortOrder); form.setNewWindowAt(newWindowAt); form.setSystemId(systemId);
            return form;
        }



        /**
         * 권한 : tb_au_author_group
         */
        public void insertAuthor() {
            authorGroupRepository.save(createAuthor("MASTER", "시스템 마스터"));
            authorGroupRepository.save(createAuthor("SYSTEM_ADMIN", "시스템 관리자"));
            authorGroupRepository.save(createAuthor("ADMIN", "관리자"));
        }

        public AuthorGroup createAuthor(String authorCode, String authorNm) {
            AuthorGroup author = new AuthorGroup();
            author.setAuthorGroupName(authorCode);
            author.setAuthorGroupDescription(authorNm);
            return author;
        }

        /**
         * 템플릿 : tb_tm_template
         */
        public void insertTemplate() {
            templateManageRepository.save(createTemplate("01001", "테스트 템플릿", "test", "sds", "Y"));
        }

        public Template createTemplate(String templateId, String templateName, String templateType, String templateDescription, String useAt) {
            return new Template().builder()
                    .templateId(templateId)
                    .templateName(templateName)
                    .templateType(templateType)
                    .templateDescription(templateDescription)
                    .useAt(useAt)
                    .build();
        }

        /**
         * 회원 : tb_mm_member
         */
        public void insertMember() {
            System system = systemManageRepository.findById("admin").orElseThrow();
            Member member = memberManageRepository.save(
                    createMember("admin", "관리자", "gunwo151!", "00000000", "gunwo151@gmail.com",
                            "", "", "ADMIN", system)
            );

            AuthorGroup author = authorGroupRepository.findByAuthorGroupName("MASTER").orElseThrow();
            authorGroupMemberRepository.save(AuthorGroupMember.createAuthorGroupMember(member, author));
        }

        public Member createMember(String memberId, String memberName, String memberPassword, String telNo, String email, String ciKey,
                                   String diKey, String type, System system) {
            String pwSalt = CommonUtil.getSalt();

            Member buildMember = new Member().builder()
                    .memberId(memberId)
                    .memberName(memberName)
                    .telNo(telNo)
                    .email(email)
                    .passwordUpdateDate(LocalDate.now())
                    .loginPreventStatus(LoginPreventStatus.NORMAL)
                    .build();
            // 비밀번호 암호화
            buildMember.setMemberPassword(Member.encryptPassword(memberPassword));

            MemberType memberType = new MemberType().builder()
                    .memberType(type)
                    .confirmAt("N")
                    .memberStatus(MemberStatus.ACTIVE)
                    .system(system)
                    .build();
            buildMember.addMemberType(memberType);

            return buildMember;
        }

        /**
         * 게시판 : tb_bm_board
         * 게시물 : tb_bm_post
         */
        public void insertBoard() {
            System system = systemManageRepository.findById("admin").orElseThrow();
            Board board = boardRepository.save(createBoard(system, "test"));
            postRepository.save(createPost(board, "테스트 게시물"));
        }

        public Board createBoard(System system, String boardName) {
            return new Board().builder()
                    .system(system)
                    .boardName(boardName)
                    .build();
        }

        public Post createPost(Board board, String postTitle) {
            Post post = new Post();
            post.setBoard(board);
            post.setPostTitle(postTitle);
            return post;
        }
    }
}
