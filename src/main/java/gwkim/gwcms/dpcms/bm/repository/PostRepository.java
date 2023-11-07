package gwkim.gwcms.dpcms.bm.repository;

import gwkim.gwcms.dpcms.bm.domain.Post;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostRepository extends JpaRepository<Post, Long>, PostCustomRepository {
}
