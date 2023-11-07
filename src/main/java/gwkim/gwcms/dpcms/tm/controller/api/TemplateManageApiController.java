package gwkim.gwcms.dpcms.tm.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.tm.controller.form.TemplateInsertForm;
import gwkim.gwcms.dpcms.tm.domain.Template;
import gwkim.gwcms.dpcms.tm.repository.TemplateManageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequiredArgsConstructor
public class TemplateManageApiController {
    private final TemplateManageRepository templateManageRepository;

    /**
     * 템플릿 저장 api
     * @param form TemplateInsertForm
     * @return CommonResponse<String>
     */
    @PostMapping("/admin/tm/template")
    public CommonResponse<String> saveTemplate(@Valid TemplateInsertForm form) {
        Template template = Template.formToEntity(form);
        templateManageRepository.save(template);
        return CommonResponse.commonSuccess(CommonMessage.CMM_MESSAGE_REG_SUCCESS.getMessage());
    }
}
