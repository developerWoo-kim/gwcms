package gwkim.gwcms.dpcms.sv.repository;

import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SurveyItemRepository extends JpaRepository<SurveyItem, Long>, SurveyItemCustomRepository {
}
