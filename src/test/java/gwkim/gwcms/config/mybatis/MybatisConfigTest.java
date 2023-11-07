package gwkim.gwcms.config.mybatis;

import gwkim.gwcms.cmm.dataaccess.mybatis.dao.CommonDao;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SpringBootTest
@ExtendWith(SpringExtension.class)
public class MybatisConfigTest {
    @Autowired
    CommonDao commonDao;

    @Test
    @DisplayName("마이바티스 config test")
    public void selectMember() throws SQLException, IOException {
        List<Map<String, Object>> list = commonDao.selectList("test_sql.selectMember", new HashMap());
        System.out.print(list);
    }
}
