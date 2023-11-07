package gwkim.gwcms.dpcms.cfm.service.impl;

import gwkim.gwcms.dpcms.cfm.util.CommonFileUtil;
import gwkim.gwcms.cmm.utils.CommonGlobalsConfigValue;
import gwkim.gwcms.dpcms.cfm.domain.CommonFile;
import gwkim.gwcms.dpcms.cfm.domain.CommonFileMaster;
import gwkim.gwcms.dpcms.cfm.repository.CommonFileMasterRepository;
import gwkim.gwcms.dpcms.cfm.service.CommonFileService;
import gwkim.gwcms.dpcms.cfm.util.exception.custom.FileNotAllowException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * 공통 파일 서비스 구현체
 */
@Service
@Transactional
@RequiredArgsConstructor
public class CommonFileServiceImpl implements CommonFileService {
    private final CommonGlobalsConfigValue commonGlobalsConfigValue;
    private final CommonFileMasterRepository commonFileMasterRepository;

    /**
     * 파일 조회 - DTO 반환
     *
     * @param identifier String 식별자 값
     * @return CommonFileDto
     */
    @Override
    public Optional<CommonFileMaster> findByIdentifier(String identifier) {
        return commonFileMasterRepository.findByIdentifier(identifier);
    }

    /**
     * 파일 저장
     * @param identifier String 식별자 값
     * @param file MultipartFile... 파일 가변인자
     */
    @Override
    public void save(String identifier, String uploadPath, MultipartFile... file) {
        List<CommonFile> commonFileList = new ArrayList<>();
        for (MultipartFile multipartFile : file) {
            CommonFile commonFile = CommonFile.createCommonFile(uploadPath, multipartFile);

            // 파일 확장자 체크
            if(!CommonFileUtil.checkFileExtension(commonFile.getFileExtension())) {
                throw new FileNotAllowException();
            }
            CommonFileUtil.saveFile(commonGlobalsConfigValue.getRootPath(), commonFile.getFilePath(), multipartFile);
            commonFileList.add(commonFile);
        }

        CommonFileMaster commonMasterFile = CommonFileMaster.createCommonMasterFile(identifier, commonFileList.toArray(new CommonFile[0]));

        commonFileMasterRepository.save(commonMasterFile);
    }
}
