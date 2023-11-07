package gwkim.gwcms.dpcms.cfm.controller.dto;

import gwkim.gwcms.dpcms.cfm.domain.CommonFile;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CommonFileDto {
    private Long id;                // 파일 아이디
    private String key;             // 파일 고유 식별 키
    private String type;            // 파일 유형
    private String path;            // 파일 경로
    private long size;              // 파일 용량
    private String extension;       // 파일 확장자
    private String originalFileName;    // 원본 파일명
    private String saveFileName;        // 저장 파일명

    public CommonFileDto(Long id, String key, String type, String path, long size, String extension, String originalFileName, String saveFileName) {
        this.id = id;
        this.key = key;
        this.type = type;
        this.path = path;
        this.size = size;
        this.extension = extension;
        this.originalFileName = originalFileName;
        this.saveFileName = saveFileName;
    }
    public CommonFileDto(CommonFile commonFile) {
        this.id = commonFile.getFileId();
        this.key = commonFile.getFileKey();
        this.type = commonFile.getFileType();
        this.path = commonFile.getFilePath();
        this.size = commonFile.getFileSize();
        this.extension = commonFile.getFileExtension();
        this.originalFileName = commonFile.getOriginalFileName();
        this.saveFileName = commonFile.getSaveFileName();
    }
}
