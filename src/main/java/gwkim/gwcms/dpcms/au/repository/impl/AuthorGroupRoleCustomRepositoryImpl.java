package gwkim.gwcms.dpcms.au.repository.impl;

import com.querydsl.core.types.Projections;
import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.dpcms.au.controller.api.query.AuthorGroupRoleQueryDto;
import gwkim.gwcms.dpcms.au.controller.search.AuthorSearchCondition;
import gwkim.gwcms.dpcms.au.domain.QAuthorGroup;
import gwkim.gwcms.dpcms.au.domain.QAuthorGroupRole;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupRoleCustomRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.util.List;

@RequiredArgsConstructor
public class AuthorGroupRoleCustomRepositoryImpl implements AuthorGroupRoleCustomRepository {
    private final JPAQueryFactory queryFactory;
    @Override
    public Page<AuthorGroupRoleQueryDto> searchPageAuthorGroupRole(AuthorSearchCondition condition, Pageable pageable) {
        List<AuthorGroupRoleQueryDto> contents = queryFactory
                .select(Projections.constructor(AuthorGroupRoleQueryDto.class,
                        QAuthorGroup.authorGroup.authorGroupId,
                        QAuthorGroup.authorGroup.authorGroupName,
                        QAuthorGroupRole.authorGroupRole.authorGroupRoleId,
                        QAuthorGroupRole.authorGroupRole.authorGroupRoleName
                ))
                .from(QAuthorGroup.authorGroup)
                .join(QAuthorGroup.authorGroup.roleList, QAuthorGroupRole.authorGroupRole)
                .where(QAuthorGroup.authorGroup.authorGroupId.eq(condition.getAuthorGroupId()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        Long count = queryFactory
                .select(QAuthorGroup.authorGroup.count())
                .from(QAuthorGroup.authorGroup)
                .join(QAuthorGroup.authorGroup.roleList, QAuthorGroupRole.authorGroupRole)
                .where(QAuthorGroup.authorGroup.authorGroupId.eq(condition.getAuthorGroupId()))
                .fetchOne();

        return new PageImpl<>(contents, pageable, count);
    }
}
