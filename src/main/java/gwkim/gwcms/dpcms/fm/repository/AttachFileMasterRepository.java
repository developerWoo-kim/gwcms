package gwkim.gwcms.dpcms.fm.repository;

import gwkim.gwcms.dpcms.fm.domain.AttachFileMaster;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface AttachFileMasterRepository extends JpaRepository<AttachFileMaster, Long> {

    Optional<AttachFileMaster> findByPost_PostId(Long postId);
}
