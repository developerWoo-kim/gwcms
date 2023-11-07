package gwkim.gwcms.dpcms.bm.repository;

import gwkim.gwcms.dpcms.bm.domain.Board;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BoardRepository extends JpaRepository<Board, Long>, BoardCustomRepository{
    List<Board> findAllBySystem_SystemId(String systemId);
}
