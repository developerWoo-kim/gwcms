package gwkim.gwcms.cmm.dataaccess.collection;

import lombok.NoArgsConstructor;
import org.springframework.jdbc.support.JdbcUtils;

import java.util.LinkedHashMap;

/**
 * Mybatis Camel Case 처리를 위한 DpubMap
 *
 * LinkedHashMap을 확장해 access속도와 iterate 속도의 이점을 가져 갑니다.
 *
 * @author gwkim
 * @since 2023.08.23
 * @version 1.0
 */
@NoArgsConstructor
public class DpMap extends LinkedHashMap {

    @Override
    public Object put(Object key, Object value) {
        return super.put(JdbcUtils.convertUnderscoreNameToPropertyName((String) key), value);
    }
}
