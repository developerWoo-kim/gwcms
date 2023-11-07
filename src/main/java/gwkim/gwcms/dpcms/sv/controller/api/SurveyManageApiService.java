package gwkim.gwcms.dpcms.sv.controller.api;

import gwkim.gwcms.cmm.utils.chart.pieChart.PieChart;
import gwkim.gwcms.dpcms.cfm.controller.dto.CommonFileMasterDto;
import gwkim.gwcms.dpcms.cfm.domain.CommonFileMaster;
import gwkim.gwcms.dpcms.cfm.service.CommonFileService;
import gwkim.gwcms.dpcms.sv.controller.dto.SurveyDto;
import gwkim.gwcms.dpcms.sv.controller.dto.SurveyItemDto;
import gwkim.gwcms.dpcms.sv.controller.dto.result.SurveyResultDto;
import gwkim.gwcms.dpcms.sv.controller.dto.result.SurveyResultItemDto;
import gwkim.gwcms.dpcms.sv.controller.dto.result.chart.SurveyChartResult;
import gwkim.gwcms.dpcms.sv.controller.dto.result.chart.SurveyPieChartResult;
import gwkim.gwcms.dpcms.sv.controller.form.SurveyInsertForm;
import gwkim.gwcms.dpcms.sv.domain.Survey;
import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemDetail;
import gwkim.gwcms.dpcms.sv.repository.SurveyAnswerMasterRepository;
import gwkim.gwcms.dpcms.sv.repository.SurveyItemRepository;
import gwkim.gwcms.dpcms.sv.repository.SurveyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class SurveyManageApiService {
    private final SurveyRepository surveyRepository;
    private final SurveyItemRepository surveyItemRepository;
    private final SurveyAnswerMasterRepository surveyAnswerMasterRepository;
    private final CommonFileService commonFileService;


    /**
     * 설문 조회
     * @param surveyId : Long
     * @return SurveyDto
     */
    public SurveyDto findSurvey(Long surveyId) {
        Survey findSurvey = surveyRepository.findById(surveyId).orElseThrow();
        SurveyDto survey = new SurveyDto(findSurvey);
        for (SurveyItemDto surveyItem : survey.getSurveyItemList()) {
            Optional<CommonFileMaster> findFile = commonFileService.findByIdentifier(surveyItem.getSurveyItemKey());
            findFile.ifPresent(commonFileMaster -> surveyItem.setFileMaster(new CommonFileMasterDto(commonFileMaster)));
        }
        return survey;
    }

    /**
     * 설문 결과 조회 - 표
     * @param surveyId Long
     * @return SurveyResultDto
     */
    public SurveyResultDto findSurveyResult(Long surveyId) {
        Survey survey = surveyRepository.findById(surveyId).orElseThrow();
        int answerMemberCount = surveyAnswerMasterRepository.findAnswerMemberCountBySurveyId(surveyId);
        List<SurveyResultItemDto> resultITemDtoList = findSurveyResultItemReturnDto(surveyId);
        return new SurveyResultDto(survey, answerMemberCount, resultITemDtoList);
    }

    /**
     * 설문 결과 조회 - 그래프
     * @param surveyId
     * @return
     */
    public SurveyChartResult findSurveyPieChartResult(Long surveyId) {
        Survey survey = surveyRepository.findById(surveyId).orElseThrow();
        int answerMemberCount = surveyAnswerMasterRepository.findAnswerMemberCountBySurveyId(surveyId);

        List<SurveyItem> surveyItemList = surveyItemRepository.findSurveyResultItemList(surveyId);

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
//                                return Long.valueOf(s.getSurveyAnswerMaster().size());
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

        return new SurveyChartResult(survey, answerMemberCount, pieChartDataDtoList);
    }

    /**
     * 설문 결과 항목 조회 - 반환은 DTO
     * @param surveyId Long
     * @return List<SurveyResultItemDto>
     */
    public List<SurveyResultItemDto> findSurveyResultItemReturnDto(Long surveyId) {
        List<SurveyItem> surveyResultItemList = surveyItemRepository.findSurveyResultItemList(surveyId);

        List<SurveyResultItemDto> resultITemDtoList = new ArrayList<>();
        for (SurveyItem item : surveyResultItemList) {
            resultITemDtoList.add(new SurveyResultItemDto(item));
        }
        return resultITemDtoList;
    }

    /**
     * 설문 저장
     *
     * @param form : SurveyInsertForm
     */
    @Transactional
    public void saveSurvey(SurveyInsertForm form) {
        Survey survey = Survey.createSurvey(form);

        for (SurveyItem item : survey.getSurveyItemList()) {
            if(item.getFile() != null) {
                commonFileService.save(item.getSurveyItemKey(), "/upload/", item.getFile());
            }
        }

        surveyRepository.save(survey);
    }
}
