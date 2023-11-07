package gwkim.gwcms.dpcms.bm.repository.impl;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Projections;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.cmm.utils.paging.SearchCondition;
import gwkim.gwcms.dpcms.bm.controller.dto.BoardDto;
import gwkim.gwcms.dpcms.bm.controller.condition.BoardManageSearchCondition;
import gwkim.gwcms.dpcms.bm.domain.Board;
import gwkim.gwcms.dpcms.bm.repository.BoardCustomRepository;
import gwkim.gwcms.dpcms.bm.domain.QBoard;
import gwkim.gwcms.dpcms.sm.domain.QSystem;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;

import java.util.List;

@RequiredArgsConstructor
public class BoardCustomRepositoryImpl implements BoardCustomRepository {
    private final JPAQueryFactory queryFactory;

    @Override
    public Page<Board> searchPageReturnEntity(SearchCondition condition, Pageable pageable) {
        List<Board> contents = queryFactory
                .selectFrom(QBoard.board)
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        Long count = queryFactory
                .select(QBoard.board.count())
                .from(QBoard.board)
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetchOne();
        return new PageImpl<>(contents, pageable, count);
    }

    @Override
    public Page<BoardDto> searchPageReturnDto(BoardManageSearchCondition condition, Pageable pageable) {
        List<BoardDto> contents = queryFactory
                .select(Projections.constructor(BoardDto.class,
                        QBoard.board.boardId,
                        QBoard.board.boardName,
                        QBoard.board.boardType,
                        QBoard.board.answerUseAt,
                        QBoard.board.useAt,
                        QBoard.board.createId,
                        QBoard.board.createName,
                        QBoard.board.createDateTime,
                        QBoard.board.system
                        ))
                .from(QBoard.board)
                .where(eqSystemId(condition.getSystemId()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        Long count = queryFactory
                .select(QBoard.board.count())
                .from(QBoard.board)
                .where(eqSystemId(condition.getSystemId()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetchOne();
        return new PageImpl<>(contents, pageable, count);
    }

    private BooleanExpression eqSystemId(String systemId) {
        if (systemId == null) {
            return null;
        }
        return QBoard.board.system.systemId.eq(systemId);
    }

    /**
     * 검색 조건 : 홈페이지명 ||
     *
     * @param searchTxt
     * @return
     */
    private BooleanBuilder boardManageSearchCondition(String searchTxt) {
        if (!StringUtils.hasText(searchTxt)) {
            return null;
        }
        BooleanBuilder booleanBuilder = new BooleanBuilder()
                .or(QSystem.system.systemName.contains(searchTxt))
                .or(QSystem.system.systemId.contains(searchTxt));
        return booleanBuilder;
    }
}
