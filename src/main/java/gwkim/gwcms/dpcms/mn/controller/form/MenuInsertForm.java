package gwkim.gwcms.dpcms.mn.controller.form;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@NoArgsConstructor
public class MenuInsertForm {
    @NotBlank
    private String menuName;          // 메뉴명
    @NotBlank
    private String menuType;          // 메뉴 타입
    private String menuUrl;         // 메뉴 url
    private int menuLevel;          // 메뉴 레벨
    private String menuAuthor;      // 메뉴 권한
    private Long upperMenuId;       // 상위 메뉴 아아디
    private String upperMenuName;     // 상위 메뉴명
    private String contentAt;        // 컨텐츠(게시판 혹은 일반 컨텐츠) 탑재 여부
    private String contentId;        // 컨텐츠 아이디
    private String connectMenuId;      // 연결 메뉴 아이디
    private String useAt;           // 사용 여부
    private int sortOrder;           // 정렬 순서
    private String newWindowAt;        // 새창 여부

    @NotBlank(message = "시스템 아이디가 누락되었습니다.")
    private String systemId;           // 시스템 아이디
}
