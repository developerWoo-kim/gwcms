package gwkim.gwcms.cmm.utils.reponse;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

/**
 * 공통 API RESPONSE 포맷
 *
 * @param <T>
 *
 * @author gwkim
 * @since 2023.08.08
 * @version 0.1
 */
@Getter @Setter
@AllArgsConstructor
public class CommonResponse<T> {
    private static final String SUCCESS_STATUS = "success";
    private static final String FAIL_STATUS = "fail";

    private String status;
    private T body;
    private String message;

    /**
     * 공통 성공 응답
     *
     * @param body
     * @return
     * @param <T>
     */
    public static <T>CommonResponse<T> commonSuccess(T body) {
        return new CommonResponse<T>(SUCCESS_STATUS, body, "정상처리 되었습니다.");
    }

    /**
     * 공통 성공 응답 ( body + message )
     * @param body
     * @param message
     * @return
     * @param <T>
     */
    public static <T>CommonResponse<T> commonSuccess(T body, String message) {
        return new CommonResponse<T>(SUCCESS_STATUS, body, message);
    }

    /**
     * 공통 성공 응답 ( 메시지만)
     * @param message
     * @return
     * @param <T>
     */
    public static <T>CommonResponse<T> commonSuccess(String message) {
        return new CommonResponse<T>(SUCCESS_STATUS, null, message);
    }

    /**
     * 공통 실패 응답
     * @return
     * @param <T>
     */
    public static <T>CommonResponse<T> commonFail(String message) {
        return new CommonResponse<T>(FAIL_STATUS, null, message);
    }

    /**
     * 공통 실패 응답
     * @return
     * @param <T>
     */
    public static <T>CommonResponse<T> commonFail(T body, String message) {
        return new CommonResponse<T>(FAIL_STATUS, body, message);
    }
}
