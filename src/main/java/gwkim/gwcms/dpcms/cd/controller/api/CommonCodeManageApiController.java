package gwkim.gwcms.dpcms.cd.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.cd.controller.dto.CommonDetailCodeQueryDto;
import gwkim.gwcms.dpcms.cd.controller.form.CommonCodeUpdateForm;
import gwkim.gwcms.dpcms.cd.domain.CommonCode;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCode;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCodeId;
import gwkim.gwcms.dpcms.cd.repository.CommonDetailCodeRepository;
import gwkim.gwcms.dpcms.cd.repository.CommonCodeRepository;
import gwkim.gwcms.dpcms.cd.service.CommonCodeService;
import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Optional;

/**
 *	Class Name	: CommonCodeManageApiController.java
 *	Description	: 공통 코드 관리 API Controller
 *	Modification Information
 *	수정일		수정자		수정 내용
 *	-----------	----------	---------------------------
 *	2023.08.25	gwkim		최초 생성
 *
 *
 *	@author  gwkim
 *	@since  2023.08.25
 *	@version 1.0
 */
@RestController
@RequiredArgsConstructor
public class CommonCodeManageApiController {
    private final CommonCodeService commonCodeService;
    private final CommonCodeRepository commonCodeRepository;
    private final CommonDetailCodeRepository commonCodeDetailRepository;

    //================================== Query ==================================//
    /**
     * 중복 체크 - 공통 코드
     *
     * @param commonCode : 공통 코드
     * @return
     */
    @GetMapping("/admin/cd/commonCode/{commonCode}/code-duplicationCheck")
    public CommonResponse<CommonCode> commonCode_code_duplicationCheck(@PathVariable("commonCode") String commonCode) {
        Optional<CommonCode> findCode = commonCodeRepository.findById(commonCode);
        if(findCode.isPresent()) {
            return CommonResponse.commonFail(CommonMessage.CD_CMMNCODE_IS_DUPLICATION.getMessage());
        }
        return CommonResponse.commonSuccess(CommonMessage.CD_CMMNCODE_USE_POSSIBLE.getMessage());
    }

    /**
     * 중복 체크 - 공통 코드명
     *
     * @param commonCodeName : 공통 코드명
     * @return
     */
    @GetMapping("/admin/cd/commonCode/{commonCodeName}/name-duplicationCheck")
    public CommonResponse<CommonCode> commonCode_name_duplicationCheck(@PathVariable("commonCodeName") String commonCodeName) {
        Optional<CommonCode> findCodeNm = commonCodeRepository.findByCommonCodeName(commonCodeName);
        if(findCodeNm.isPresent()) {
            return CommonResponse.commonFail(CommonMessage.CD_CMMNCODE_IS_DUPLICATION.getMessage());
        }
        return CommonResponse.commonSuccess(CommonMessage.CD_CMMNCODE_USE_POSSIBLE.getMessage());
    }

    /**
     * 중복 체크 - 공통 상세 코드
     *
     * @param commonCode : 공통 코드
     * @param commonDetailCode : 공통 상세 코드
     * @return
     */
    @GetMapping("/admin/cd/commonDetailCode/{commonCode}/{commonDetailCode}/code-duplicationCheck")
    public CommonResponse<CommonDetailCode> commonDetailCode_code_duplicationCheck(@PathVariable("commonCode") String commonCode, @PathVariable("commonDetailCode") String commonDetailCode) {

        CommonDetailCodeId id = new CommonDetailCodeId().builder()
                .commonCode(commonCode)
                .commonDetailCode(commonDetailCode)
                .build();

        Optional<CommonDetailCode> findCode = commonCodeDetailRepository.findById(id);
        if(findCode.isPresent()) {
            return CommonResponse.commonFail(CommonMessage.CD_CMMNCODE_IS_DUPLICATION.getMessage());
        }
        return CommonResponse.commonSuccess(CommonMessage.CD_CMMNCODE_USE_POSSIBLE.getMessage());
    }

