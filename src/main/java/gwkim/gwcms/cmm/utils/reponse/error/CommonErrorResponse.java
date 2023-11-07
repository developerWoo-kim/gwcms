package gwkim.gwcms.cmm.utils.reponse.error;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

/**
 * 공통 API ERROR RESPONSE 포맷
 *
 * @author gwkim
 * @since 2023.08.31
 * @version 1.0
 */
@Getter @Setter
@AllArgsConstructor
public class CommonErrorResponse extends AbstractErrorResponse{
    public CommonErrorResponse(String status, String requestUrl, String code, String message) {
        this.setStatus(status);
        this.setRequestUrl(requestUrl);
        this.setCode(code);
        this.setMessage(message);
    }

    public static CommonErrorResponse commonError(String status, String requestUrl, ErrorCode errorCode) {
        return new CommonErrorResponse(status, requestUrl, errorCode.getCode(), errorCode.getMessage());
    };
}
