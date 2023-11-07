package gwkim.gwcms.dpcms.mn.controller.dto;

import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupMenuDto;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupMenu;
import gwkim.gwcms.dpcms.mn.domain.Menu;
import gwkim.gwcms.dpcms.mn.domain.MenuType;
import gwkim.gwcms.dpcms.sm.controller.dto.SystemDto;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class MenuDto {
    // == 여기 까지 도메인 필드 ==//
    private Long menuId;            // 메뉴 아이디
    private String menuName;          // 메뉴명
    private MenuType menuType;          // 메뉴 타입
    private String menuUrl;         // 메뉴 url
    private int menuLevel;          // 메뉴 레벨
//    private List<AuthorMenuDto> menuAuthorList = new ArrayList<>();      // 메뉴 권한
    private List<AuthorGroupMenuDto> authorGroupList = new ArrayList<>();
    private Long upperMenuId;       // 상위 메뉴 아아디
    private String upperMenuName;     // 상위 메뉴명
    private String contentAt;        // 컨텐츠(게시판 혹은 일반 컨텐츠) 탑재 여부
    private String contentId;        // 컨텐츠 아이디
    private String connectMenuId;      // 연결 메뉴 아이디
    private String useAt;           // 사용 여부
    private int sortOrder;           // 정렬 순서
    private String newWindowAt;        // 새창 여부
    private SystemDto system;

    //== dto 전용 필드 ==//
    private String menuNavi;        // 상위 메뉴들을 표현하는 네비 필드

    /**
     * 상위 메뉴 조회 dto
     * @param menu
     */
    public MenuDto(Menu menu, String menuNavi) {
        this.menuId = menu.getMenuId();
        this.menuName = menu.getMenuName();
        this.menuLevel = menu.getMenuLevel();
        this.menuNavi = menuNavi;
    }

    public MenuDto(Menu menu) {
        this.menuId = menu.getMenuId();
        this.menuName = menu.getMenuName();
        this.menuType = menu.getMenuType();
        this.menuUrl = menu.getMenuUrl();
        this.menuLevel = menu.getMenuLevel();
        List<AuthorGroupMenu> authorGroupMenuList = menu.getAuthorGroupMenuList();
        for (AuthorGroupMenu authorGroupMenu : authorGroupMenuList) {
            this.authorGroupList.add(new AuthorGroupMenuDto(authorGroupMenu));
        }
        this.upperMenuId = menu.getUpperMenuId();
        this.upperMenuName = menu.getUpperMenuName();
        this.contentAt = menu.getContentAt();
        this.contentId = menu.getContentId();
        this.connectMenuId = menu.getConnectMenuId();
        this.useAt = menu.getUseAt();
        this.sortOrder = menu.getSortOrder();
        this.newWindowAt = menu.getNewWindowAt();
        this.system = new SystemDto(menu.getSystem());
    }
}
