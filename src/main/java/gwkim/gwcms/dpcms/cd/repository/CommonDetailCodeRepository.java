package gwkim.gwcms.dpcms.cd.repository;

import gwkim.gwcms.dpcms.cd.domain.CommonDetailCode;
import gwkim.gwcms.dpcms.cd.domain.CommonDetailCodeId;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;


public interface CommonDetailCodeRepository extends JpaRepository<CommonDetailCode, CommonDetailCodeId> {
    /**
     * 공통상세코드명으로 조회
     * @param cmmnDetailCodeNm
     * @return
     */
    Optional<CommonDetailCode> findByCommonDetailCodeNameAndCommonCode_CommonCode(String cmmnDetailCodeNm, String cmmnCode);

    List<CommonDetailCode> findById_CommonCode(String cmmnCode);
}
