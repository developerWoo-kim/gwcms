package gwkim.gwcms.dpcms.sv.repository;

import gwkim.gwcms.dpcms.sv.domain.SurveyItem;

import java.util.List;

public interface SurveyItemCustomRepository {

    /**
     * 설문 문항 조회 - 설문 결과 조회용
     *
     * @param surveyId Long
     * @return List<SurveyItem>
     */
    List<SurveyItem> findSurveyResultItemList(Long surveyId);
    List<SurveyItem> findSurveyResultItemList(Long surveyId, Long surveyManageId);
}
