package gwkim.gwcms.dpcms.fm.controller.api;

import gwkim.gwcms.dpcms.cfm.util.CommonFileUtil;
import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.dpcms.fm.controller.dto.DownloadFileDto;
import gwkim.gwcms.dpcms.fm.domain.AttachFile;
import gwkim.gwcms.dpcms.fm.repository.AttachFileRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class AttachFileApiService {
    private final AttachFileRepository attachFileRepository;

    @Transactional
    public void deleteOneFile(Long fileId){
        AttachFile attachFile = attachFileRepository.findById(fileId).orElseThrow();
        CommonFileUtil.deleteFile(attachFile.getFilePath());
        attachFileRepository.deleteById(attachFile.getFileId());
    }

    /**
     * 파일 다운로드  HttpServletResponse OutputStream write -> flush 방식
     *
     * @param fileKey String 파일 식별 키
     * @param request HttpServletRequest
     * @param response HttpServletResponse
     * @throws Exception
     */
    public void downloadFile(String fileKey, HttpServletRequest request, HttpServletResponse response) throws Exception{
        AttachFile attachFile = attachFileRepository.findByFileKey(fileKey)
                .orElseThrow(() -> new FileNotFoundException("파일이 존재하지 않습니다."));

        String filePath = attachFile.getFilePath();
        String fileName = attachFile.getOriginalFileName();
        File file = new File(filePath);

        if(!file.exists()) {
            throw new FileNotFoundException("파일이 존재하지 않습니다.");
        }

        if (!"".equals(filePath)) {
            String mimetype = "application/octet-stream";
            response.setContentType(mimetype);
            try {
                CommonUtil.setDisposition(fileName, request, response);
                OutputStream out = response.getOutputStream();
                FileInputStream fis = new FileInputStream(filePath);
                FileCopyUtils.copy(fis, out);
            } catch (IOException ex) {
                log.debug("AttachFileApiService : downloadFile", ex);
            }

        } else {
            throw new FileNotFoundException();
        }
    }

    public DownloadFileDto downloadFile(String fileKey, HttpServletRequest request) throws Exception{
        AttachFile attachFile = attachFileRepository.findByFileKey(fileKey)
                .orElseThrow(() -> new FileNotFoundException("파일이 존재하지 않습니다."));

        String filePath = attachFile.getFilePath();
        String fileName = attachFile.getOriginalFileName();

        UrlResource urlResource = new UrlResource("file:" + filePath);
        if(!urlResource.exists()) {
            throw new FileNotFoundException("파일이 존재하지 않습니다.");
        }

        HttpHeaders httpHeaders = CommonUtil.setDisposition(fileName, request);

        return new DownloadFileDto(fileName, httpHeaders, urlResource);
    }
}
