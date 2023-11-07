package gwkim.gwcms.dpcms.sv.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.dpcms.sv.controller.dto.SurveyDto;
import gwkim.gwcms.dpcms.sv.controller.dto.result.SurveyResultAnswerDto;
import gwkim.gwcms.dpcms.sv.controller.dto.result.SurveyResultDto;
import gwkim.gwcms.dpcms.sv.controller.dto.result.chart.SurveyChartResult;
import gwkim.gwcms.dpcms.sv.controller.form.SurveyInsertForm;
import gwkim.gwcms.dpcms.sv.domain.SurveyAnswerMaster;
import gwkim.gwcms.dpcms.sv.repository.SurveyAnswerMasterRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequiredArgsConstructor
public class SurveyManageApiController {
    private final SurveyManageApiService surveyManageApiService;
    private final SurveyAnswerMasterRepository surveyAnswerMasterRepository;

    //================================== Query START ==================================//
    /**
     * 설문 조회 api
     * @param surveyId : Long
     * @return CommonResponse<SurveyDto>
     */
    @GetMapping("/admin/sv/{surveyId}/survey")
    public CommonResponse<SurveyDto> findSurvey(@PathVariable("surveyId") Long surveyId) {
        SurveyDto survey = surveyManageApiService.findSurvey(surveyId);
        return CommonResponse.commonSuccess(survey);
    }

    /**
     * 설문 결과 조회 api - 표
     * @param surveyId : Long
     * @return CommonResponse<SurveyResultDto>
     */
    @GetMapping("/admin/sv/{surveyId}/survey-result-table")
    public CommonResponse<SurveyResultDto> findSurveyResult_table(@PathVariable("surveyId") Long surveyId) {
        SurveyResultDto surveyResult = surveyManageApiService.findSurveyResult(surveyId);
        return CommonResponse.commonSuccess(surveyResult);
    }

    /**
     * 설문 결과 조회 api - 그래프
     * @param surveyId : Long
     * @return CommonResponse<SurveyResultDto>
     */
    @GetMapping("/admin/sv/{surveyId}/survey-result-graph")
    public CommonResponse<SurveyChartResult> findSurveyResult_graph(@PathVariable("surveyId") Long surveyId) {
        SurveyChartResult surveyPieChartResult = surveyManageApiService.findSurveyPieChartResult(surveyId);
        return CommonResponse.commonSuccess(surveyPieChartResult);
    }

    /**
     * 서술형 응답 내용 조회
     * @param itemDetailId : Long
     * @return CommonResponse<List<SurveyAnswerMaster>>
     */
    @GetMapping("/admin/sv/{itemDetailId}/survey-result/open-ended")
    public CommonResponse<List<SurveyResultAnswerDto>> finOpenEndedTypeAnswerList(@PathVariable("itemDetailId") Long itemDetailId) {
        List<SurveyAnswerMaster> answerList = surveyAnswerMasterRepository.findBySurveyItemDetail_ItemDetailId(itemDetailId);

        List<SurveyResultAnswerDto> answerDtoList = new ArrayList<>();
        for (SurveyAnswerMaster surveyAnswerMaster : answerList) {
            answerDtoList.add(new SurveyResultAnswerDto(surveyAnswerMaster));
        }
        return CommonResponse.commonSuccess(answerDtoList);
    }

    //================================== Query END ==================================//

    //================================== Command START ==================================//

    /**
     * 설문 저장 api
     *
     * @param surveyInsertForm SurveyInsertForm
     * @return CommonResponse<String>
     */
    @PostMapping("/admin/sv/survey")
    public CommonResponse<String> saveSurvey(@Valid SurveyInsertForm surveyInsertForm) {
        surveyManageApiService.saveSurvey(surveyInsertForm);
        return CommonResponse.commonSuccess(CommonMessage.SV_SURVEY_SAVE_SUCCESS.getMessage());
    }

    //================================== Command END ==================================//

}
