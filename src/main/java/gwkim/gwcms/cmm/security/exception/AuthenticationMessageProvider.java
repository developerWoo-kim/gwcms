package gwkim.gwcms.cmm.security.exception;

import org.springframework.security.core.AuthenticationException;


public class AuthenticationMessageProvider {
    public static AuthenticationExceptionTypes getExceptionMessage(AuthenticationException exception) {
        return AuthenticationExceptionTypes.findOf(exception.getClass().getSimpleName());
    }
}
