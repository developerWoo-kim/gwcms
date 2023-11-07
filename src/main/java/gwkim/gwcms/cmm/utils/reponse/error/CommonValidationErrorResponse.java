package gwkim.gwcms.cmm.utils.reponse.error;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CommonValidationErrorResponse extends AbstractErrorResponse{
    private List<CustomError> errors = new ArrayList<>();

    public CommonValidationErrorResponse(String status, String requestUrl, String code, String message, List<CustomError> errors) {
        this.setStatus(status);
        this.setRequestUrl(requestUrl);
        this.setCode(code);
        this.setMessage(message);
        this.errors = errors;
    }

    public static CommonValidationErrorResponse commonFail(String status, String requestUrl, ErrorCode errorCode, List<CustomError> errors) {
        return new CommonValidationErrorResponse(status, requestUrl, errorCode.getCode(), errorCode.getMessage(), errors);
    };
}
