package gwkim.gwcms.dpcms.sm.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.sm.controller.form.SystemInsertForm;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
import gwkim.gwcms.dpcms.sm.service.SystemManageService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Optional;

import static gwkim.gwcms.cmm.utils.reponse.CommonMessage.*;

/**
 *	Class Name	: SystemManageApiController.java
 *	Description	: 시스템 관리 API Controller
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
public class SystemManageApiController {
    private final SystemManageService systemManageService;
    private final SystemManageRepository systemManageRepository;

    //================================== Query ==================================//
    /**
     * 홈페이지 아이디 중복 체크
     * @param sysId
     * @return
     */
    @GetMapping("/admin/sm/system/{sysId}/id-duplicationCheck")
    public CommonResponse<String> sysIdDuplicationCheck(@PathVariable("sysId") String sysId) {
        Optional<System> findId = systemManageRepository.findById(sysId);
        if(findId.isPresent()) return CommonResponse.commonFail(SM_SYSTEM_ID_IS_DUPLICATION.getMessage());

        return CommonResponse.commonSuccess(SM_SYSTEM_ID_IS_AVAILABLE.getMessage());
    }

    /**
     * 홈페이지명 중복 체크
     * @param systemName
     * @return
     */
    @GetMapping("/admin/sm/system/{sysNm}/nm-duplicationCheck")
    public CommonResponse<String> sysNmDuplicationCheck(@PathVariable("sysNm") String systemName) {
        Optional<System> findId = systemManageRepository.findBySystemName(systemName);
        if(findId.isPresent()) return CommonResponse.commonFail(SM_SYSTEM_ID_IS_DUPLICATION.getMessage());

        return CommonResponse.commonSuccess(SM_SYSTEM_ID_IS_AVAILABLE.getMessage());
    }

    //================================== Command ==================================//
    /**
     * 홈페이지 등록
     *
     * @param request
     * @param form
     * @return
     */
    @PostMapping("/admin/sm/system")
    public CommonResponse<String> saveSystem(HttpServletRequest request, SystemInsertForm form) throws IOException {
        // 시스템 엔티티 세팅
        System systemManage = System.insertFormToEntity(request, form);

        systemManageService.saveSystem(systemManage);

        return CommonResponse.commonSuccess(SM_SYSTEM_SAVE_SUCCESS.getMessage());
    }
}
