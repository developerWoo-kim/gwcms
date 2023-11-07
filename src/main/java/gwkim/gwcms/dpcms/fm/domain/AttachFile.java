package gwkim.gwcms.dpcms.fm.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.UUID;

@Entity(name = "tb_fm_attach_file")
@Getter
@Setter
@NoArgsConstructor
public class AttachFile {
    @Id
    @Column(name = "file_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long fileId;                        // 파일 아이디
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "file_master_id")
    private AttachFileMaster fileMaster;              // 파일 마스터

    private String fileKey;                     // 파일 고유 식별 키
    private String fileType;                    // 파일 유형
    private String filePath;                    // 파일 경로
    private long fileSize;                       // 파일 용량
    private String fileExtension;               // 파일 확장자
    private String originalFileName;            // 원본 파일명
    private String saveFileName;                // 저장 파일명

    @Builder
    public AttachFile(String fileKey, String fileType, String filePath, long fileSize, String fileExtension, String originalFileName, String saveFileName) {
        this.fileKey = fileKey;
        this.fileType = fileType;
        this.filePath = filePath;
        this.fileSize = fileSize;
        this.fileExtension = fileExtension;
        this.originalFileName = originalFileName;
        this.saveFileName = saveFileName;
    }

    /**
     * 파일 엔티티 생성
     *
     * @param file : MultipartFile
     * @param filePath : 파일 저장 경로
     * @return AttachFile
     */
    public static AttachFile createAttachFile(MultipartFile file, String filePath) {
        String fileKey = UUID.randomUUID().toString();
        String originalFileName = file.getOriginalFilename();
        String fileExtension = originalFileName.substring(originalFileName.lastIndexOf(".") + 1).toLowerCase();
        String saveFileName = UUID.randomUUID().toString() + System.currentTimeMillis() + "." + fileExtension;
        String path = filePath + "/" + saveFileName;
        long fileSize = file.getSize();

        AttachFile attachFile = new AttachFile().builder()
                .fileKey(fileKey)
                .originalFileName(originalFileName)
                .fileExtension(fileExtension)
                .saveFileName(saveFileName)
                .filePath(path)
                .fileSize(fileSize)
                .build();

        return attachFile;
    }
}
