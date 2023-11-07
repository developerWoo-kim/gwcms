package gwkim.gwcms.dpcms.sv.repository;


import gwkim.gwcms.dpcms.sv.domain.SurveyAnswerMaster;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SurveyAnswerMasterRepository extends JpaRepository<SurveyAnswerMaster, Long>, SurveyAnswerMasterCustomRepository {
    /**
     * 항목 아이디로 응답 내용 조회
     * @param itemDetailId : Long
     * @return List<SurveyAnswerMaster>
     */
    List<SurveyAnswerMaster> findBySurveyItemDetail_ItemDetailId(Long itemDetailId);
}
