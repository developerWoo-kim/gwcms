package gwkim.gwcms.dpcms.au.repository;

import gwkim.gwcms.dpcms.au.domain.AuthorGroupRole;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface AuthorGroupRoleRepository extends JpaRepository<AuthorGroupRole, Long>, AuthorGroupRoleCustomRepository{
    Optional<AuthorGroupRole> findByAuthorGroupRoleName(String authorGroupRoleName);
}
