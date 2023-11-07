package gwkim.gwcms.cmm.utils.reponse.error;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@NoArgsConstructor
public abstract class AbstractErrorResponse {
    private String status;
    private String requestUrl;
    private String code;
    private String message;
}
