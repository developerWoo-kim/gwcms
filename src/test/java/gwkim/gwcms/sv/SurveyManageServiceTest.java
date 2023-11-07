package gwkim.gwcms.sv;


import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.dpcms.sv.controller.dto.result.SurveyResultDto;
import gwkim.gwcms.dpcms.sv.controller.dto.result.SurveyResultItemDto;
import gwkim.gwcms.cmm.utils.chart.pieChart.PieChart;
import gwkim.gwcms.dpcms.sv.controller.dto.result.chart.SurveyPieChartResult;
import gwkim.gwcms.dpcms.sv.domain.QSurvey;
import gwkim.gwcms.dpcms.sv.domain.Survey;
import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemDetail;
import gwkim.gwcms.dpcms.sv.repository.SurveyRepository;
import gwkim.gwcms.dpcms.sv.domain.*;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@SpringBootTest
@ExtendWith(SpringExtension.class)
@Transactional(readOnly = true)
public class SurveyManageServiceTest {
    @Autowired JPAQueryFactory queryFactory;
    @Autowired
    SurveyRepository surveyRepository;

    @Test
    public void findSurveyResult_graph() {
        Long surveyId = 1L;
        Survey survey = surveyRepository.findById(surveyId).orElseThrow();
        int answerMemberCount = findAnswerMemberCount(surveyId);

        SurveyResultDto surveyResultDto = new SurveyResultDto(survey, answerMemberCount);


        List<SurveyItem> surveyItemList = findSurveyResultItemList(surveyId);


        List<SurveyPieChartResult> pieChartDataDtoList = new ArrayList<>();
        for (SurveyItem surveyItem : surveyItemList) {
            List<SurveyItemDetail> surveyItemDetailList = surveyItem.getSurveyItemDetailList();

            SurveyPieChartResult pieChartDataDto = new SurveyPieChartResult(surveyItem);
            // 레이블 세팅 시작
            pieChartDataDto.setLabels(
                    surveyItemDetailList.stream()
                            .map(SurveyItemDetail::getItemDetailName)
                            .collect(Collectors.toList())
            );
            // 데이터 세팅 시작
            PieChart pieChart = new PieChart();
            // 전체 데이터 수 확인
            int totalCount = surveyItemDetailList.stream()
                    .mapToInt(surveyItemDetail -> surveyItemDetail.getSurveyAnswerMaster().size())
                    .sum();
            pieChart.setData(
                    surveyItemDetailList.stream()
                            .map(s -> {
                                return Math.round(((double) s.getSurveyAnswerMaster().size() / totalCount) * 100);
                            })
                            .collect(Collectors.toList())
            );
            // 카테고리 데이터 세팅 시작
            pieChartDataDto.createChartCategoryData(surveyItemDetailList.size());

            // 차트 색상 세팅
            pieChart.createBackgroundColor();

            pieChartDataDto.setChartData(pieChart);

            pieChartDataDtoList.add(pieChartDataDto);
        }

        System.out.println(pieChartDataDtoList);
    }

    @Test
    public void findTest() {
        Long surveyId = 1L;
        Survey survey = surveyRepository.findById(surveyId).orElseThrow();
        int answerMemberCount = findAnswerMemberCount(surveyId);


        List<SurveyResultItemDto> resultITemDtoList = new ArrayList<>();
        List<SurveyItem> surveyItemList = findSurveyResultItemList(surveyId);
        for (SurveyItem item : surveyItemList) {
            resultITemDtoList.add(new SurveyResultItemDto(item));
        }

        SurveyResultDto surveyResult = new SurveyResultDto(survey, answerMemberCount, resultITemDtoList);

        System.out.println(surveyResult);
    }

    public List<SurveyItem> findSurveyResultItemList(Long surveyId) {
        return queryFactory
                .select(QSurveyItem.surveyItem).distinct()
                .from(QSurveyItem.surveyItem)
                .join(QSurveyItem.surveyItem.surveyItemDetailList, QSurveyItemDetail.surveyItemDetail)
                .leftJoin(QSurveyItemDetail.surveyItemDetail.surveyAnswerMaster, QSurveyAnswerMaster.surveyAnswerMaster)
                .where(QSurveyItem.surveyItem.survey.surveyId.eq(surveyId))
                .fetch();
    }

    public int findAnswerMemberCount(Long surveyId) {
        return queryFactory
                .select(QSurveyAnswerMaster.surveyAnswerMaster.member)
                .from(QSurvey.survey)
                .join(QSurvey.survey.surveyAnswerMasterList, QSurveyAnswerMaster.surveyAnswerMaster)
                .join(QSurveyAnswerMaster.surveyAnswerMaster.surveyItemDetail, QSurveyItemDetail.surveyItemDetail)
                .where(QSurvey.survey.surveyId.eq(1L))
                .groupBy(QSurveyAnswerMaster.surveyAnswerMaster.member.memberId)
                .fetch().size();
    }



}
