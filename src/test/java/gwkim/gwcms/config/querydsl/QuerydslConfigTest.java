package gwkim.gwcms.config.querydsl;

import gwkim.gwcms.dpcms.mm.domain.Member;
import gwkim.gwcms.dpcms.mm.repository.MemberManageRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@SpringBootTest
@ExtendWith(SpringExtension.class)
public class QuerydslConfigTest {
    @Autowired
    MemberManageRepository memberRepository;

    @Test
    @DisplayName("쿼리dsl config 테스트")
    @Transactional
    public void querydslTest() {
        List<Member> all = memberRepository.findAll();
    }
}
