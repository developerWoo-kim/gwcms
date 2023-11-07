package gwkim.gwcms.dpcms.au.utils.exception;

import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.au.utils.exception.custom.AuthorAdminNotFoundException;
import gwkim.gwcms.dpcms.au.utils.exception.custom.AuthorNotFoundException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice(basePackages = {"dpub.cms.dpcms"})
@Order(Ordered.HIGHEST_PRECEDENCE)      // RestControllerAdvice 우선 순위 조정 : 최우선 순위
public class AuthorExceptionHandler {

    /**
     * 권한이 존재하지 않을때 : 404(NOT_FOUND)
     *
     * @param exception
     * @return
     */
    @ExceptionHandler(AuthorNotFoundException.class)
    public ResponseEntity<CommonResponse<String>> handleAuthorNotFoundException(RuntimeException exception) {
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(CommonResponse.commonFail(exception.getMessage()));
    }

    /**
     * 관리자 권한이 존재하지 않을때 : 403(FORBIDDEN)
     *
     * @param exception
     * @return
     */
    @ExceptionHandler(AuthorAdminNotFoundException.class)
    public ResponseEntity<CommonResponse<String>> handleAuthorAdminNotFoundException(RuntimeException exception) {
        return ResponseEntity.status(HttpStatus.FORBIDDEN).body(CommonResponse.commonFail(exception.getMessage()));
    }


}
