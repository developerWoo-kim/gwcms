package gwkim.gwcms.dpcms.sv.repository.impl;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Projections;
import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.sv.controller.dto.SurveyDto;
import gwkim.gwcms.dpcms.sv.domain.QSurvey;
import gwkim.gwcms.dpcms.sv.repository.SurveyCustomRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;

import java.util.List;

@RequiredArgsConstructor
public class SurveyCustomRepositoryImpl implements SurveyCustomRepository {
    private final JPAQueryFactory queryFactory;

    /**
     * 설문 관리 목록 조회 - 페이징 리스트
     * @param condition
     * @param pageable
     * @return
     */
    public Page<SurveyDto> searchSurveyManagePagingList(SearchCondition condition, Pageable pageable) {
        List<SurveyDto> contents = queryFactory
                .select(Projections.constructor(SurveyDto.class,
                        QSurvey.survey.surveyId,
                        QSurvey.survey.surveyTitle,
                        QSurvey.survey.surveyContent,
                        QSurvey.survey.periodAt,
                        QSurvey.survey.startDate,
                        QSurvey.survey.endDate,
                        QSurvey.survey.createDateTime
                ))
                .from(QSurvey.survey)
                .where(surveySearch(condition.getSearchText()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        Long count = queryFactory
                .select(QSurvey.survey.count())
                .from(QSurvey.survey)
                .where(surveySearch(condition.getSearchText()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetchOne();

        return new PageImpl<>(contents, pageable, count);
    }

    /**
     * 검색 조건 : surveyTitle(설문 제목)
     *
     * @param searchTxt
     * @return
     */
    private BooleanBuilder surveySearch(String searchTxt) {
        if (!StringUtils.hasText(searchTxt)) {
            return null;
        }
        BooleanBuilder booleanBuilder = new BooleanBuilder()
                .or(QSurvey.survey.surveyTitle.contains(searchTxt));
        return booleanBuilder;
    }
}
