package gwkim.gwcms.dpcms.cfm.util.exception;

import gwkim.gwcms.cmm.utils.reponse.error.CommonErrorResponse;
import gwkim.gwcms.cmm.utils.reponse.error.ErrorCode;
import gwkim.gwcms.dpcms.cfm.util.exception.custom.FileNotAllowException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;

@RestControllerAdvice(basePackages = {"dpub.cms.dpcms"})
@Order(Ordered.HIGHEST_PRECEDENCE)      // RestControllerAdvice 우선 순위 조정 : 최우선 순위
public class CommonFileExceptionHandler {

    /**
     * 허용되지 않는 파일을 업로드 할 경우 발생
     * @param exception FileNotAllowException
     * @return ResponseEntity<CommonErrorResponse>
     */
    @ExceptionHandler(FileNotAllowException.class)
    public ResponseEntity<CommonErrorResponse> handleFileNotAllowExtensionException(FileNotAllowException exception, HttpServletRequest request) {

        CommonErrorResponse errorResponse = CommonErrorResponse
                .commonError(HttpStatus.BAD_REQUEST.toString(), request.getRequestURI(), ErrorCode.CFM_COMMON_FILE_NOW_ALLOW);
        //응답 바디에  errorResponse를 담아 리턴한다.
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errorResponse);
    }
}
