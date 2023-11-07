package gwkim.gwcms.dpcms.mn.utils;

import gwkim.gwcms.cmm.security.util.SecurityAuthorUtil;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupDto;
import gwkim.gwcms.dpcms.au.controller.dto.AuthorGroupMenuDto;
import gwkim.gwcms.dpcms.mn.controller.dto.MenuDto;
import lombok.extern.slf4j.Slf4j;

import java.util.List;
import java.util.Objects;

@Slf4j
public class MenuBuilder {

    /**
     * 좌측 메뉴 생성 - 관리자
     * @param menuList List<MenuDto>
     * @return StringBuilder
     */
    public static StringBuilder createAdminMenu(List<MenuDto> menuList) {

        int prevMenuLev = 0;
        int currMenuLev = 0;
        int nextMenuLev = 0;

        // 메뉴생성
        String menuBuilderGab = "\t\t\t\t";
        StringBuilder menuBuilder = new StringBuilder();

//        menuBuilder.append( menuBuilderGab + "<input type=\"hidden\" id=\"leftCurrMi\" value=\"${currMenuId }\">\n");
        menuBuilder.append( menuBuilderGab + "<ul class=\"gnb\">\n");

        int imgIdx = 1;

        for (int idx = 0; menuList != null && idx < menuList.size(); idx++) {
            MenuDto menu = menuList.get(idx);
            List<AuthorGroupMenuDto> authorGroupList = menu.getAuthorGroupList();
            String menuTarget = "";

            // 권한 체크
            boolean hasAuthor = true;
            if(!authorGroupList.isEmpty()) {
                if(!SecurityAuthorUtil.hasMaster()) {
                    hasAuthor = authorGroupList.stream()
                            .anyMatch(authGroup -> {
                                return SecurityAuthorUtil.authorGroupCheck(authGroup.getAuthorGroup().getAuthorGroupName());
                            });
                }
            }
            // 권한이 없다면 메뉴 안그림
            if(!hasAuthor) {
                continue;
            }

            // 새창 여부
            String newWinAt = Objects.toString(menu.getNewWindowAt(), "");
            if (newWinAt.equals("Y")) {
                menuTarget = " rel=\"noopener noreferrer\" target=\"_blank\" ";
            }
            // 메뉴 다음 레벨 체크
            if (idx < menuList.size() - 1) {
                nextMenuLev = menuList.get(idx+1).getMenuLevel();
            } else {
                nextMenuLev = 0; // 마지막 메뉴의 다음메뉴레벨은 0
            }

            // 현재 메뉴 레벨 체크
            currMenuLev = menu.getMenuLevel();

            if (currMenuLev == 1) { // 현재메뉴 1

                if (prevMenuLev != 0) { // 그전메뉴 1,2
                    if (prevMenuLev != 1) { // 그전메뉴 2
                        // 전메뉴 2 일때 li닫아줌
                        menuBuilder.append(menuBuilderGab + "\t\t\t</li>\n");

                        menuBuilder.append( menuBuilderGab + "\t\t</ul>\n");
                    }
                    menuBuilder.append( menuBuilderGab + "\t</li>\n");
                }

                String menuUrl1Lev = menu.getMenuUrl();

                // 메뉴레벨 1 - URL세팅
                if (menuUrl1Lev != null) {
                    if (menuUrl1Lev.indexOf("?") > -1) {
                        menuUrl1Lev += "&mi=" + menu.getMenuId();
                    } else {
                        menuUrl1Lev += "?mi=" + menu.getMenuId();
                    }
                }

                if (nextMenuLev == 2) {
                    menuUrl1Lev = "#";
                }

                // span class="icon+숫자" 지정
                String iconNumber = "";
                if ( imgIdx < 10 ) {
                    iconNumber = "0"+imgIdx;
                } else {
                    iconNumber = ""+imgIdx;
                }

                // menuUrl1Lev : 메뉴 URL
                // menuTarget : 새창여부
                // iconNumber : <span class="icon+숫자"> 지정
                menuBuilder.append( menuBuilderGab + "\t<li><a id=\"" + menu.getMenuId() + "\" href=\"" + menuUrl1Lev + "\" " + menuTarget + "><span class=\"icons icon" + iconNumber + "\"></span>" + menu.getMenuName() + "</a>\n" );

                imgIdx++;
            } else if (currMenuLev == 2) { // 현재메뉴 2

                // 전메뉴가 1레벨
                if (prevMenuLev == 1) {
                    menuBuilder.append( menuBuilderGab + "\t\t<ul class=\"dep2\">\n");
                // 전메뉴가 2레벨
                } else if (prevMenuLev == 2) {
                    menuBuilder.append(menuBuilderGab + "\t\t\t</li>\n");
                }

                String menuUrl2Lev = menu.getMenuUrl();
                if (menuUrl2Lev != null) {
                    String queryParam = "";
                    switch (menu.getMenuType()) {
                        case BOARD:
                            queryParam = "&boardId=" + menu.getContentId();
                        case CONTENT:
                        case MENU:
                        case LINK:
                        default:
                            break;
                    }
                    menuUrl2Lev += "?mi=" + menu.getMenuId() + queryParam;
                }

                menuBuilder.append (menuBuilderGab + "\t\t\t<li><a id=\"" + menu.getMenuId() + "\" href=\"" + menuUrl2Lev + "\" " + menuTarget + ">" + menu.getMenuName() + "</a>\n");
            }
            prevMenuLev = currMenuLev;

            // 마지막 메뉴일경우
            if (idx == menuList.size()-1) {
                // 마지막 메뉴가 1레벨
                if (currMenuLev == 1) {
                    menuBuilder.append(menuBuilderGab + "\t</li>\n");
                // 마지막 메뉴가 2레벨
                } else if (currMenuLev == 2) {
                    // 전메뉴 2 일때 li닫아줌
                    menuBuilder.append(menuBuilderGab + "\t\t\t</li>\n");

                    menuBuilder.append(menuBuilderGab + "\t\t</ul>\n");
                    menuBuilder.append(menuBuilderGab + "\t</li>\n");
                }
            }
        }
        menuBuilder.append(menuBuilderGab + "</ul>\n");

        return menuBuilder;
    }

