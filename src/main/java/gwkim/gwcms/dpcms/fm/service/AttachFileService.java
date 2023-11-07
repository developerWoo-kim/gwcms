package gwkim.gwcms.dpcms.fm.service;

import gwkim.gwcms.dpcms.cfm.util.CommonFileUtil;
import gwkim.gwcms.cmm.utils.CommonGlobalsConfigValue;
import gwkim.gwcms.dpcms.fm.controller.dto.AttachFileMasterDto;
import gwkim.gwcms.dpcms.fm.domain.AttachFile;
import gwkim.gwcms.dpcms.fm.domain.AttachFileMaster;
import gwkim.gwcms.dpcms.fm.repository.AttachFileMasterRepository;
import gwkim.gwcms.dpcms.fm.repository.AttachFileRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AttachFileService {
    private final CommonGlobalsConfigValue globalsConfigValue;
    private final AttachFileMasterRepository attachFileMasterRepository;
    private final AttachFileRepository attachFileRepository;

    /**
     * 스토리지에 파일 저장
     *
     * @param fileList : List<MultipartFile> 파일 리스트
     * @return List<AttachFile>
     */
    public List<AttachFile> uploadFileToStorage(List<MultipartFile> fileList) {
        // 파일 확장자 체킹 먼저
        for (MultipartFile file : fileList) {
            String originalFileName = file.getOriginalFilename();
            //파일 확장자 체크
            if(originalFileName!=null) {
                String fileExtension = originalFileName.substring(originalFileName.lastIndexOf(".") + 1).toLowerCase();
            }
        }

        String filePath = globalsConfigValue.getFileStorePath();
        // 파일 디렉토리 생성
        CommonFileUtil.createDir(filePath);

        List<AttachFile> attachFileList = new ArrayList<>();
        for (MultipartFile file : fileList) {
            AttachFile attachFile = AttachFile.createAttachFile(file, filePath);
            attachFileList.add(attachFile);
            try {
                file.transferTo(new File(attachFile.getFilePath()));
            } catch (NullPointerException | IOException e) {
                log.error(e.getMessage(), e);
            }

        }
        return attachFileList;
    }

    /**
     * 첨부파일 조회 - 객체 그래프로 리턴(마스터 파일 - 파일)
     * @param postId Long : 게시물 아이디
     * @return AttachFileMasterDto
     */
    public AttachFileMasterDto findAttachFileMasterContainFileList(Long postId) {
        Optional<AttachFileMaster> attachFileMaster = attachFileMasterRepository.findByPost_PostId(postId);
        AttachFileMasterDto attachFileMasterDto = null;

        if(attachFileMaster.isPresent()) {
            attachFileMasterDto = new AttachFileMasterDto(attachFileMaster.get());
        }

        return attachFileMasterDto;
    }
}
