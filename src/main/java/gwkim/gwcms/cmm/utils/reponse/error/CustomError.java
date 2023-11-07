package gwkim.gwcms.cmm.utils.reponse.error;

import lombok.*;

@Getter @Setter
@NoArgsConstructor
public class CustomError {
    private String field;
    private String message;
    private String invalidValue;

    @Builder
    public CustomError(String field, String message, String invalidValue) {
        this.field = field;
        this.message = message;
        this.invalidValue = invalidValue;
    }
}
