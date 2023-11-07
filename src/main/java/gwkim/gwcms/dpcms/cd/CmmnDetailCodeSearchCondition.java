package gwkim.gwcms.dpcms.cd;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import lombok.Data;

@Data
public class CmmnDetailCodeSearchCondition extends SearchCondition {
    private String commonCode;
}
