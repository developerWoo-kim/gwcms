package gwkim.gwcms.dpcms.mn.repository;

import gwkim.gwcms.dpcms.mn.domain.Menu;

import java.util.List;

public interface MenuManageCustomRepository {
    List<Menu> findBySystemId(String sysId);


}
