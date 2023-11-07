package gwkim.gwcms.dpcms.mm.repository;

import gwkim.gwcms.dpcms.mm.domain.Member;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface MemberManageRepository extends JpaRepository<Member, String>, MemberManageCustomRepository {

    Optional<Member> findByMemberIdAndMemberPassword(String memberId, String memberPassword);
}
