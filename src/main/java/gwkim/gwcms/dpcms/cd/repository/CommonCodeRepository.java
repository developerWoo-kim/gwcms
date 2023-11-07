package gwkim.gwcms.dpcms.cd.repository;

import gwkim.gwcms.dpcms.cd.domain.CommonCode;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CommonCodeRepository extends JpaRepository<CommonCode, String>, CommonCodeCustomRepository{

    /**
     * 공통코드명으로 조회
     * @param cmmnCodeNm
     * @return
     */
    Optional<CommonCode> findByCommonCodeName(String cmmnCodeNm);
}
