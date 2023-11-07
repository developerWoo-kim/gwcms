package gwkim.gwcms.cmm.dataaccess.mybatis;

import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * MybatisMapper 추상 클래스
 *
 * @author gwkim
 * @since 2023.08.23
 * @version 1.0
 */
public abstract class AbstractMybatisMapper extends SqlSessionDaoSupport {
    public AbstractMybatisMapper() {
    }

    @Resource(name = "sqlSessionFactory")
    public void setSqlSessionFactory(SqlSessionFactory sqlSession) {
        super.setSqlSessionFactory(sqlSession);
    }

    public int insert(String queryId) {
        return this.getSqlSession().insert(queryId);
    }

    public int insert(String queryId, Object parameterObject) {
        return this.getSqlSession().insert(queryId, parameterObject);
    }

    public int update(String queryId) {
        return this.getSqlSession().update(queryId);
    }

    public int update(String queryId, Object parameterObject) {
        return this.getSqlSession().update(queryId, parameterObject);
    }

    public int delete(String queryId) {
        return this.getSqlSession().delete(queryId);
    }

    public int delete(String queryId, Object parameterObject) {
        return this.getSqlSession().delete(queryId, parameterObject);
    }

    /** @deprecated */
    @Deprecated
    public Object selectByPk(String queryId, Object parameterObject) {
        return this.getSqlSession().selectOne(queryId, parameterObject);
    }

    public <T> T selectOne(String queryId) {
        return this.getSqlSession().selectOne(queryId);
    }

    public <T> T selectOne(String queryId, Object parameterObject) {
        return this.getSqlSession().selectOne(queryId, parameterObject);
    }

    public <K, V> Map<K, V> selectMap(String queryId, String mapKey) {
        return this.getSqlSession().selectMap(queryId, mapKey);
    }

    public <K, V> Map<K, V> selectMap(String queryId, Object parameterObject, String mapKey) {
        return this.getSqlSession().selectMap(queryId, parameterObject, mapKey);
    }

    public <K, V> Map<K, V> selectMap(String queryId, Object parameterObject, String mapKey, RowBounds rowBounds) {
        return this.getSqlSession().selectMap(queryId, parameterObject, mapKey, rowBounds);
    }

    /** @deprecated */
    @Deprecated
    public List<?> list(String queryId, Object parameterObject) {
        return this.getSqlSession().selectList(queryId, parameterObject);
    }

    public <E> List<E> selectList(String queryId) {
        return this.getSqlSession().selectList(queryId);
    }

    public <E> List<E> selectList(String queryId, Object parameterObject) {
        return this.getSqlSession().selectList(queryId, parameterObject);
    }

    public <E> List<E> selectList(String queryId, Object parameterObject, RowBounds rowBounds) {
        return this.getSqlSession().selectList(queryId, parameterObject, rowBounds);
    }

    public List<?> listWithPaging(String queryId, Object parameterObject, int pageIndex, int pageSize) {
        int skipResults = pageIndex * pageSize;
        RowBounds rowBounds = new RowBounds(skipResults, pageSize);
        return this.getSqlSession().selectList(queryId, parameterObject, rowBounds);
    }

    public void listToOutUsingResultHandler(String queryId, ResultHandler handler) {
        this.getSqlSession().select(queryId, handler);
    }
}
