package gwkim.gwcms.dpcms.sv.repository.impl;

import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import gwkim.gwcms.dpcms.sv.repository.SurveyItemCustomRepository;
import gwkim.gwcms.dpcms.sv.domain.QSurveyAnswerMaster;
import gwkim.gwcms.dpcms.sv.domain.QSurveyItem;
import gwkim.gwcms.dpcms.sv.domain.QSurveyItemDetail;
import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
public class SurveyItemCustomRepositoryImpl implements SurveyItemCustomRepository {
    private final JPAQueryFactory queryFactory;

    @Override
    public List<SurveyItem> findSurveyResultItemList(Long surveyId) {
        return queryFactory
                .select(QSurveyItem.surveyItem).distinct()
                .from(QSurveyItem.surveyItem)
                .join(QSurveyItem.surveyItem.surveyItemDetailList, QSurveyItemDetail.surveyItemDetail)
                .leftJoin(QSurveyItemDetail.surveyItemDetail.surveyAnswerMaster, QSurveyAnswerMaster.surveyAnswerMaster)
                .where(QSurveyItem.surveyItem.survey.surveyId.eq(surveyId))
                .fetch();
    }

    @Override
    public List<SurveyItem> findSurveyResultItemList(Long surveyId, Long surveyManageId) {
        return queryFactory
                .select(QSurveyItem.surveyItem).distinct()
                .from(QSurveyItem.surveyItem)
                .join(QSurveyItem.surveyItem.surveyItemDetailList, QSurveyItemDetail.surveyItemDetail)
                .leftJoin(QSurveyItemDetail.surveyItemDetail.surveyAnswerMaster, QSurveyAnswerMaster.surveyAnswerMaster)
                .where(
                        QSurveyItem.surveyItem.survey.surveyId.eq(surveyId)
                        )
                .fetch();
    }
}
