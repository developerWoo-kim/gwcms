package gwkim.gwcms.dpcms.sv.service;

import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import gwkim.gwcms.dpcms.sv.repository.SurveyItemRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class SurveyItemService {
    private final SurveyItemRepository surveyItemRepository;

    public List<SurveyItem> findSurveyResultItemList(Long surveyMasterId) {
        return surveyItemRepository.findSurveyResultItemList(surveyMasterId);
    }

    public List<SurveyItem> findSurveyResultItemList(Long surveyId, Long surveyManageId) {
        List<SurveyItem> surveyResultItemList = surveyItemRepository.findSurveyResultItemList(surveyId);

        return surveyItemRepository.findSurveyResultItemList(surveyId, surveyManageId);
    }

}
