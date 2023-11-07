package gwkim.gwcms.cmm.dataaccess.mybatis.dao;

import gwkim.gwcms.cmm.dataaccess.mybatis.AbstractMybatisMapper;
import org.springframework.stereotype.Repository;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Repository
public class CommonDao extends AbstractMybatisMapper {
    /**
     * 단건 Map 조회
     * @param sqlId
     * @param paramMap
     * @return Map
     * @thorws Exception
     */
    public Map selectMap(String sqlId, Map paramMap) throws IOException, SQLException {
        return getSqlSession().selectOne(sqlId, paramMap);
    }

    /**
     * 단건 Object 조회
     * @param sqlId
     * @param paramMap
     * @return Object
     * @thorws Exception
     */
    public Object selectObject(String sqlId, Map paramMap) throws IOException, SQLException {
        return getSqlSession().selectOne(sqlId, paramMap);
    }

    /**
     * 다건 조회
     * @param sqlId
     * @param paramMap
     * @return List
     * @thorws Exception
     */
    public List selectList(String sqlId, Map paramMap) throws IOException, SQLException {
        return getSqlSession().selectList(sqlId, paramMap);
    }

    /**
     * 데이터 Insert
     * @param sqlId
     * @param paramMap
     * @return int(처리건수)
     * @thorws Exception
     */
    public int insertQuery(String sqlId, Map paramMap) throws IOException, SQLException {
        return getSqlSession().insert(sqlId, paramMap);
    }

    /**
     * 데이터 Update
     * @param sqlId
     * @param paramMap
     * @return int(처리건수)
     * @thorws Exception
     */
    public int updateQuery(String sqlId, Map paramMap) throws IOException, SQLException {
        return getSqlSession().update(sqlId, paramMap);
    }

    /**
     * 데이터 Delete
     * @param sqlId
     * @param paramMap
     * @return int(처리건수)
     * @thorws Exception
     */
    public int deleteQuery(String sqlId, Map paramMap) throws IOException, SQLException {
        return getSqlSession().delete(sqlId, paramMap);
    }
}
