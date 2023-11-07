package gwkim.gwcms.dpcms.mn.repository.impl;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.dpcms.mn.domain.Menu;
import gwkim.gwcms.dpcms.mn.repository.MenuManageCustomRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.util.StringUtils;

import java.util.List;

import static com.querydsl.jpa.JPAExpressions.select;
import static gwkim.gwcms.dpcms.cd.domain.QCommonDetailCode.commonDetailCode;
import static gwkim.gwcms.dpcms.mn.domain.QMenu.menu;

@RequiredArgsConstructor
public class MenuManageCustomRepositoryImpl implements MenuManageCustomRepository {
    private final JPAQueryFactory queryFactory;

    @Override
    public List<Menu> findBySystemId(String sysId) {
        return queryFactory.selectFrom(menu)
                .where(menu.system.systemId.eq(sysId))
                .orderBy(menu.sortOrder.asc())
                .fetch();
    }


    /**
     * 검색 조건 : 상세공통코드 || 상세공통코드명
     *
     * @param searchTxt
     * @return
     */
    private BooleanBuilder eqDetailCodeOrDetailCodeNm(String searchTxt) {
        if (!StringUtils.hasText(searchTxt)) {
            return null;
        }
        BooleanBuilder booleanBuilder = new BooleanBuilder()
                .or(commonDetailCode.id.commonDetailCode.contains(searchTxt))
                .or(commonDetailCode.commonDetailCodeName.contains(searchTxt));
        return booleanBuilder;
    }


}
