package gwkim.gwcms.dpcms.mm.domain.id;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Data
@Embeddable
@NoArgsConstructor
public class MemberConfirmManageId implements Serializable {
    private String systemId;
    private String memberType;

    @Builder
    public MemberConfirmManageId(String systemId, String memberType) {
        this.systemId = systemId;
        this.memberType = memberType;
    }
}
