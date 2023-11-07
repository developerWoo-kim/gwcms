package gwkim.gwcms.dpcms.au.repository;

import gwkim.gwcms.dpcms.au.domain.AuthorGroup;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface AuthorGroupRepository extends JpaRepository<AuthorGroup, Long>, AuthorGroupCustomRepository{

    /**
     * 권한 설명으로 조회
     * @param authorGroupDescription : 권한 설명
     * @return Optional<AuthorGroup>
     */
    Optional<AuthorGroup> findByAuthorGroupDescription(String authorGroupDescription);

    /**
     * 권한명으로 조회
     * @param authorGroupName 권한명
     * @return Optional<AuthorGroup>
     */
    Optional<AuthorGroup> findByAuthorGroupName(String authorGroupName);
}