    /**
     * WEB 좌측 메뉴 생성 - 공통
     * @param menuList List<AuthorDto>
     * @param authorList List<MenuDto>
     * @return StringBuilder
     */
    public static StringBuilder createWebLeftMenu(List<MenuDto> menuList, List<AuthorGroupDto> authorList) {
        // 좌측 메뉴 생성
        String menuBuilderGab = "\t\t\t\t";
        StringBuilder menuBuilder = new StringBuilder();

        int prevMenuLev = 0;
        int currMenuLev = 0;
        int nextMenuLev = 0;

        menuBuilder.append(menuBuilderGab + "<ul class='dep01'>\n");

        int imgIdx = 1;
        for (int idx = 0; menuList != null && idx < menuList.size(); idx++) {
            MenuDto menu = menuList.get(idx);
//            List<AuthorMenuDto> menuAuthorList = menu.getMenuAuthorList();
            String menuTarget = "";
//
//            // 권한 체크
//            boolean hasAuthor = true;
//            if(!menuAuthorList.isEmpty()) {
//                if(!CommonCustomAuth.hasSuperAuth(authorList)) {
//                    hasAuthor = authorList.stream()
//                            .anyMatch(auth -> {
//                                return menu.getMenuAuthorList().stream()
//                                        .anyMatch(mnAu -> auth.getAuthorId().equals(mnAu.getAuthor().getAuthorId()));
//                            });
//                }
//            }
//            // 권한이 없다면 메뉴 안그림
//            if(!hasAuthor) {
//                continue;
//            }

            // 새창 여부
            String newWinAt = Objects.toString(menu.getNewWindowAt(), "");
            if (newWinAt.equals("Y")) {
                menuTarget = " rel=\"noopener noreferrer\" target=\"_blank\" ";
            }
            // 메뉴 다음 레벨 체크
            if (idx < menuList.size() - 1) {
                nextMenuLev = menuList.get(idx+1).getMenuLevel();
            } else {
                nextMenuLev = 0; // 마지막 메뉴의 다음메뉴레벨은 0
            }

            // 현재 메뉴 레벨 체크
            currMenuLev = menu.getMenuLevel();

            if (currMenuLev == 1) { // 현재메뉴 1

                if (prevMenuLev != 0) { // 그전메뉴 1,2
                    if (prevMenuLev != 1) { // 그전메뉴 2
                        // 전메뉴 2 일때 li닫아줌
                        menuBuilder.append(menuBuilderGab + "\t\t\t</li>\n");

                        menuBuilder.append( menuBuilderGab + "\t\t</ul>\n");
                    }
                    menuBuilder.append( menuBuilderGab + "\t</li>\n");
                }

                String menuUrl1Lev = menu.getMenuUrl();

                // 메뉴레벨 1 - URL세팅
                if (menuUrl1Lev != null) {
                    if (menuUrl1Lev.indexOf("?") > -1) {
                        menuUrl1Lev += "&mi=" + menu.getMenuId();
                    } else {
                        menuUrl1Lev += "?mi=" + menu.getMenuId();
                    }
                }

                if (nextMenuLev == 2) {
                    menuUrl1Lev = "#";
                }

                // span class="icon+숫자" 지정
                String iconNumber = "";
                if ( imgIdx < 10 ) {
                    iconNumber = "0"+imgIdx;
                } else {
                    iconNumber = ""+imgIdx;
                }

                // menuUrl1Lev : 메뉴 URL
                // menuTarget : 새창여부
                // iconNumber : <span class="icon+숫자"> 지정
                menuBuilder.append( menuBuilderGab + "\t<li><a id=\"" + menu.getMenuId() + "\" href=\"" + menuUrl1Lev + "\" " + menuTarget + "><span class=\"icons icon" + iconNumber + "\"></span>" + menu.getMenuName() + "</a>\n" );

                imgIdx++;
            } else if (currMenuLev == 2) { // 현재메뉴 2

                // 전메뉴가 1레벨
                if (prevMenuLev == 1) {
                    menuBuilder.append( menuBuilderGab + "\t\t<ul class=\"dep02\">\n");
                    // 전메뉴가 2레벨
                } else if (prevMenuLev == 2) {
                    menuBuilder.append(menuBuilderGab + "\t\t\t</li>\n");
                }

                String menuUrl2Lev = menu.getMenuUrl();
                if (menuUrl2Lev != null) {
                    if (menuUrl2Lev.indexOf("?") > -1) {
                        menuUrl2Lev += "&mi=" + menu.getMenuId();
                    } else {
                        menuUrl2Lev += "?mi=" + menu.getMenuId();
                    }
                }

                menuBuilder.append (menuBuilderGab + "\t\t\t<li><a id=\"" + menu.getMenuId() + "\" href=\"" + menuUrl2Lev + "\" " + menuTarget + ">" + menu.getMenuName() + "</a>\n");
            }
            prevMenuLev = currMenuLev;

            // 마지막 메뉴일경우
            if (idx == menuList.size()-1) {
                // 마지막 메뉴가 1레벨
                if (currMenuLev == 1) {
                    menuBuilder.append(menuBuilderGab + "\t</li>\n");
                    // 마지막 메뉴가 2레벨
                } else if (currMenuLev == 2) {
                    // 전메뉴 2 일때 li닫아줌
                    menuBuilder.append(menuBuilderGab + "\t\t\t</li>\n");

                    menuBuilder.append(menuBuilderGab + "\t\t</ul>\n");
                    menuBuilder.append(menuBuilderGab + "\t</li>\n");
                }
            }
        }
        menuBuilder.append(menuBuilderGab + "</ul>\n");
        
        
        return menuBuilder;
    }
}
