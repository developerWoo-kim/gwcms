package gwkim.gwcms.cmm.utils.reponse.error;

import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import lombok.Getter;

/**
 * 공통 에러 ENUM 클래스
 *
 * @author gwkim
 * @since 2023.08.24
 * @version 0.1
 */
@Getter
public enum ErrorCode {
    /** 공통 */
    COMMON_VALIDATION_ERROR(400, "valid-001", CommonMessage.CMM_MESSAGE_INVALID_VALUE.getMessage()),
    COMMON_ERROR_400(400, "error-001", "시스템 장애가 발생하였습니다.\n관리자에게 문의하세요."),
    COMMON_ERROR_500(500, "error-002", "시스템 장애가 발생하였습니다.\n관리자에게 문의하세요."),
    /** 회원 */
    MM_MEMBER_LOGIN_NOT_FOUND(404, "member-001", CommonMessage.MM_MEMBER_LOGIN_NOT_FOUND.getMessage()),
    UNAUTHORIZED(401, "account-001", "로그인 정보가 존재하지 않습니다."),

    /** 공통 파일*/
    CFM_COMMON_FILE_NOW_ALLOW(400, "file-001", CommonMessage.CFM_COMMON_FILE_NOW_ALLOW.getMessage());

    //== cd-cmmnCode : 공통코드 ==//


    private final int status;
    private final String code;
    private final String message;

    ErrorCode(int status, String code, String message) {
        this.status = status;
        this.code = code;
        this.message = message;
    }
}
