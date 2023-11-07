package gwkim.gwcms.dpcms.mm.utils.exception;

import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.mm.utils.exception.custom.MemberLoginCountOverException;
import gwkim.gwcms.dpcms.mm.utils.exception.custom.MemberNotFoundException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice(basePackages = {"dpub.cms.dpcms"})
@Order(Ordered.HIGHEST_PRECEDENCE)      // RestControllerAdvice 우선 순위 조정 : 최우선 순위
public class MemberExceptionHandler {
    /**
     * 아이디 비밀번호가 없거나 불일치할 경우 ( 404 : NOT_FOUND )
     * 가장 일반적인 로그인 실패
     *
     * @param exception
     * @return
     */
    @ExceptionHandler(MemberNotFoundException.class)
    public ResponseEntity<CommonResponse<String>> handleMemberNotFoundException(MemberNotFoundException exception) {
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(CommonResponse.commonFail(exception.getMessage()));
    }

    /**
     * 로그인 시도 횟수 초과했을 경우 ( 401 : UNAUTHORIZED )
     *
     * @param exception
     * @return
     */
    @ExceptionHandler(MemberLoginCountOverException.class)
    public ResponseEntity<CommonResponse<String>> handleMemberLoginCountOverException(RuntimeException exception) {
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(CommonResponse.commonFail(exception.getMessage()));
    }

}
