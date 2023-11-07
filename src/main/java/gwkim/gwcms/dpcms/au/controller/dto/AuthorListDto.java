package gwkim.gwcms.dpcms.au.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AuthorListDto {
    private Long authorGroupId;                      // 권한 아이디
    private String authorGroupName;             // 권한 이름
    private String authorGroupDescription;      // 권한 설명
}
