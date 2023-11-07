package gwkim.gwcms.dpcms.cfm.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 *	Class Name	: CommonFileMaster.java
 *	Description	: 공통 파일 마스터 엔티티
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
@Getter @Setter
@NoArgsConstructor
@Entity(name = "tb_cfm_common_file_master")
public class CommonFileMaster {
    @Id
    @Column(name = "common_file_master_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long fileMasterId;    // 파일 마스터 아이디
    private String identifier;        // 식별 아이디

    @JsonIgnore
    @OneToMany(mappedBy = "commonFileMaster", cascade = CascadeType.ALL)
    private List<CommonFile> fileList = new ArrayList<>();

    /**
     * 연관 관계 메서드 : CommonFileMaster - CommonFile
     * @param commonFile CommonFile
     */
    public void addCommonFile(CommonFile commonFile) {
        this.fileList.add(commonFile);
        commonFile.setCommonFileMaster(this);
    }

    /**
     * 마스터 파일 엔티티 생성
     * @param identifier String : 식별 값
     * @param commonFiles CommonFile[] : 파일
     * @return AttachFileMaster
     */
    public static CommonFileMaster createCommonMasterFile(String identifier, CommonFile... commonFiles) {
        CommonFileMaster commonFileMaster = new CommonFileMaster();
        commonFileMaster.setIdentifier(identifier);

        for (CommonFile commonFile : commonFiles) {
            commonFileMaster.addCommonFile(commonFile);
        }

        return commonFileMaster;
    }
}
