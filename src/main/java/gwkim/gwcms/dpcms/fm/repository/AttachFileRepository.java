package gwkim.gwcms.dpcms.fm.repository;

import gwkim.gwcms.dpcms.fm.domain.AttachFile;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface AttachFileRepository extends JpaRepository<AttachFile, Long> {
    Optional<AttachFile> findByFileKey(String fileKey);
}
