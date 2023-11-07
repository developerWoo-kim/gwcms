package gwkim.gwcms.dpcms.sm.repository;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.sm.domain.System;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Optional;

public interface SystemManageCustomRepository {

    /**
     * 시스템 관리 페이징 리스트
     * @param condition SearchCondition
     * @param pageable Pageable
     * @return Page<System>
     */
    Page<System> searchSystemManagePageList(SearchCondition condition, Pageable pageable);

    Optional<List<System>> findListOfSystemToManage(List<String> sysIdList);
}
