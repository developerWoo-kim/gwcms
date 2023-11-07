package gwkim.gwcms.dpcms.mm.domain;

import gwkim.gwcms.dpcms.mm.domain.id.MemberConfirmManageId;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity(name = "tb_mm_member_confirm_manage")
@Getter
@Setter
@NoArgsConstructor
public class MemberConfirmManage {
    @EmbeddedId
    private MemberConfirmManageId id;

    private String automaticAt;
}
