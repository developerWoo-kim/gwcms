package gwkim.gwcms.cd;

import com.querydsl.core.types.Projections;
import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.dpcms.cd.controller.dto.CommonCodeDto;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

import static gwkim.gwcms.dpcms.cd.domain.QCommonCode.commonCode1;
import static gwkim.gwcms.dpcms.cd.domain.QCommonDetailCode.commonDetailCode;

@SpringBootTest
@ExtendWith(SpringExtension.class)
public class CommonDetailCodeRepositoryTest {
    @Autowired
    JPAQueryFactory jpaQueryFactory;

    @Test
    @DisplayName("공통코드 상세 dto 테스트")
    public void commonDetailCodeTest() {
        List<CommonCodeDto> commonCode = jpaQueryFactory
                .select(Projections.constructor(CommonCodeDto.class,
                        commonCode1
                )).distinct()
                .from(commonCode1)
                .join(commonCode1.commonCodeDetailList, commonDetailCode)
                .where(commonCode1.commonCode.eq("memberType"))
                .fetch();
        System.out.println(commonCode);
    }
}
