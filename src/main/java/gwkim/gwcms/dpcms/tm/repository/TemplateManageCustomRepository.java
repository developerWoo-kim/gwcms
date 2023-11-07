package gwkim.gwcms.dpcms.tm.repository;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.tm.domain.Template;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface TemplateManageCustomRepository {

    /**
     * 템플릿 리스트 페이징 조회
     * @param condition SearchCondition
     * @param pageable Pageable
     * @return Page<Template>
     */
    Page<Template> searchTemplateListPaging(SearchCondition condition, Pageable pageable);
}
