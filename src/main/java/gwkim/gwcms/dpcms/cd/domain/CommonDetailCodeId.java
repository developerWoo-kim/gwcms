package gwkim.gwcms.dpcms.cd.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import java.io.Serializable;

@Data
@Embeddable
@NoArgsConstructor
public class CommonDetailCodeId implements Serializable {
    private String commonCode;
    @Column(name = "common_detail_code")
    private String commonDetailCode;

    @Builder
    public CommonDetailCodeId(String commonCode, String commonDetailCode) {
        this.commonCode = commonCode;
        this.commonDetailCode = commonDetailCode;
    }
}
