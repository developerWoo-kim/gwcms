package gwkim.gwcms.dpcms.bm.controller.condition;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class PostManageSearchCondition extends SearchCondition {
    private String systemId;
    private String systemName;
    private Long boardId;
}
