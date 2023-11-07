package gwkim.gwcms.dpcms.mm.repository;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.mm.controller.dto.MemberManageListDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface MemberManageCustomRepository {
    Page<MemberManageListDto> findMemberManageListPage(SearchCondition condition, Pageable pageable);
}
