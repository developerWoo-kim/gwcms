package gwkim.gwcms.dpcms.mn.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.dpcms.au.domain.AuthorGroup;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupMenu;
import gwkim.gwcms.dpcms.mn.controller.form.MenuInsertForm;
import gwkim.gwcms.dpcms.sm.domain.System;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
@Entity(name = "tb_mn_menu")
@Getter
@Setter
@NoArgsConstructor
public class Menu {
    @Id
    @Column(name = "MENU_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long menuId;            // 메뉴 아이디
    private String menuName;          // 메뉴명

    @Enumerated(EnumType.STRING)
    private MenuType menuType;          // 메뉴 타입
    private String menuUrl;         // 메뉴 url
    private int menuLevel;          // 메뉴 레벨

    @JsonIgnore
    @OneToMany(mappedBy = "menu", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<AuthorGroupMenu> authorGroupMenuList = new ArrayList<>();    // 메뉴 권한

    private Long upperMenuId;       // 상위 메뉴 아아디
    private String upperMenuName;     // 상위 메뉴명
    private String contentAt;        // 컨텐츠(게시판 혹은 일반 컨텐츠) 탑재 여부
    private String contentId;        // 컨텐츠 아이디
    private String connectMenuId;      // 연결 메뉴 아이디
    private String useAt;           // 사용 여부
    private int sortOrder;           // 정렬 순서
    private String newWindowAt;        // 새창 여부
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "system_id")
    private System system;

    @Builder
    public Menu(String menuName, MenuType menuType, String menuUrl, int menuLevel, Long upperMenuId, String upperMenuName, String contentAt, String contentId, String connectMenuId, String useAt, int sortOrder, String newWindowAt, System system) {
        this.menuName = menuName;
        this.menuType = menuType;
        this.menuUrl = menuUrl;
        this.menuLevel = menuLevel;
        this.upperMenuId = upperMenuId;
        this.upperMenuName = upperMenuName;
        this.contentAt = contentAt;
        this.contentId = contentId;
        this.connectMenuId = connectMenuId;
        this.useAt = useAt;
        this.sortOrder = sortOrder;
        this.newWindowAt = newWindowAt;
        this.system = system;
    }

    /**
     * 권한 추가 메소드
     */

    public void addAuthorGroupMenu(AuthorGroupMenu authorGroupMenu) {
        this.authorGroupMenuList.add(authorGroupMenu);
        authorGroupMenu.setMenu(this);
    };

    //== 편의 메소드 ==//

    /**
     * 메뉴 엔티티 생성
     * @param form
     * @return
     */
    public static Menu createMenu(MenuInsertForm form, System systemManage, List<AuthorGroup> authorList) {
        Menu menu = new Menu().builder()
                .menuName(form.getMenuName())
                .menuLevel(form.getMenuLevel())
                .upperMenuId(form.getUpperMenuId())
                .upperMenuName(form.getUpperMenuName())
                .contentAt(form.getContentAt())
                .contentId(form.getContentId())
                .useAt(form.getUseAt())
                .sortOrder(form.getSortOrder())
                .newWindowAt(form.getNewWindowAt())
                .build();

        MenuType menuType = MenuType.valueOf(form.getMenuType());
        menu.setMenuUrl(createMenuUrl(menuType, form.getSystemId(), form.getMenuUrl()));
        menu.setMenuType(menuType);
        menu.setSystem(systemManage);

        if(!authorList.isEmpty()) {
            for (AuthorGroup authorGroup : authorList) {
                AuthorGroupMenu authorGroupMenu = new AuthorGroupMenu();
                authorGroupMenu.setAuthorGroup(authorGroup);
                menu.addAuthorGroupMenu(authorGroupMenu);
            }
        }
        return menu;
    }

    public static String createMenuUrl(MenuType menuType, String systemId, String menuUrl) {
        String url = "";

        switch (menuType) {
            case MENU:
                url = menuType.getUrl();
                break;
            case BOARD:
            case CONTENT:
                url = "/" + systemId + menuType.getUrl();
                break;
            case LINK:
                url = "/" + systemId + menuUrl;
                break;
            default:
                url = "#";
                break;
        }

        return url;
    }

    /**
     * 메뉴 추가 생성 시 전체 메뉴 정렬
     * - 기존 메뉴는 더티 체킹
     * - 신규 메뉴는 상위 메뉴의 order + 1
     * - 추가된 하위 메뉴들은 자신의 order + 1
     * - 상위 메뉴가 없는 경우 가장 마지막 order
     *
     * @param menuList
     * @return
     */
    public Menu createMenuSort(List<Menu> menuList) {
        if(this.getUpperMenuId() != null) {
            boolean nextChecker = false;
            boolean sameMenuLevelChecker = false;

            List<Menu> findUpperMenuList = menuList.stream()
                    .filter(mn -> Objects.equals(mn.getUpperMenuId(), this.getUpperMenuId()))
                    .collect(Collectors.toList());

            int maxSortOrdr = 0;
            Long menuId = null;
            if(!findUpperMenuList.isEmpty()) {
                sameMenuLevelChecker = true;
                for (Menu upperMenu : findUpperMenuList) {
                    if(maxSortOrdr < upperMenu.getSortOrder()) {
                        maxSortOrdr = upperMenu.getSortOrder();
                        menuId = upperMenu.getMenuId();
                    }
                }
            }

            for (Menu menu : menuList) {
                if(sameMenuLevelChecker) {
                    if(menu.getMenuId().equals(menuId)) {
                        this.setSortOrder(menu.getSortOrder() + 1);
                        nextChecker = true;
                        continue;
                    }
                } else {
                    if(menu.getMenuId().equals(this.getUpperMenuId())) {
                        this.setSortOrder(menu.getSortOrder() + 1);
                        nextChecker = true;
                        continue;
                    }
                }

                if(nextChecker) {
                    menu.setSortOrder(menu.getSortOrder() + 1);
                }
            }
        } else {
            this.setSortOrder(menuList.size() + 1);
        }
        return this;
    }
}
