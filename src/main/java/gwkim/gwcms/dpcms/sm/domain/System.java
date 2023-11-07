package gwkim.gwcms.dpcms.sm.domain;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.dpcms.sm.controller.form.SystemInsertForm;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;

/**
 * 시스템 관리 엔티티
 *
 * @author gwkim
 * @since 2023.08.24
 * @version 1.0
 */
@Entity(name = "tb_sm_system")
@Getter
@Setter
@NoArgsConstructor
public class System {
    @Id
    @Column(name = "system_id")
    private String systemId;
    private String systemName;
    private String systemType;
    private String systemStatus;
    private String templateId;
    private String templateType;
    private String createId;
    private String createName;
    private String createIp;
    private LocalDateTime createDateTime;
    private String updateId;
    private String updateName;
    private String updateIp;
    private LocalDateTime updateDateTime;

    @Builder
    public System(String systemId, String systemName, String systemType, String systemStatus, String templateId, String templateType, String createId, String createName, String createIp, LocalDateTime createDateTime, String updateId, String updateName, String updateIp, LocalDateTime updateDateTime) {
        this.systemId = systemId;
        this.systemName = systemName;
        this.systemType = systemType;
        this.systemStatus = systemStatus;
        this.templateId = templateId;
        this.templateType = templateType;
        this.createId = createId;
        this.createName = createName;
        this.createIp = createIp;
        this.createDateTime = createDateTime;
        this.updateId = updateId;
        this.updateName = updateName;
        this.updateIp = updateIp;
        this.updateDateTime = updateDateTime;
    }

    //== 편의 메소드 ==//
    public static System insertFormToEntity(HttpServletRequest request, SystemInsertForm form) {
        return new System().builder()
                .systemId(form.getSystemId())
                .systemName(form.getSystemName())
                .systemType(form.getSystemType())
                .systemStatus(form.getSystemStatus())
                .templateId(form.getTemplateId())
                .templateType(form.getTemplateType())
                .createDateTime(LocalDateTime.now())
                .createIp(CommonUtil.getPublicIpByUser(request))
                .build();
    }

}
