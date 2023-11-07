package gwkim.gwcms.cmm.security.exception;

public class MemberLoginCountOverException extends RuntimeException{
    public MemberLoginCountOverException(String message) {
        super(message);
    }
}
