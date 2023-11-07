package gwkim.gwcms.dpcms.tm.repository;

import gwkim.gwcms.dpcms.tm.domain.Template;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TemplateManageRepository extends JpaRepository<Template, String>, TemplateManageCustomRepository {
}