    /**
     * 중복 체크 - 공통 상세 코드명
     *
     * @param commonCode : 공통 코드
     * @param commonDetailCodeName : 공통 상세 코드명
     * @return
     */
    @GetMapping("/admin/cd/commonDetailCode/{commonCode}/{commonDetailCodeName}/name-duplicationCheck")
    public CommonResponse<CommonDetailCode> commonDetailCode_name_duplicationCheck(@PathVariable("commonCode") String commonCode, @PathVariable("commonDetailCodeName") String commonDetailCodeName) {
        Optional<CommonDetailCode> findCodeNm = commonCodeDetailRepository.findByCommonDetailCodeNameAndCommonCode_CommonCode(commonDetailCodeName, commonCode);
        if(findCodeNm.isPresent()) {
            return CommonResponse.commonFail(CommonMessage.CD_CMMNCODE_IS_DUPLICATION.getMessage());
        }
        return CommonResponse.commonSuccess(CommonMessage.CD_CMMNCODE_USE_POSSIBLE.getMessage());
    }

    //================================== Command ==================================//
    /**
     * 공통 코드 등록
     *
     * @param commonCode : 공통 코드
     * @return
     */
    @PostMapping("/admin/cd/commonCode")
    public CommonResponse<CommonCode> saveCommonCode(CommonCode commonCode) {
        CommonCode save = commonCodeRepository.save(commonCode);
        if(save.getCommonCode().isEmpty()) {
            return CommonResponse.commonFail(CommonMessage.CMM_MESSAGE_REG_FAIL.getMessage());
        }
        return CommonResponse.commonSuccess(CommonMessage.CMM_MESSAGE_REG_SUCCESS.getMessage());
    }

    /**
     * 공통 코드 수정
     *
     * @param commonCodeUpdateForm : 공통 코드 수정 form
     * @return
     */
    @PutMapping("/admin/cd/commonCode")
    public CommonResponse<CommonCode> updateCommonCode(@Valid CommonCodeUpdateForm commonCodeUpdateForm) {
        commonCodeService.updateCommonCode(commonCodeUpdateForm);
        return CommonResponse.commonSuccess(CommonMessage.CMM_MESSAGE_UPDATE_SUCCESS.getMessage());
    }

    /**
     * 공통 코드 삭제
     *
     * @param commonCode : 공통 코드
     * @return
     */
    @DeleteMapping("/admin/cd/{commonCode}/commonCode")
    public CommonResponse<CommonCode> deleteCommonCode(@PathVariable("commonCode") String commonCode) {
        commonCodeRepository.deleteById(commonCode);
        return CommonResponse.commonSuccess(CommonMessage.CMM_MESSAGE_DELETE_SUCCESS.getMessage());
    }

    /**
     * 공통 상세 코드 등록
     *
     * @param detailCodeDto : 공통 상세 코드 DTO
     * @return
     */
    @PostMapping("/admin/cd/commonDetailCode")
    public CommonResponse<CommonCode> saveCommonDetailCode(CommonDetailCodeQueryDto detailCodeDto) {
        CommonDetailCode saveCode = commonCodeService.saveCmmnDetailCode(detailCodeDto);
        if(saveCode.getId().getCommonDetailCode().isEmpty()) {
            return CommonResponse.commonFail(CommonMessage.CMM_MESSAGE_REG_FAIL.getMessage());
        }
        return CommonResponse.commonSuccess(CommonMessage.CMM_MESSAGE_REG_SUCCESS.getMessage());
    }

    /**
     * 공통 상세 코드 삭제
     *
     * @param commonCode : 공통 코드
     * @param commonDetailCode : 공통 상세 코드
     * @return : CommonResponse
     */
    @DeleteMapping("/admin/cd/{commonCode}/{commonDetailCode}/commonDetailCode")
    public CommonResponse<CommonCode> deleteCommonDetailCode(@PathVariable("commonCode") String commonCode, @PathVariable("commonDetailCode") String commonDetailCode) {
        CommonDetailCodeId id = new CommonDetailCodeId().builder()
                .commonCode(commonCode)
                .commonDetailCode(commonDetailCode)
                .build();
        commonCodeDetailRepository.deleteById(id);
        return CommonResponse.commonSuccess(CommonMessage.CMM_MESSAGE_DELETE_SUCCESS.getMessage());
    }
}
