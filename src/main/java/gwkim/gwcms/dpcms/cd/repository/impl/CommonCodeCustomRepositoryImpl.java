package gwkim.gwcms.dpcms.cd.repository.impl;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Projections;
import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.cd.controller.dto.CommonDetailCodeQueryDto;
import gwkim.gwcms.dpcms.cd.CmmnDetailCodeSearchCondition;
import gwkim.gwcms.dpcms.cd.domain.CommonCode;
import gwkim.gwcms.dpcms.cd.repository.CommonCodeCustomRepository;
import gwkim.gwcms.dpcms.cd.domain.QCommonCode;
import gwkim.gwcms.dpcms.cd.domain.QCommonDetailCode;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;

import java.util.List;

@RequiredArgsConstructor
public class CommonCodeCustomRepositoryImpl implements CommonCodeCustomRepository {
    private final JPAQueryFactory queryFactory;

    /**
     * 공통 코드 조회 페이징
     *
     * @param condition
     * @param pageable
     * @return
     */
    @Override
    public Page<CommonCode> searchPageSimple(SearchCondition condition, Pageable pageable) {
        List<CommonCode> contents = queryFactory
                .selectFrom(QCommonCode.commonCode1)
                .where(commonCodeSearchCondition(condition.getSearchText()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        Long count = queryFactory
                .select(QCommonCode.commonCode1.count())
                .from(QCommonCode.commonCode1)
                .where(commonCodeSearchCondition(condition.getSearchText()))
                .fetchOne();

        return new PageImpl<>(contents, pageable, count);
    }

    /**
     * 공통 코드 관리 검색 조건 : commonCode(코드) || commonCodeName(코드명)
     * @param searchText
     * @return
     */
    private BooleanBuilder commonCodeSearchCondition(String searchText) {
        if (!StringUtils.hasText(searchText)) {
            return null;
        }
        BooleanBuilder booleanBuilder = new BooleanBuilder()
                .or(QCommonCode.commonCode1.commonCode.contains(searchText))
                .or(QCommonCode.commonCode1.commonCodeName.contains(searchText));
        return booleanBuilder;
    }

    /**
     * 상세 공통 코드 리스트 조회 페이징
     * @param condition
     * @param pageable
     * @return
     */
    @Override
    public Page<CommonDetailCodeQueryDto> searchPageCommonCodeDetail(CmmnDetailCodeSearchCondition condition, Pageable pageable) {

        List<CommonDetailCodeQueryDto> contents = queryFactory
                .select(Projections.constructor(CommonDetailCodeQueryDto.class,
                        QCommonCode.commonCode1.commonCode,
                        QCommonCode.commonCode1.commonCodeName,
                        QCommonDetailCode.commonDetailCode.id.commonDetailCode,
                        QCommonDetailCode.commonDetailCode.commonDetailCodeName,
                        QCommonDetailCode.commonDetailCode.commonDetailCodeDescription,
                        QCommonDetailCode.commonDetailCode.sortOrder,
                        QCommonDetailCode.commonDetailCode.useAt))
                .from(QCommonCode.commonCode1)
                .join(QCommonCode.commonCode1.commonCodeDetailList, QCommonDetailCode.commonDetailCode)
                .where(
                        QCommonCode.commonCode1.commonCode.eq(condition.getCommonCode()),
                        commonDetailCodeSearchCondition(condition.getSearchText())
                )
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        Long count = queryFactory
                .select(QCommonCode.commonCode1.count())
                .from(QCommonCode.commonCode1)
                .join(QCommonCode.commonCode1.commonCodeDetailList, QCommonDetailCode.commonDetailCode)
                .where(
                        QCommonCode.commonCode1.commonCode.eq(condition.getCommonCode()),
                        commonDetailCodeSearchCondition(condition.getSearchText())
                )
                .fetchOne();

        return new PageImpl<>(contents, pageable, count);
    }

    /**
     * 상세 공통 코드 검색 조건 : commonCode(상세공통코드) || commonDetailCodeName(상세공통코드명)
     *
     * @param searchTxt
     * @return
     */
    private BooleanBuilder commonDetailCodeSearchCondition(String searchTxt) {
        if (!StringUtils.hasText(searchTxt)) {
            return null;
        }
        BooleanBuilder booleanBuilder = new BooleanBuilder()
                .or(QCommonDetailCode.commonDetailCode.id.commonDetailCode.contains(searchTxt))
                .or(QCommonDetailCode.commonDetailCode.commonDetailCodeName.contains(searchTxt));
        return booleanBuilder;
    }


}
