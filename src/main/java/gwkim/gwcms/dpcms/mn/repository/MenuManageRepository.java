package gwkim.gwcms.dpcms.mn.repository;

import gwkim.gwcms.dpcms.mn.domain.Menu;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface MenuManageRepository extends JpaRepository<Menu, Long>, MenuManageCustomRepository{

    Optional<List<Menu>> findByUpperMenuId(Long upperMenuId);
}
