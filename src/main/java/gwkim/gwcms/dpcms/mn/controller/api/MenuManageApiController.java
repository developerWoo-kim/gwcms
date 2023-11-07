package gwkim.gwcms.dpcms.mn.controller.api;

import gwkim.gwcms.cmm.utils.reponse.CommonMessage;
import gwkim.gwcms.cmm.utils.reponse.CommonResponse;
import gwkim.gwcms.cmm.utils.reponse.error.ErrorCode;
import gwkim.gwcms.dpcms.mn.controller.dto.MenuDto;
import gwkim.gwcms.dpcms.mn.controller.form.MenuInsertForm;
import gwkim.gwcms.dpcms.mn.controller.form.MenuUpdateForm;
import gwkim.gwcms.dpcms.mn.domain.Menu;
import gwkim.gwcms.dpcms.mn.repository.MenuManageRepository;
import gwkim.gwcms.dpcms.mn.service.MenuManageService;
import gwkim.gwcms.dpcms.mn.utils.MenuBuilder;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@RestController
@RequiredArgsConstructor
@Slf4j
public class MenuManageApiController {
    private final MenuManageApiService menuManageApiService;
    private final MenuManageRepository menuManageRepository;
    private final MenuManageService menuManageService;
    /**
     * 메뉴 저장
     */
    @PostMapping("/admin/mn/menu")
    public CommonResponse<Menu> saveMenu(@Valid MenuInsertForm form) {
        menuManageApiService.createMenu(form);
        return CommonResponse.commonSuccess(CommonMessage.MN_MENU_SAVE_SUCCESS.getMessage());
    }

    /**
     * 메뉴 정렬순서 저장
     */
    @PostMapping("/admin/mn/menu/sort")
    public CommonResponse<String> sortMenu(@RequestParam("listArray") String listArrStr) {

        try {
            menuManageApiService.sortMenu(listArrStr);
        } catch (Exception e) {
            return CommonResponse.commonFail(ErrorCode.COMMON_ERROR_400.getMessage());
        }

        return CommonResponse.commonSuccess(CommonMessage.MN_MENU_SORT_SAVE_SUCCESS.getMessage());
    }

    /**
     * 메뉴 수정
     * @param form
     * @return
     */
    @PutMapping("/admin/mn/menu/update")
    public CommonResponse<String> deleteMenu(@Valid MenuUpdateForm form) {
        try {
            menuManageApiService.updateMenu(form);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            return CommonResponse.commonFail(ErrorCode.COMMON_ERROR_400.getMessage());
        }
        return CommonResponse.commonSuccess(CommonMessage.MN_MENU_UPDATE_SUCCESS.getMessage());
    }

    /**
     * 메뉴 삭제
     * @param menuId
     * @return
     */
    @DeleteMapping("/admin/mn/menu/{menuId}/delete")
    public CommonResponse<String> deleteMenu(@PathVariable("menuId") Long menuId) {
        menuManageRepository.deleteById(menuId);
        return CommonResponse.commonSuccess(CommonMessage.MN_MENU_DELETE_SUCCESS.getMessage());
    }

    /**
     * 메뉴 캐시 업데이트
     * @param systemId String 시스템 아이디
     * @return CommonResponse<String>
     */
    @PutMapping("/admin/mn/menu/{systemId}/cache")
    public CommonResponse<String> menuCacheUpdate(@PathVariable("systemId") String systemId) {
        menuManageService.updateMenuCache(systemId);
        return CommonResponse.commonSuccess(CommonMessage.CMM_MESSAGE_UPDATE_SUCCESS.getMessage());
    }

    @GetMapping("/admin/mn/menu/left-menu")
    public StringBuilder findLeftMenu() {
        List<MenuDto> menuList = menuManageService.findMenuList("admin");
        // 권한 체크
        StringBuilder mList = MenuBuilder.createAdminMenu(menuList);
        return mList;
    }

    @GetMapping("/{ctx}/mn/menu/left-menu")
    public StringBuilder findLeftMenu(@PathVariable("ctx") String systemId, HttpServletRequest request) {
        List<MenuDto> menuList = menuManageService.findMenuList(systemId);
        // 권한 체크
        return new StringBuilder();
    }
}
