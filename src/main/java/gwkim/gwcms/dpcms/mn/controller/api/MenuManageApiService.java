package gwkim.gwcms.dpcms.mn.controller.api;

import gwkim.gwcms.dpcms.au.domain.AuthorGroup;
import gwkim.gwcms.dpcms.au.domain.AuthorGroupMenu;
import gwkim.gwcms.dpcms.au.repository.AuthorGroupRepository;
import gwkim.gwcms.dpcms.mn.controller.form.MenuInsertForm;
import gwkim.gwcms.dpcms.mn.controller.form.MenuUpdateForm;
import gwkim.gwcms.dpcms.mn.domain.Menu;
import gwkim.gwcms.dpcms.mn.domain.MenuType;
import gwkim.gwcms.dpcms.mn.repository.MenuManageRepository;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class MenuManageApiService {
    private final SystemManageRepository systemManageRepository;
    private final MenuManageRepository menuManageRepository;
    private final AuthorGroupRepository authorGroupRepository;

    private final EntityManager em;

    /**
     * 메뉴 생성 로직
     *
     * @param form
     * @return
     * @throws Exception
     */
    @Transactional
    public Menu createMenu(MenuInsertForm form) {

        if(form.getUpperMenuId() != null) {
            Menu findUpperMenu = menuManageRepository.findById(form.getUpperMenuId())
                    .orElseThrow(() -> new IllegalArgumentException("상위 메뉴가 존재하지 않습니다."));
            form.setUpperMenuName(findUpperMenu.getUpperMenuName());
        }

        System findSystem = systemManageRepository.findById(form.getSystemId())
                .orElseThrow(() -> new IllegalArgumentException("시스템이 존재하지 않습니다."));

        List<AuthorGroup> authorList = new ArrayList<>();
        if(!"".equals(Objects.toString(form.getMenuAuthor(), ""))) {
            String[] menuAuthorArr = form.getMenuAuthor().split(",");
            List<Long> authorGroups = Arrays.stream(menuAuthorArr)
                    .map(Long::parseLong)
                    .collect(Collectors.toList());

            authorList = authorGroupRepository.findAllById(authorGroups);
        }

        // 메뉴 생성
        Menu menu = Menu.createMenu(form, findSystem, authorList);
        // 메뉴 정렬
        List<Menu> menuList = menuManageRepository.findBySystemId(form.getSystemId());
        Menu saveMenu = menuManageRepository.save(menu.createMenuSort(menuList));

        return saveMenu;
    }

    /**
     * 메뉴 정렬 순서 저장
     *
     * @param listArrStr String
     */
    @Transactional
    public void sortMenu(String listArrStr) {
        String menuListArrStr = listArrStr.replaceAll("menuId_", "");

        String[] menuArr = menuListArrStr.split(";");

        for(String menu : menuArr) {
            String[] splitMenu = menu.split(",");

            Long menuId = Long.parseLong(splitMenu[0]);
            int sortOrdr = Integer.parseInt(splitMenu[1]);
            String upperMenuId = splitMenu[2];

            Menu findMenu = menuManageRepository.findById(menuId)
                    .orElseThrow(() -> new IllegalArgumentException("메뉴 아이디가 누락되었습니다."));

            // 상위 메뉴가 있는 경우에는 상위 메뉴까지 더티 체킹
            if(!upperMenuId.equals("N")) {
                Long upperId = Long.parseLong(upperMenuId);
                Menu upperMenu = menuManageRepository.findById(upperId)
                        .orElseThrow(() -> new IllegalArgumentException("상위 메뉴가 존재하지 않습니다."));

                findMenu.setUpperMenuId(upperMenu.getMenuId());
                findMenu.setUpperMenuName(upperMenu.getMenuName());
                findMenu.setMenuLevel(upperMenu.getMenuLevel() + 1);
            } else {
                findMenu.setUpperMenuId(null);
                findMenu.setUpperMenuName(null);
                findMenu.setMenuLevel(1);
            }
            // 더티 체킹
            findMenu.setSortOrder(sortOrdr);
        }
    }

    @Transactional
    public void updateMenu(MenuUpdateForm form) {
        Menu menu = menuManageRepository.findById(form.getMenuId())
                .orElseThrow(() -> new IllegalArgumentException("메뉴가 존재하지 않습니다."));

        if(form.getMenuAuthor() != null) {
            String[] menuAuthorArr = form.getMenuAuthor().split(",");
            List<Long> authorGroupList = Arrays.stream(menuAuthorArr)
                    .map(Long::parseLong)
                    .collect(Collectors.toList());

            List<AuthorGroup> authorList = authorGroupRepository.findAllById(authorGroupList);

            if(!authorList.isEmpty()) {
                if(!menu.getAuthorGroupMenuList().isEmpty()) {
                    menu.getAuthorGroupMenuList().clear();
                }

                for (AuthorGroup authorGroup : authorList) {
                    AuthorGroupMenu authorGroupMenu = new AuthorGroupMenu();
                    authorGroupMenu.setAuthorGroup(authorGroup);
                    menu.addAuthorGroupMenu(authorGroupMenu);
                }
            }
        }
        
        menu.setMenuName(form.getMenuName());
        MenuType menuType = MenuType.valueOf(form.getMenuType());
        menu.setMenuUrl(Menu.createMenuUrl(menuType, menu.getSystem().getSystemId(), form.getMenuUrl()));
        menu.setMenuType(menuType);
        menu.setContentAt(form.getContentAt());
        menu.setContentId(form.getContentId());
        menu.setConnectMenuId(form.getConnectMenuId());
        menu.setUseAt(form.getUseAt());
        menu.setNewWindowAt(form.getNewWinAt());
    }

    @Transactional
    public void deleteMenu(Long menuId) {
        Menu menu = menuManageRepository.findById(menuId)
                .orElseThrow(() -> new IllegalArgumentException("메뉴가 존재하지 않습니다."));
        
        Long upperMenuId = menu.getMenuId();
        while (true) {
            Optional<List<Menu>> findUnderMenu = menuManageRepository.findByUpperMenuId(upperMenuId);
            if(findUnderMenu.isPresent()) {
                List<Menu> underMenuList = findUnderMenu.get();
                menuManageRepository.deleteAll(underMenuList);
            }
        }
    }
}
