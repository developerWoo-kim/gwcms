package gwkim.gwcms.dpcms.cd.service;

import gwkim.gwcms.dpcms.cd.controller.form.CommonCodeUpdateForm;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCode;
import gwkim.gwcms.dpcms.cd.controller.dto.CommonDetailCodeQueryDto;

public interface CommonCodeService {

    /**
     * 공통 코드 수정
     *
     * @param commonCodeUpdateForm : 공통 코드 수정 form
     */
    void updateCommonCode(CommonCodeUpdateForm commonCodeUpdateForm);

    /**
     * 공통 상세 코드 등록
     *
     * @param cmmnDetailCodeQueryDto
     * @return
     */
    CommonDetailCode saveCmmnDetailCode(CommonDetailCodeQueryDto cmmnDetailCodeQueryDto);

}
