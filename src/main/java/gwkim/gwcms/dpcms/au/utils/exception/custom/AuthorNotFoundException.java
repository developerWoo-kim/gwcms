package gwkim.gwcms.dpcms.au.utils.exception.custom;

public class AuthorNotFoundException extends RuntimeException{
    public AuthorNotFoundException(String message) {
        super(message);
    }
}
