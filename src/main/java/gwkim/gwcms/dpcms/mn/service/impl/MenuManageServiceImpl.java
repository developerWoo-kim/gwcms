package gwkim.gwcms.dpcms.mn.service.impl;

import gwkim.gwcms.dpcms.au.domain.AuthorGroupMenu;
import gwkim.gwcms.dpcms.mn.controller.dto.MenuDto;
import gwkim.gwcms.dpcms.mn.domain.Menu;
import gwkim.gwcms.dpcms.mn.repository.MenuManageRepository;
import gwkim.gwcms.dpcms.mn.service.MenuManageService;
import lombok.RequiredArgsConstructor;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.AntPathMatcher;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class MenuManageServiceImpl implements MenuManageService {
    private final MenuManageRepository menuManageRepository;

    /**
     * 시스템 메뉴 계층 구조 반환
     * @param systemId
     * @return List<MenuDto>
     */
    public List<MenuDto> findUpperMenuNaviList(String systemId) {
        List<Menu> findMenuList = menuManageRepository.findBySystemId(systemId);
        List<MenuDto> upperMenuNaviList = new ArrayList<>();
        for (Menu menu : findMenuList) {
            String menuNavi = menu.getMenuName();
            Long upperMenuId = menu.getUpperMenuId();

            if(upperMenuId == null) {
                upperMenuNaviList.add(new MenuDto(menu, menuNavi));
                continue;
            }

            while (true) {
                for(Menu menuList : findMenuList) {
                    if(upperMenuId.equals(menuList.getMenuId())) {
                        menuNavi += " < " + menuList.getMenuName();
                        upperMenuId = menuList.getUpperMenuId();
                        break;
                    }
                }

                if(upperMenuId == null) {
                    upperMenuNaviList.add(new MenuDto(menu, menuNavi));
                    break;
                }
            }
        }

        return upperMenuNaviList;
    }

    /**
     * 메뉴 한건 조회 - DTO 반환
     * @param menuId Long 메뉴 아이디
     * @return MenuDto
     */
    public MenuDto findOne(Long menuId) {
        Menu menuManage = menuManageRepository.findById(menuId).orElseThrow();
        return new MenuDto(menuManage);
    }


    /**
     * 메뉴 조회는 캐시 사용
     * @param systemId String
     * @return List<MenuDto>
     */
    @Cacheable(value = "menu", key = "#systemId")
    public List<MenuDto> findMenuList(String systemId) {
        List<Menu> menu = menuManageRepository.findBySystemId(systemId);

        List<MenuDto> mList = new ArrayList<>();
        for (Menu menuManage : menu) {
            mList.add(new MenuDto(menuManage));
        }

        return mList;
    }

    /**
     * 메뉴 캐시 업데이트
     * @param systemId String
     * @return List<MenuDto>
     */
    @CachePut(value = "menu", key="#systemId")
    public List<MenuDto> updateMenuCache(String systemId) {
        List<Menu> menu = menuManageRepository.findBySystemId(systemId);

        List<MenuDto> mList = new ArrayList<>();
        for (Menu menuManage : menu) {
            mList.add(new MenuDto(menuManage));
        }

        return mList;
    }

    /**
     * 메뉴 권한 조회
     *
     * @param uri String : request Uri
     * @return List<AuthorGroupMenu>
     */
    public List<AuthorGroupMenu> findAuthorGroupMenu(String uri) {
        List<AuthorGroupMenu> authorGroupMenuList = new ArrayList<>();
        for(Menu menu : menuManageRepository.findAll()) {
            if(new AntPathMatcher().match(menu.getMenuUrl(), uri)) {
                authorGroupMenuList = menu.getAuthorGroupMenuList();
            }
        }
        return authorGroupMenuList;
    }
}
