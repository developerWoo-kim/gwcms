package gwkim.gwcms.dpcms.mm.repository.impl;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Projections;
import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.mm.controller.dto.MemberManageListDto;
import gwkim.gwcms.dpcms.mm.repository.MemberManageCustomRepository;
import gwkim.gwcms.dpcms.mm.domain.QMember;
import gwkim.gwcms.dpcms.mm.domain.QMemberType;
import gwkim.gwcms.dpcms.sm.domain.QSystem;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;

import java.util.List;

@RequiredArgsConstructor
public class MemberManageCustomRepositoryImpl implements MemberManageCustomRepository {
    private final JPAQueryFactory queryFactory;
    @Override
    public Page<MemberManageListDto> findMemberManageListPage(SearchCondition condition, Pageable pageable) {
        List<MemberManageListDto> contents = queryFactory
                .select(Projections.constructor(MemberManageListDto.class,
                        QMember.member.memberId,
                        QMember.member.memberName,
                        QSystem.system.systemName,
                        QMemberType.memberType1.memberType,
                        QMemberType.memberType1.confirmAt,
                        QMemberType.memberType1.memberStatus
                ))
                .from(QMember.member)
                .join(QMember.member.memberType, QMemberType.memberType1)
                .join(QMemberType.memberType1.system, QSystem.system)
                .where(searchConditionForMemberManageList(condition.getSearchText()))
                .fetch();

        Long count = queryFactory
                .select(QMember.member.count())
                .from(QMember.member)
                .join(QMember.member.memberType, QMemberType.memberType1)
                .join(QMemberType.memberType1.system, QSystem.system)
                .where(searchConditionForMemberManageList(condition.getSearchText()))
                .fetchOne();

        return new PageImpl<>(contents, pageable, count);
    }

    /**
     * 회원 관리 검색 조건 : 시스템명 || 이름 || 아이디
     *
     * @param searchTxt
     * @return
     */
    private BooleanBuilder searchConditionForMemberManageList(String searchTxt) {
        if (!StringUtils.hasText(searchTxt)) {
            return null;
        }
        BooleanBuilder booleanBuilder = new BooleanBuilder()
                .or(QSystem.system.systemName.contains(searchTxt))
                .or(QMember.member.memberName.contains(searchTxt))
                .or(QMember.member.memberId.contains(searchTxt));

        return booleanBuilder;
    }

}
