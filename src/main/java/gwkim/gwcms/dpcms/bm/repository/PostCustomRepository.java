package gwkim.gwcms.dpcms.bm.repository;

import gwkim.gwcms.dpcms.bm.controller.dto.PostDto;
import gwkim.gwcms.dpcms.bm.controller.condition.PostManageSearchCondition;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface PostCustomRepository {

    Page<PostDto> searchPostManagePagingList(PostManageSearchCondition condition, Pageable pageable);
}
