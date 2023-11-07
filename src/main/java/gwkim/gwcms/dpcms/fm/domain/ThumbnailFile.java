package gwkim.gwcms.dpcms.fm.domain;

import gwkim.gwcms.dpcms.bm.domain.Post;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.UUID;

/**
 * 썸네일 엔티티
 */
@Getter @Setter
@NoArgsConstructor
@Entity(name = "tb_fm_thumb_file")
public class ThumbnailFile {
    @Id
    @Column(name = "thumb_file_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long thumbFileId;
    private String thumbFileType;                   // 파일 유형
    private String thumbFilePath;                   // 파일 경로
    private long size;                              // 파일 용량
    private String extension;                       // 파일 확장자
    private String originalFileName;                // 원본 파일명
    private String originalFilePath;                // 원본 파일 경로
    private String saveFileName;                    // 저장 파일명

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "post_id")
    private Post post;

    @Builder
    public ThumbnailFile(String thumbFileType, String thumbFilePath, long size, String extension, String originalFileName, String originalFilePath, String saveFileName) {
        this.thumbFileType = thumbFileType;
        this.thumbFilePath = thumbFilePath;
        this.size = size;
        this.extension = extension;
        this.originalFileName = originalFileName;
        this.originalFilePath = originalFilePath;
        this.saveFileName = saveFileName;
    }

    /**
     * 썸네일 엔티티 생성 메서드
     * @param file MultipartFile
     * @return
     */
    public static ThumbnailFile createThumbFile(Post post, MultipartFile file){
        long fileSize = file.getSize();
        String originalFileName = file.getOriginalFilename();
        String fileExtension = originalFileName.substring(originalFileName.lastIndexOf(".") + 1).toLowerCase();
        String saveFileName = UUID.randomUUID().toString() + System.currentTimeMillis() + "." + fileExtension;
        String originalFilePath = "/upload/thumb/" + saveFileName;
        String thumbFilePath = "/upload/thumb/thumb_" + saveFileName;

        ThumbnailFile thumbFile = new ThumbnailFile().builder()
                .originalFileName(originalFileName)
                .originalFilePath(originalFilePath)
                .extension(fileExtension)
                .saveFileName(saveFileName)
                .thumbFilePath(thumbFilePath)
                .size(fileSize)
                .build();

        post.addThumbFile(thumbFile);

        return thumbFile;
    }

}
