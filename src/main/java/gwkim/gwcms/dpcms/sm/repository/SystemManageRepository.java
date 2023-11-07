package gwkim.gwcms.dpcms.sm.repository;

import gwkim.gwcms.dpcms.sm.domain.System;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SystemManageRepository extends JpaRepository<System, String>, SystemManageCustomRepository{

    Optional<System> findBySystemName(String systemName);
}
