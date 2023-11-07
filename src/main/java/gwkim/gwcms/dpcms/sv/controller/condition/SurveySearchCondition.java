package gwkim.gwcms.dpcms.sv.controller.condition;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class SurveySearchCondition extends SearchCondition {
    private Long surveyId;
}
