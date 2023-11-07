package gwkim.gwcms.dpcms.au.repository;

import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupDto;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupMemberDto;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorListDto;
import gwkim.gwcms.dpcms.au.controller.search.AuthorSearchCondition;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface AuthorGroupCustomRepository {

    /**
     * 권한 그룹 페이징
     * @param condition AuthorSearchCondition
     * @param pageable  Pageable
     * @return Page<AuthorListDto>
     */
    Page<AuthorListDto> searchPageAuthorGroup(AuthorSearchCondition condition, Pageable pageable);

    /**
     * 부여 가능한 권한 그룹 조회
     * @param memberId String
     * @return List<AuthorGroupMemberDto>
     */
    List<AuthorGroupDto> findAvailableAuthorList(String memberId);

    /**
     * 회원이 소유한 권한 목록 조회
     * @param memberId String
     * @return List<AuthorGroupMemberDto>
     */
    List<AuthorGroupMemberDto> findMembersAuthorList(String memberId);

    /**
     * 메뉴 등록 시 부여 가능한 권한 목록 조회
     * @return List<AuthorGroupDto>
     */
    List<AuthorGroupDto> findGrantableAuthorList();
}
