package gwkim.gwcms.dpcms.sv.repository.impl;

import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.dpcms.sv.repository.SurveyAnswerMasterCustomRepository;
import gwkim.gwcms.dpcms.sv.domain.QSurvey;
import gwkim.gwcms.dpcms.sv.domain.QSurveyAnswerMaster;
import gwkim.gwcms.dpcms.sv.domain.QSurveyItemDetail;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class SurveyAnswerMasterCustomRepositoryImpl implements SurveyAnswerMasterCustomRepository {
    private final JPAQueryFactory jpaQueryFactory;

    @Override
    public int findAnswerMemberCountBySurveyId(Long surveyId) {
        return jpaQueryFactory
                .select(QSurveyAnswerMaster.surveyAnswerMaster.member)
                .from(QSurvey.survey)
                .join(QSurvey.survey.surveyAnswerMasterList, QSurveyAnswerMaster.surveyAnswerMaster)
                .join(QSurveyAnswerMaster.surveyAnswerMaster.surveyItemDetail, QSurveyItemDetail.surveyItemDetail)
                .where(QSurvey.survey.surveyId.eq(surveyId))
                .groupBy(QSurveyAnswerMaster.surveyAnswerMaster.member.memberId)
                .fetch().size();
    }
}
