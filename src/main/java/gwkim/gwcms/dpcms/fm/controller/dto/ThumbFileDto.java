package gwkim.gwcms.dpcms.fm.controller.dto;

import gwkim.gwcms.dpcms.fm.domain.ThumbnailFile;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ThumbFileDto {
    private Long thumbFileId;
    private String thumbFileType;                   // 파일 유형
    private String thumbFilePath;                   // 파일 경로
    private long size;                              // 파일 용량
    private String extension;                       // 파일 확장자
    private String originalFileName;                // 원본 파일명
    private String saveFileName;                    // 저장 파일명

    public ThumbFileDto(ThumbnailFile thumbnailFile) {
        this.thumbFileId = thumbnailFile.getThumbFileId();
        this.thumbFileType = thumbnailFile.getThumbFileType();
        this.thumbFilePath = thumbnailFile.getThumbFilePath();
        this.size = thumbnailFile.getSize();
        this.extension = thumbnailFile.getExtension();
        this.originalFileName = thumbnailFile.getOriginalFileName();
        this.saveFileName = thumbnailFile.getSaveFileName();
    }
}
