package gwkim.gwcms.dpcms.bm.repository;

import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.bm.controller.dto.BoardDto;
import gwkim.gwcms.dpcms.bm.controller.condition.BoardManageSearchCondition;
import gwkim.gwcms.dpcms.bm.domain.Board;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface BoardCustomRepository {

    /**
     * 게시판 관리 - 게시판 페이징 리스트 조회 - ENTITY 리턴
     *
     * @param condition : 검색 조건
     * @param pageable : 페이징
     * @return Entity
     */
    Page<Board> searchPageReturnEntity(SearchCondition condition, Pageable pageable);

    /**
     * 게시판 관리 - 게시판 페이징 리스트 조회 - DTO 리턴
     *
     * @param condition : 검색 조건
     * @param pageable : 페이징
     * @return Entity
     */
    Page<BoardDto> searchPageReturnDto(BoardManageSearchCondition condition, Pageable pageable);
}
