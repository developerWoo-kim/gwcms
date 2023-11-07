package gwkim.gwcms.dpcms.cfm.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.UUID;

/**
 *	Class Name	: CommonFile.java
 *	Description	: 공통 파일 엔티티
 *	Modification Information
 *	수정일		수정자		수정 내용
 *	-----------	----------	---------------------------
 *	2023.10.27	gwkim		최초 생성
 *
 *
 *	@author  gwkim
 *	@since  2023.10.27
 *	@version 1.0
 */
@Getter
@Setter
@NoArgsConstructor
@Entity(name = "tb_cfm_common_file")
public class CommonFile {
    @Id
    @Column(name = "common_file_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long fileId;          // 파일 아이디

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "common_file_master_id")
    private CommonFileMaster commonFileMaster;

    private String fileKey;             // 파일 고유 식별 키
    private String fileType;            // 파일 유형
    private String filePath;            // 파일 경로
    private long fileSize;              // 파일 용량
    private String fileExtension;       // 파일 확장자
    private String originalFileName;    // 원본 파일명
    private String saveFileName;        // 저장 파일명

    @Builder
    public CommonFile(String fileKey, String fileType, String filePath, long fileSize, String fileExtension, String originalFileName, String saveFileName) {
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
     * @param uploadPath String 업로드 경로
     * @param file : MultipartFile
     * @return AttachFile
     */
    public static CommonFile createCommonFile(String uploadPath, MultipartFile file) {
        String fileKey = UUID.randomUUID().toString();
        String originalFileName = file.getOriginalFilename();
        String fileExtension = originalFileName.substring(originalFileName.lastIndexOf(".") + 1).toLowerCase();
        String saveFileName = UUID.randomUUID().toString() + System.currentTimeMillis() + "." + fileExtension;
        String path = uploadPath + saveFileName;
        long fileSize = file.getSize();

        CommonFile commonFile = new CommonFile().builder()
                .fileKey(fileKey)
                .originalFileName(originalFileName)
                .fileExtension(fileExtension)
                .saveFileName(saveFileName)
                .filePath(path)
                .fileSize(fileSize)
                .build();

        return commonFile;
    }

}
