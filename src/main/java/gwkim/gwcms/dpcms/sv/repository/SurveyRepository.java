package gwkim.gwcms.dpcms.sv.repository;

import gwkim.gwcms.dpcms.sv.domain.Survey;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SurveyRepository extends JpaRepository<Survey, Long>, SurveyCustomRepository {
}
