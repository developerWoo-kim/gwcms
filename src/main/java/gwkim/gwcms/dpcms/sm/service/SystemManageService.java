package gwkim.gwcms.dpcms.sm.service;

import gwkim.gwcms.dpcms.sm.domain.System;

import java.io.IOException;

public interface SystemManageService {

    void saveSystem(System systemManage) throws IOException;
}
