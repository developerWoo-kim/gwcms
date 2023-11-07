package gwkim.gwcms.dpcms.cfm.service;

import gwkim.gwcms.dpcms.cfm.domain.CommonFileMaster;
import org.springframework.web.multipart.MultipartFile;

import java.util.Optional;

public interface CommonFileService {

    /**
     * 파일 조회 - DTO 반환
     *
     * @param identifier String 식별자 값
     * @return CommonFileDto
     */
    Optional<CommonFileMaster> findByIdentifier(String identifier);

    /**
     * 파일 저장
     * @param identifier String 식별자 값
     * @param file MultipartFile... 파일 배열
     */
    void save(String identifier, String uploadPath, MultipartFile... file);
}
