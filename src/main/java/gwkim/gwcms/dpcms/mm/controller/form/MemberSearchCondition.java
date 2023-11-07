package gwkim.gwcms.dpcms.mm.controller.form;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MemberSearchCondition extends SearchCondition {
    private String memberId;
}
