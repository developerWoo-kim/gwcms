package gwkim.gwcms.dpcms.mn.service;

import gwkim.gwcms.dpcms.au.domain.AuthorGroupMenu;
import gwkim.gwcms.dpcms.mn.controller.dto.MenuDto;

import java.util.List;

public interface MenuManageService {
    /**
     * 시스템 메뉴 계층 구조 반환
     * @param systemId String 시스템 아이디
     * @return List<MenuDto>
     */
    List<MenuDto> findUpperMenuNaviList(String systemId);

    /**
     * 메뉴 한건 조회 - DTO 반환
     * @param menuId Long 메뉴 아이디
     * @return MenuDto
     */
    MenuDto findOne(Long menuId);

    /**
     * 메뉴 권한 조회
     *
     * @param uri String : request Uri
     * @return List<AuthorGroupMenu>
     */
    List<AuthorGroupMenu> findAuthorGroupMenu(String uri);

    /**
     * 메뉴 조회 - 캐시 사용
     * @param systemId String 시스템 아이디
     * @return List<MenuDto>
     */
    List<MenuDto> findMenuList(String systemId);

    /**
     * 메뉴 캐시 업데이트
     * @param systemId String
     * @return List<MenuDto>
     */
    List<MenuDto> updateMenuCache(String systemId);
}
