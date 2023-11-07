package gwkim.gwcms.dpcms.au.repository.impl;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Projections;
import com.querydsl.jpa.JPAExpressions;
import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupDto;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupMemberDto;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorListDto;
import gwkim.gwcms.dpcms.au.controller.search.AuthorSearchCondition;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupCustomRepository;
import gwkim.gwcms.dpcms.au.domain.QAuthorGroup;
import gwkim.gwcms.dpcms.au.domain.QAuthorGroupMember;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AuthorGroupCustomRepositoryImpl implements AuthorGroupCustomRepository {
    private final JPAQueryFactory queryFactory;

    /**
     * 권한 그룹 페이징 리스트 조회
     * @param condition AuthorSearchCondition
     * @param pageable  Pageable
     * @return Page<AuthorListDto>
     */
    @Override
    public Page<AuthorListDto> searchPageAuthorGroup(AuthorSearchCondition condition, Pageable pageable) {
        List<AuthorListDto> contents = queryFactory
                .select(Projections.constructor(AuthorListDto.class,
                        QAuthorGroup.authorGroup.authorGroupId,
                        QAuthorGroup.authorGroup.authorGroupName,
                        QAuthorGroup.authorGroup.authorGroupDescription
                ))
                .from(QAuthorGroup.authorGroup)
                .where(authorSearchCondition(condition))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        Long count = queryFactory
                .select(QAuthorGroup.authorGroup.count())
                .from(QAuthorGroup.authorGroup)
                .where(authorSearchCondition(condition))
                .fetchOne();

        return new PageImpl<>(contents, pageable, count);
    }

    /**
     * 부여 가능한 권한 목록 조회
     * @param memberId String 회원 아이디
     * @return List<AuthorGroupMemberDto>
     */
    @Override
    public List<AuthorGroupDto> findAvailableAuthorList(String memberId) {
        return queryFactory
                .select(Projections.constructor(AuthorGroupDto.class,
                        QAuthorGroup.authorGroup
                        ))
                .from(QAuthorGroup.authorGroup)
                .where(
                        QAuthorGroup.authorGroup.authorGroupId.notIn(
                                JPAExpressions
                                        .select(QAuthorGroupMember.authorGroupMember.authorGroup.authorGroupId)
                                        .from(QAuthorGroupMember.authorGroupMember)
                                        .where(QAuthorGroupMember.authorGroupMember.member.memberId.eq(memberId))
                        )
                )
                .fetch();
    }

    /**
     * 회원이 소유한 권한 목록 조회
     * @param memberId String 회원 아이디
     * @return List<AuthorGroupMemberDto>
     */
    @Override
    public List<AuthorGroupMemberDto> findMembersAuthorList(String memberId) {
        return queryFactory
                .select(Projections.constructor(AuthorGroupMemberDto.class,
                        QAuthorGroupMember.authorGroupMember
                ))
                .from(QAuthorGroupMember.authorGroupMember)
                .where(
                        QAuthorGroupMember.authorGroupMember.member.memberId.eq(memberId)
                )
                .fetch();
    }

    @Override
    public List<AuthorGroupDto> findGrantableAuthorList() {
        return queryFactory
                .select(Projections.constructor(AuthorGroupDto.class,
                            QAuthorGroup.authorGroup
                        ))
                .from(QAuthorGroup.authorGroup)
                .where(searchGrantableAuthor())
                .fetch();
    }

    /**
     * 검색
     * @param condition AuthorSearchCondition
     * @return BooleanBuilder
     */
    private BooleanBuilder authorSearchCondition(AuthorSearchCondition condition) {
        if (!StringUtils.hasText(condition.getSearchText())) {
            return null;
        }
        BooleanBuilder booleanBuilder = new BooleanBuilder();
        booleanBuilder
                .and(QAuthorGroup.authorGroup.authorGroupName.contains(condition.getSearchText()));
        return booleanBuilder;
    }

    /**
     * 마스터 권한 제외한 권한 조회
     * @return BooleanBuilder
     */
    private BooleanBuilder searchGrantableAuthor() {
        BooleanBuilder booleanBuilder = new BooleanBuilder();
            booleanBuilder
                    .and(QAuthorGroup.authorGroup.authorGroupName.ne("MASTER"));
        return booleanBuilder;
    }
}
