package gwkim.gwcms.dpcms.sv.controller;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.cmm.utils.paging.PagingDto;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.sv.controller.api.SurveyManageApiService;
import gwkim.gwcms.dpcms.sv.controller.condition.SurveySearchCondition;
import gwkim.gwcms.dpcms.sv.controller.dto.SurveyDto;
import gwkim.gwcms.dpcms.sv.controller.dto.result.SurveyResultDto;
import gwkim.gwcms.dpcms.sv.controller.dto.result.chart.SurveyChartResult;
import gwkim.gwcms.dpcms.sv.repository.SurveyItemRepository;
import gwkim.gwcms.dpcms.sv.repository.SurveyRepository;
import gwkim.gwcms.dpcms.sv.service.SurveyItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
public class SurveyManageController {
    private final SurveyManageApiService surveyManageApiService;
    private final SurveyItemService surveyItemService;
    private final SurveyItemRepository surveyItemRepository;
    private final SurveyRepository surveyRepository;

    /**
     * 설문 관리 페이징 리스트
     * @param condition SearchCondition
     * @param pageable Pageable
     * @param model Model
     * @return String
     */
    @RequestMapping("/admin/sv/survey/manage-list")
    public String postManageList(SearchCondition condition, @PageableDefault(size = 10) Pageable pageable, Model model) {
        Page<SurveyDto> page = surveyRepository.searchSurveyManagePagingList(condition,pageable);
        PagingDto<SurveyDto> paging = new PagingDto<>(page.getContent(), page.getTotalElements(), page.getNumber(), page.getSize());

        model.addAttribute("condition", condition);
        model.addAttribute("pagination", paging);
        model.addAttribute("content", "dpcms/sv/surveyManageList.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 설문 관리 상세 화면
     * @param condition
     * @param model
     * @return
     */
    @RequestMapping("/admin/sv/survey/manage-detail/{surveyId}")
    public String surveyDetailPage(SurveySearchCondition condition, Model model) {

        SurveyDto survey = surveyManageApiService.findSurvey(condition.getSurveyId());

        model.addAttribute("survey", survey);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/sv/surveyManageDetail.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 설문 양식 등록 화면
     *
     * @param model : Model
     * @return String
     */
    @RequestMapping("/admin/sv/survey/manage-insertPage")
    public String surveyInsertPage(SearchCondition condition, Model model) {

        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/sv/surveyInsertPage.jsp");

        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 설문 결과 화면 - 표
     * @param model : Model
     * @return String
     */
    @RequestMapping("/admin/sv/survey/resultPage-table")
    public String surveyResultPage_table(SurveySearchCondition condition, Model model) {
        SurveyResultDto surveyResult = surveyManageApiService.findSurveyResult(condition.getSurveyId());

        model.addAttribute("survey", surveyResult);
        model.addAttribute("condition", condition);
        model.addAttribute("content", "dpcms/sv/surveyResultPage_table.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }

    /**
     * 설문 결과 화면 - 그래프
     * @param model : Model
     * @return String
     */
    @RequestMapping("/admin/sv/survey/resultPage-graph")
    public String surveyResultPage_graph(Model model) {
        SurveyChartResult result = surveyManageApiService.findSurveyPieChartResult(1L);
        model.addAttribute("result", result);
        model.addAttribute("content", "dpcms/sv/surveyResultPage_graph.jsp");
        return CommonUtil.getSubLayoutPathBySysID("admin");
    }
}
