package gwkim.gwcms.dpcms.tm.repository.impl;

import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.tm.domain.Template;
import gwkim.gwcms.dpcms.tm.repository.TemplateManageCustomRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.util.List;

import static gwkim.gwcms.dpcms.tm.domain.QTemplate.template;

@RequiredArgsConstructor
public class TemplateManageCustomRepositoryImpl implements TemplateManageCustomRepository {
    private final JPAQueryFactory queryFactory;

    /**
     * 템플릿 리스트 페이징 조회
     * @param condition SearchCondition
     * @param pageable Pageable
     * @return Page<Template>
     */
    @Override
    public Page<Template> searchTemplateListPaging(SearchCondition condition, Pageable pageable) {
        List<Template> contents = queryFactory
                .selectFrom(template)
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        Long count = queryFactory
                .select(template.count())
                .from(template)
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetchOne();

        return new PageImpl<>(contents, pageable, count);
    }
}
