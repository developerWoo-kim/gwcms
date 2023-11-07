package gwkim.gwcms.cmm.utils.reponse;

import lombok.Getter;

/**
 *	Class Name	: CommonMessage.java
 *	Description	: 공통 메시지 enum 클래스
 *	Modification Information
 *	수정일		수정자		수정 내용
 *	-----------	----------	---------------------------
 *	2023.08.14	gwkim		최초 생성
 *
 *
 *	@author  gwkim
 *  @since  2023.08.14
 *	@version 1.0
 */
@Getter
public enum CommonMessage {
    //== 공통 메시지 ==//
    CMM_MESSAGE_INVALID_VALUE("필수 값이 누락 되었습니다."),
    CMM_MESSAGE_REG_SUCCESS("등록이 완료되었습니다."),
    CMM_MESSAGE_REG_FAIL("등록에 실패하였습니다."),
    CMM_MESSAGE_UPDATE_SUCCESS("수정이 완료되었습니다."),
    CMM_MESSAGE_UPDATE_FAIL("수정이 실패하였습니다."),
    CMM_MESSAGE_DELETE_SUCCESS("삭제가 완료되었습니다."),
    CMM_MESSAGE_DELETE_FAIL("삭제가 실패하였습니다."),

    //== CD_CMMNCODE : 공통 코드 ==//
    CD_CMMNCODE_NOT_FOUND("공통 코드가 존재하지 않습니다."),
    CD_CMMNCODE_USE_POSSIBLE("사용이 가능 합니다."),
    CD_CMMNCODE_IS_DUPLICATION("이미 존재 하는 코드 입니다.\n다른 코드를 이용 하세요."),

    //== AU_AUTHOR_GROUP : 권한 ==//
    AU_AUTHOR_GROUP_NAME_IS_AVAILABLE("사용 가능한 권한명 입니다."),
    AU_AUTHOR_GROUP_DESCRIPTION_IS_AVAILABLE("사용 가능한 권한설명 입니다."),
    AU_AUTHOR_GROUP_NAME_IS_DUPLICATION("이미 존재하는 권한 입니다."),
    AU_AUTHOR_GROUP_DESCRIPTION_IS_DUPLICATION("이미 존재하는 권한설명 입니다."),
    AU_AUTHOR_GROUP_SAVE_SUCCESS("권한이 등록이 완료되었습니다."),
    AU_AUTHOR_GROUP_DELETE_SUCCESS("권한이 삭제되었습니다."),
    AU_AUTHOR_GROUP_ROLE_NAME_IS_AVAILABLE("사용 가능한 역할명 입니다."),
    AU_AUTHOR_GROUP_ROLE_NAME_IS_DUPLICATION("이미 존재하는 역할 입니다."),
    AU_AUTHOR_GROUP_ROLE_SAVE_SUCCESS("권한 역할 등록이 완료되었습니다."),

    //== MM_MEMBER : 회원 ==//
    MM_MEMBER_ID_IS_DUPLICATION("이미 존재 하는 아이디 입니다."),
    MM_MEMBER_ID_IS_AVAILABLE("사용 가능한 아이디 입니다."),
    MM_MEMBER_CREATE_SUCCESS("회원이 생성되었습니다."),
    MM_MEMBER_CREATE_FAIL("회원 생성에 실패하였습니다."),
    MM_MEMBER_LOGIN_NOT_FOUND("아이디 또는 비밀번호를 잘못 입력하셨습니다.\n입력하신 내용을 다시 확인해주세요."),
    MM_MEMBER_LOGIN_COUNT_OVER("잘못된 5회 로그인 시도로 인해 계정이 잠겼습니다."),

    //== MM_AUTHOR : 권한 ==//
    //== MM_AUTHOR_GROUP_MEMBER : 회원 권한 ==//
    AU_AUTHOR_GROUP_MEMBER_SAVE_SUCCESS("권한이 부여되었습니다."),
    AU_AUTHOR_MEMBER_SAVE_FAIL("권한 부여에 실패하였습니다."),
    AU_AUTHOR_MEMBER_DELETE_SUCCESS("권한이 회수되었습니다."),
    AU_AUTHOR_NOT_FOUND("권한이 존재하지 않습니다."),
    AU_AUTHOR_ADMIN_NOT_FOUND("관리자 권한이 없습니다."),

    //== SM_SYSTEM : 시스템 관리 ==//
    SM_SYSTEM_ID_IS_AVAILABLE("사용 가능한 홈페이지 아이디 입니다."),
    SM_SYSTEM_ID_NM_AVAILABLE("사용 가능한 홈페이지명 입니다."),
    SM_SYSTEM_ID_IS_DUPLICATION("이미 존재하는 홈페이지 아이디 입니다.\n다른 아이디를 이용 하세요."),
    SM_SYSTEM_NM_IS_DUPLICATION("이미 존재하는 홈페이지명 입니다.\n다른 홈페이지명을 이용 하세요."),
    SM_SYSTEM_SAVE_SUCCESS("홈페이지 등록이 완료되었습니다."),

    //== MN_MENU : 메뉴 관리 ==//
    MN_MENU_AUTHOR_NOT_FOUND("권한이 존재하지 않습니다."),
    MN_MENU_SORT_SAVE_SUCCESS("메뉴 순서가 변경되었습니다."),
    MN_MENU_SAVE_SUCCESS("메뉴가 추가 되었습니다."),
    MN_MENU_UPDATE_SUCCESS("메뉴가 수정 되었습니다."),
    MN_MENU_DELETE_SUCCESS("메뉴가 삭제 되었습니다."),

    //== BM_BOARD : 게시판 관리 ==//
    BM_BOARD_SAVE_SUCCESS("게시판이 추가되었습니다."),

    //== BM_POST : 게시물 관리 ==//
    BM_POST_SAVE_SUCCESS("게시물이 등록되었습니다."),
    BM_POST_UPDATE_SUCCESS("게시물이 수정되었습니다."),

    //== FM_FILE : 파일 관리 ==//
    FM_FILE_DELETE_SUCCESS("파일이 삭제되었습니다."),

    //== SV_SURVEY : 파일 관리 ==//
    SV_SURVEY_SAVE_SUCCESS("설문이 등록되었습니다."),
    SV_SURVEY_DELETE_SUCCESS("설문이 삭제되었습니다."),
    SV_SURVEY_UPDATE_SUCCESS("설문이 수정되었습니다."),

    //== CFM_COMMON_FILE : 공통 파일 ==//
    CFM_COMMON_FILE_NOW_ALLOW("허용되지 않는 파일이 존재합니다.");

    private final String message;

    CommonMessage(String message) {
        this.message = message;
    }
}
