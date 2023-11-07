package gwkim.gwcms.dpcms.mn.controller.form;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MenuSearchCondition extends SearchCondition {
    private String systemId;
    private String systemName;
}
