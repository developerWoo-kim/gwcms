package gwkim.gwcms.cmm.utils.exception;


import gwkim.gwcms.cmm.utils.reponse.error.CommonValidationErrorResponse;
import gwkim.gwcms.cmm.utils.reponse.error.CustomError;
import gwkim.gwcms.cmm.utils.reponse.error.ErrorCode;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * 공통 exception Handler
 *
 * @author gwkim
 * @since 2023.09.08
 * @version 1.0
 */
@RestControllerAdvice(basePackages = {"dpub.cms.dpcms"})
@Slf4j
public class CommonExceptionHandler {

//    @ExceptionHandler({RuntimeException.class, Exception.class})
//    public ResponseEntity<CommonErrorResponse> error500(Exception e, HttpServletRequest request) {
//        log.error("500 Error : " + e.getMessage());
//
//        CommonErrorResponse errorResponse = CommonErrorResponse
//                .commonError(HttpStatus.INTERNAL_SERVER_ERROR.toString(), request.getRequestURI(), ErrorCode.COMMON_ERROR_500);
//        //응답 바디에  errorResponse를 담아 리턴한다.
//        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
//    }

    /**
     * API Controller에서 @Valid를 사용한 유효성 검증 예외
     *
     * @param e
     * @param request
     * @return
     */
    @ExceptionHandler(BindException.class)
    public ResponseEntity<CommonValidationErrorResponse> bindException(BindException e, HttpServletRequest request){

        //에러에서 BindingResult를 가져온다.
        BindingResult bindingResult = e.getBindingResult();

        //해당 BindingResult에서 발생한 에러를 모두 가져와 forEach을 통해 작업한다
        List<CustomError> errors = new ArrayList<>();
        bindingResult.getAllErrors().forEach(error ->{
            //각각의 error 객체가 들어와 FieldError 타입으로 형변환
            FieldError field = (FieldError) error;
            CustomError errorMessage = new CustomError().builder()
                    .message(field.getDefaultMessage())
                    .field(field.getField())
                    .invalidValue(field.getRejectedValue().toString())
                    .build();

            errors.add(errorMessage);
        });

        //실제 응답바디에 담길 errorResponse를 만들어 에러에 대한 기본정보를 담고
        CommonValidationErrorResponse errorResponse = CommonValidationErrorResponse
                .commonFail(HttpStatus.BAD_REQUEST.toString(), request.getRequestURI(), ErrorCode.COMMON_VALIDATION_ERROR, errors);


        //응답 바디에  errorResponse를 담아 리턴한다.
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errorResponse);
    }
}
