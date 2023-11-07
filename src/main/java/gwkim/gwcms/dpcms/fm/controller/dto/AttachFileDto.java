package gwkim.gwcms.dpcms.fm.controller.dto;

import gwkim.gwcms.dpcms.fm.domain.AttachFile;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AttachFileDto {
    private Long fileId;                        // 파일 아이디
    private String fileKey;                     // 파일 식별 키
    private String fileType;                    // 파일 유형
    private long fileSize;                      // 파일 용량
    private String fileExtension;               // 파일 확장자
    private String originalFileName;            // 원본 파일명
    private String saveFileName;                // 저장 파일명

    @Builder
    public AttachFileDto(Long fileId, String fileKey, String fileType, long fileSize, String fileExtension, String originalFileName, String saveFileName) {
        this.fileId = fileId;
        this.fileKey = fileKey;
        this.fileType = fileType;
        this.fileSize = fileSize;
        this.fileExtension = fileExtension;
        this.originalFileName = originalFileName;
        this.saveFileName = saveFileName;
    }

    public AttachFileDto(AttachFile file) {
        this.fileId = file.getFileId();
        this.fileKey = file.getFileKey();
        this.fileType = file.getFileType();
        this.fileSize = file.getFileSize();
        this.fileExtension = file.getFileExtension();
        this.originalFileName = file.getOriginalFileName();
        this.saveFileName = file.getSaveFileName();
    }
}
