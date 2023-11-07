package gwkim.gwcms.dpcms.sm.controller.dto;

import gwkim.gwcms.dpcms.sm.domain.System;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class SystemDto {
    private String systemId;
    private String systemName;
    private String systemType;
    private String systemStatus;
    private String templateId;
    private String templateType;

    public SystemDto(System system) {
        this.systemId = system.getSystemId();
        this.systemName = system.getSystemName();
        this.systemType = system.getSystemType();
        this.systemStatus = system.getSystemStatus();
    }
}
