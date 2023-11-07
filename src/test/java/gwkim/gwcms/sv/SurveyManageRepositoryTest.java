package gwkim.gwcms.sv;

import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.dpcms.sv.controller.dto.result.SurveyResultDto;
import gwkim.gwcms.dpcms.sv.controller.dto.result.SurveyResultItemDto;
import gwkim.gwcms.dpcms.sv.domain.Survey;
import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

import static gwkim.gwcms.dpcms.sv.domain.QSurvey.survey;
import static gwkim.gwcms.dpcms.sv.domain.QSurveyAnswerMaster.surveyAnswerMaster;
import static gwkim.gwcms.dpcms.sv.domain.QSurveyItem.surveyItem;
import static gwkim.gwcms.dpcms.sv.domain.QSurveyItemDetail.surveyItemDetail;

@SpringBootTest
@ExtendWith(SpringExtension.class)
@Transactional(readOnly = true)
public class SurveyManageRepositoryTest {
    @Autowired
    JPAQueryFactory jpaQueryFactory;

    @Test
    public void statisticsTest() {

        Survey findSurvey = jpaQueryFactory
                .selectFrom(survey)
                .where(survey.surveyId.eq(1L))
                .fetchOne();

        List<SurveyItem> surveyAnswerList = jpaQueryFactory
                .select(surveyItem).distinct()
                .from(surveyItem)
                .join(surveyItem.surveyItemDetailList, surveyItemDetail)
                .leftJoin(surveyItemDetail.surveyAnswerMaster, surveyAnswerMaster)
                .where(surveyItem.survey.surveyId.eq(1L))
                .fetch();

        List<SurveyResultItemDto> resultList = new ArrayList<>();
        for (SurveyItem item : surveyAnswerList) {
            resultList.add(new SurveyResultItemDto(item));
        }

        SurveyResultDto surveyResultDto = new SurveyResultDto(findSurvey, 0, resultList);

        System.out.println(surveyAnswerList);

    }
}
