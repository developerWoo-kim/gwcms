package gwkim.gwcms.dpcms.au.controller.search;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class AuthorSearchCondition extends SearchCondition {
    private Long authorGroupId;    // 권한 그룹 아이디
}
