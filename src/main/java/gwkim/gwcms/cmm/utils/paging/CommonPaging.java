package gwkim.gwcms.cmm.utils.paging;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.stream.Collectors;

/**
 *	Class Name	: CommonPaging.java
 *	Description	: 공통 페이징 모듈
 *	Modification Information
 *	수정일		수정자		수정 내용
 *	-----------	----------	---------------------------
 *	2023.08.25	gwkim		최초 생성
 *
 *
 *	@author  gwkim
 *	@since  2023.08.25
 *	@version 1.0
 */
public class CommonPaging<T> {
    public Page<T> getPage(List<T> content, Pageable pageable, Long totalCount) {
        int pageSize = pageable.getPageSize();
        int currentPage = pageable.getPageNumber();
        int startItem = currentPage * pageSize;

        List<T> pageContent;
//        int totalItems = content.size();

        if (startItem >= totalCount) {
            pageContent = List.of();
        } else {
            long endItem = Math.min(startItem + pageSize, totalCount);
//            pageContent = content.subList(startItem, endItem);
            pageContent = content.stream()
                    .skip(pageable.getOffset())
                    .limit(pageable.getPageSize())
                    .collect(Collectors.toList());
        }

        return new PageImpl<>(pageContent, pageable, totalCount);
    }
}
