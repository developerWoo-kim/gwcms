package gwkim.gwcms.dpcms.fm.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.fm.controller.dto.DownloadFileDto;
import gwkim.gwcms.dpcms.fm.repository.AttachFileRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@Slf4j
@RequiredArgsConstructor
public class AttachFileApiController {
    private final AttachFileApiService attachFileApiService;
    private final AttachFileRepository attachFileRepository;

    /**
     * 단일 파일 삭제
     *
     * @param fileId : Long
     * @return CommonResponse
     */
    @DeleteMapping("/admin/fm/{fileId}/file")
    public CommonResponse<String> deleteOneFile(@PathVariable("fileId") Long fileId) {
        attachFileApiService.deleteOneFile(fileId);
        return CommonResponse.commonSuccess(CommonMessage.FM_FILE_DELETE_SUCCESS.getMessage());
    }

    /**
     * 파일 다운로드 API - MVC 방식
     * HttpServletResponse FileInputStream
     * FileCopyUtils 클래스를 사용하여 write -> flush -> close 하여 곧바로 내려주는 방식
     *
     * @param fileKey String : 파일 식별키
     * @param request HttpServletRequest
     * @param response HttpServletResponse
     */
    @GetMapping(value = "/admin/fm/file/{fileKey}/download")
    public void fileDownLoad(@PathVariable("fileKey") String fileKey, HttpServletRequest request, HttpServletResponse response) {
        try {
            attachFileApiService.downloadFile(fileKey, request, response);
        } catch (Exception e) {
            log.debug("AttachFileApiController fileDownLoad : attachFileApiService.downloadFile()", e);
        }
    }

    /**
     * 파일 다운로드 API - RestTemplate 방식
     *
     * @param fileKey String : 파일 식별키
     * @param request HttpServletRequest
     * @return ResponseEntity<Resource>
     * @throws Exception
     */
    @GetMapping(value = "/api/v1/fm/file/{fileKey}/download", consumes = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public ResponseEntity<Resource> fileDownLoadApiV1(@PathVariable("fileKey") String fileKey, HttpServletRequest request) throws Exception {
        DownloadFileDto downloadFileDto = attachFileApiService.downloadFile(fileKey, request);
//        Thread.sleep(3000); 로딩바 테스트
        return ResponseEntity.ok()
                .headers(downloadFileDto.getHttpHeaders())
                .body(downloadFileDto.getResource());
    }
}
