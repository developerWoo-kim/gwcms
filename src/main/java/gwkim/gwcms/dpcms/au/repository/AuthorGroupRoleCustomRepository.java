package gwkim.gwcms.dpcms.au.repository;

import gwkim.gwcms.dpcms.au.controller.api.query.AuthorGroupRoleQueryDto;
import gwkim.gwcms.dpcms.au.controller.search.AuthorSearchCondition;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface AuthorGroupRoleCustomRepository {
    Page<AuthorGroupRoleQueryDto> searchPageAuthorGroupRole(AuthorSearchCondition condition, Pageable pageable);
}
