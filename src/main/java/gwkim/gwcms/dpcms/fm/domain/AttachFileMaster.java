package gwkim.gwcms.dpcms.fm.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.dpcms.bm.domain.Post;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity(name = "tb_fm_attach_file_master")
@Getter
@Setter
@NoArgsConstructor
public class AttachFileMaster {

    @Id
    @Column(name = "file_master_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long fileMasterId;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "post_id")
    private Post post;

    @JsonIgnore
    @OneToMany(mappedBy = "fileMaster", cascade = CascadeType.ALL)
    private List<AttachFile> fileList = new ArrayList<>();
    private LocalDateTime createDateTime;
    private String useAt;

    public void addAttachFile(AttachFile attachFile) {
        this.fileList.add(attachFile);
        attachFile.setFileMaster(this);
    }

    @Builder
    public AttachFileMaster(Post post, LocalDateTime createDateTime, String useAt) {
        this.post = post;
        this.createDateTime = createDateTime;
        this.useAt = useAt;
    }

    /**
     * 마스터 파일 엔티티 생성
     * @param post Post : 게시물
     * @param attachFileList AttachFile[] : 첨부파일
     * @return AttachFileMaster
     */
    public static AttachFileMaster createMasterFile(Post post, AttachFile... attachFileList) {
        AttachFileMaster fileMaster = new AttachFileMaster().builder()
                .post(post)
                .build();

        for (AttachFile attachFile : attachFileList) {
            fileMaster.addAttachFile(attachFile);
        }

        return fileMaster;
    }

}
