package gwkim.gwcms.dpcms.fm.service;

import gwkim.gwcms.dpcms.cfm.util.CommonFileUtil;
import gwkim.gwcms.cmm.utils.CommonGlobalsConfigValue;
import gwkim.gwcms.dpcms.fm.domain.ThumbnailFile;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class ThumbnailFileService {
    private final CommonGlobalsConfigValue globalsConfigValue;

    /**
     * 썸네일 생서 및 업로드 프로세서
     * @param rootFilePath String : 파일 저장 경로
     * @param thumbnailFile ThumbnailFile : 섬네일 엔티티
     * @param file MultipartFile
     * @return
     */
    public void uploadThumbFileProcessor(String rootFilePath, ThumbnailFile thumbnailFile, MultipartFile file) {
        // 파일 디렉토리 생성
//        CommonFileUtil.createDir(filePath);
        // 파일 저장
        try {
            file.transferTo(new File(rootFilePath + thumbnailFile.getOriginalFilePath()));
        } catch (IOException e) {
            log.error(e.getMessage(), e);
            throw new RuntimeException(e);
        }

        try {
            CommonFileUtil.makeThumbnail(rootFilePath, thumbnailFile.getOriginalFilePath(), thumbnailFile.getThumbFilePath(), thumbnailFile.getExtension());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
