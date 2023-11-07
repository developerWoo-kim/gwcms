package gwkim.gwcms.dpcms.cfm.repository;

import gwkim.gwcms.dpcms.cfm.domain.CommonFileMaster;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CommonFileMasterRepository extends JpaRepository<CommonFileMaster, Long> {
    /**
     * 식별 값으로 조회
     * @param identifier String 식별 값
     * @return CommonFileMaster
     */
    Optional<CommonFileMaster> findByIdentifier(String identifier);
}
