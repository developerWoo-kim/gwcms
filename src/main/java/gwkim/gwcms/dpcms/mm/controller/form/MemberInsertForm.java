package gwkim.gwcms.dpcms.mm.controller.form;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@NoArgsConstructor
public class MemberInsertForm {
    @NotBlank(message = "회원 아이디가 누락되엇습니다.")
    private String memberId;             // 아이디
    @NotBlank(message = "이름이 누락되엇습니다.")
    private String memberName;          // 사용자명
    @NotBlank(message = "비밀번호가 누락되었습니다.")
    private String memberPassword;      // 사용자 비밀번호
    @NotBlank(message = "핸드폰번호가 누락되었습니다.")
    private String telNo;               // 사용자 핸드폰번호
    private String email;               // 이메일
    @NotBlank(message = "시스템아이디가 누락되었습니다.")
    private String systemId;            // 시스템 아이디
    @NotBlank(message = "회원 구분이 누락되었습니다.")
    private String memberType;          // 회원 구분
}
