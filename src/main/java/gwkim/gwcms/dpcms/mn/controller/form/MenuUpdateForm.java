package gwkim.gwcms.dpcms.mn.controller.form;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@NoArgsConstructor
public class MenuUpdateForm {
    private Long menuId;            // 메뉴 아이디
    @NotBlank
    private String menuName;          // 메뉴명
    @NotBlank
    private String menuType;          // 메뉴 타입
    private String menuUrl;         // 메뉴 url
    private String menuAuthor;      // 메뉴 권한
    private String contentAt;        // 컨텐츠(게시판 혹은 일반 컨텐츠) 탑재 여부
    private String contentId;        // 컨텐츠 아이디
    private String connectMenuId;      // 연결 메뉴 아이디
    private String useAt;           // 사용 여부
    private String newWinAt;        // 새창 여부
}
