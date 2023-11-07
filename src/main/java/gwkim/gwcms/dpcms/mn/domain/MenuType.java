package gwkim.gwcms.dpcms.mn.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 메뉴 유형 ENUM
 * MENU : 페이지 이동이 없는 상위 메뉴(카테고리 역할), BOARD : 게시판, CONTENT : html 컨텐츠, LINK : 링크
 *
 * MENU : #
 * BOARD : /{systemId}/bm/post/list?boardId={boardId}
 * CONTENT : /{systemId}/cm/content?contentId={contentId}
 * LINK : {menuUrl}
 */
@Getter
@AllArgsConstructor
public enum MenuType {
    MENU("메뉴", "#"),
    BOARD("게시판", "/bm/post/list"),
    CONTENT("컨텐츠", "/cm/content"),
    LINK("링크", "");
    private final String value;
    private final String url;
}
