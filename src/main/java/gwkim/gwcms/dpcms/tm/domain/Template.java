package gwkim.gwcms.dpcms.tm.domain;

import gwkim.gwcms.dpcms.tm.controller.form.TemplateInsertForm;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
// _TB_TM_TEMPLATE_MANAGE
@Entity(name = "tb_tm_template")
@Getter
@Setter
@NoArgsConstructor
public class Template {
    @Id
    @Column(name = "TEMPLATE_ID")
    private String templateId;              // 템플릿 아이디
    private String templateName;            // 템플릿 이름
    private String templateType;            // 템플릿 유형
    private String templateDescription;     // 템플릿 설명
    private String useAt;                   // 사용 여부

    @Builder
    public Template(String templateId, String templateName, String templateType, String templateDescription, String useAt) {
        this.templateId = templateId;
        this.templateName = templateName;
        this.templateType = templateType;
        this.templateDescription = templateDescription;
        this.useAt = useAt;
    }

    public static Template formToEntity(TemplateInsertForm form){
        return new Template().builder()
                .templateId(form.getTemplateId())
                .templateName(form.getTemplateName())
                .templateDescription(form.getTemplateDescription())
                .useAt(form.getUseAt())
                .build();
    }
}
