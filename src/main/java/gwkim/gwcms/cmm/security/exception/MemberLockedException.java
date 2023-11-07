package gwkim.gwcms.cmm.security.exception;

public class MemberLockedException extends RuntimeException{
    public MemberLockedException(String message) {
        super(message);
    }
}
