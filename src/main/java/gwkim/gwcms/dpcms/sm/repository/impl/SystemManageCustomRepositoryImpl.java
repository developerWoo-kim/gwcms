package gwkim.gwcms.dpcms.sm.repository.impl;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageCustomRepository;
import gwkim.gwcms.dpcms.sm.domain.QSystem;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Optional;


@RequiredArgsConstructor
public class SystemManageCustomRepositoryImpl implements SystemManageCustomRepository {
    private final JPAQueryFactory queryFactory;

    @Override
    public Page<System> searchSystemManagePageList(SearchCondition condition, Pageable pageable) {
        List<System> contents = queryFactory
                .selectFrom(QSystem.system)
                .where(searchCondition(condition.getSearchText(), condition.getSearchType()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        Long count = queryFactory
                .select(QSystem.system.count())
                .from(QSystem.system)
                .where(searchCondition(condition.getSearchText(), condition.getSearchType()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetchOne();

        return new PageImpl<>(contents, pageable, count);
    }

    @Override
    public Optional<List<System>> findListOfSystemToManage(List<String> sysIdList) {
        return Optional.ofNullable(
                queryFactory
                        .selectFrom(QSystem.system)
                        .where(QSystem.system.systemId.in(sysIdList))
                        .fetch()
        );

    }

    /**
     * 검색 조건
     *
     * @param searchText String 검색어
     * @param searchType String 검색 유형
     * @return BooleanBuilder
     */
    private BooleanBuilder searchCondition(String searchText, String searchType) {
        BooleanBuilder booleanBuilder = new BooleanBuilder();
        if(!StringUtils.hasText(searchText) && !StringUtils.hasText(searchType)) {
            return null;
        }

        if(StringUtils.hasText(searchText)) {
            booleanBuilder
                    .or(QSystem.system.systemName.contains(searchText))
                    .or(QSystem.system.systemId.contains(searchText));
        }

        if(StringUtils.hasText(searchType)) {
            booleanBuilder
                    .and(QSystem.system.systemStatus.eq(searchType));
        }

        return booleanBuilder;
    }

}
