package gwkim.gwcms.dpcms.sm.controller.form;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class SystemInsertForm {
    private String systemId;
    private String systemName;
    private String systemType;
    private String systemStatus;
    private String templateId;
    private String templateType;
}
