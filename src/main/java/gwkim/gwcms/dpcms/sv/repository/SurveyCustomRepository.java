package gwkim.gwcms.dpcms.sv.repository;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.sv.controller.dto.SurveyDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface SurveyCustomRepository {
    /**
     * 설문 관리 목록 조회 - 페이징 리스트
     * @param condition SearchCondition
     * @param pageable Pageable
     * @return Page<SurveyDto>
     */
    Page<SurveyDto> searchSurveyManagePagingList(SearchCondition condition, Pageable pageable);
}
