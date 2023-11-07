package gwkim.gwcms.dpcms.cd.repository;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.cd.controller.dto.CommonDetailCodeQueryDto;
import gwkim.gwcms.dpcms.cd.CmmnDetailCodeSearchCondition;
import gwkim.gwcms.dpcms.cd.domain.CommonCode;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface CommonCodeCustomRepository {
    /**
     * 공통 코드 리스 조회 페이징
     * @param condition
     * @param pageable
     * @return
     */
    Page<CommonCode> searchPageSimple(SearchCondition condition, Pageable pageable);

    /**
     * 상세 공통 코드 리스트 조회 페이징
     * @param condition
     * @param pageable
     * @return
     */
    Page<CommonDetailCodeQueryDto> searchPageCommonCodeDetail(CmmnDetailCodeSearchCondition condition, Pageable pageable);

}
