package gwkim.gwcms.dpcms.cfm.util.exception.custom;

/**
 * 허용 되지 않는 파일 Exception
 */
public class FileNotAllowException extends RuntimeException{
    public FileNotAllowException() {
        super();
    }

    public FileNotAllowException(String message) {
        super(message);
    }
}
