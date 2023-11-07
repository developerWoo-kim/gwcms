package gwkim.gwcms.dpcms.cd.service.impl;

import gwkim.gwcms.dpcms.cd.controller.form.CommonCodeUpdateForm;
import gwkim.gwcms.dpcms.cd.domain.CommonCode;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCode;
import gwkim.gwcms.dpcms.cd.controller.dto.CommonDetailCodeQueryDto;
import gwkim.gwcms.dpcms.cd.repository.CommonCodeRepository;
import gwkim.gwcms.dpcms.cd.repository.CommonDetailCodeRepository;
import gwkim.gwcms.dpcms.cd.service.CommonCodeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CommonCodeServiceImpl implements CommonCodeService {
    private final CommonCodeRepository commonCodeRepository;
    private final CommonDetailCodeRepository commonDetailCodeRepository;

    /**
     * 공통 코드 수정 - 변경 감지 사용
     *
     * @param form
     */
    @Override
    @Transactional
    public void updateCommonCode(CommonCodeUpdateForm form) {
        CommonCode commonCode = commonCodeRepository.findById(form.getCommonCode())
                .orElseThrow();

        commonCode.setCommonCodeName(form.getCommonCodeName());
        commonCode.setCommonCodeDescription(form.getCommonCodeDescription());
        commonCode.setUseAt(form.getUseAt());
    }

    /**
     * 공통 상세 코드 등록
     *
     * @param detailCodeDto
     * @return
     */
    @Override
    @Transactional
    public CommonDetailCode saveCmmnDetailCode(CommonDetailCodeQueryDto detailCodeDto) {
        Optional<CommonCode> findCommonCode = commonCodeRepository.findById(detailCodeDto.getCommonCode());
        CommonDetailCode saveDetailCode = new CommonDetailCode();

        if(findCommonCode.isPresent()) {
            CommonCode commonCode = findCommonCode.get();
            CommonDetailCode commonDetailCode = CommonDetailCode.createCommonDetailCode(commonCode, detailCodeDto);
            saveDetailCode = commonDetailCodeRepository.save(commonDetailCode);
        }

        return saveDetailCode;
    }
}
