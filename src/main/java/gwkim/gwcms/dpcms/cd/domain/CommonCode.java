package gwkim.gwcms.dpcms.cd.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity(name = "tb_cd_common_code")
@Getter @Setter
@NoArgsConstructor
public class CommonCode {
    @Id
    @Column(name = "common_code")
    private String commonCode;    // 공통 코드
    private String commonCodeName;  // 공통 코드 이름
    private String commonCodeDescription;  // 공통 코드 설명
    private String useAt;       // 사용여부

    @JsonIgnore
    @OneToMany(mappedBy = "commonCode", cascade = CascadeType.ALL)
    private List<CommonDetailCode> commonCodeDetailList = new ArrayList<>();

    @Builder
    public CommonCode(String commonCode, String commonCodeName, String commonCodeDescription, String useAt) {
        this.commonCode = commonCode;
        this.commonCodeName = commonCodeName;
        this.commonCodeDescription = commonCodeDescription;
        this.useAt = useAt;
    }
}
