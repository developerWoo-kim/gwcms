package gwkim.gwcms.dpcms.bm.repository.impl;

import com.querydsl.core.types.Projections;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.impl.JPAQueryFactory;
import gwkim.gwcms.dpcms.bm.controller.dto.PostDto;
import gwkim.gwcms.dpcms.bm.controller.condition.PostManageSearchCondition;
import gwkim.gwcms.dpcms.bm.repository.PostCustomRepository;
import gwkim.gwcms.dpcms.bm.domain.QPost;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.util.List;

@RequiredArgsConstructor
public class PostCustomRepositoryImpl implements PostCustomRepository {
    private final JPAQueryFactory jpaQueryFactory;


    @Override
    public Page<PostDto> searchPostManagePagingList(PostManageSearchCondition condition, Pageable pageable) {
        List<PostDto> contents = jpaQueryFactory
                .select(Projections.constructor(PostDto.class,
                        QPost.post
                ))
                .from(QPost.post)
                .where(eqBoardId(condition.getBoardId()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        Long count = jpaQueryFactory
                .select(QPost.post.count())
                .from(QPost.post)
                .where(eqBoardId(condition.getBoardId()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetchOne();
        return new PageImpl<>(contents, pageable, count);
    }

    private BooleanExpression eqBoardId(Long boardId) {
        if (boardId == null) {
            return null;
        }
        return QPost.post.board.boardId.eq(boardId);
    }
}
