package gwkim.gwcms.dpcms.sv.controller.form;

import gwkim.gwcms.cmm.utils.validation.EnumValid;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemType;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class SurveyItemInsertForm {
    @NotEmpty(message = "문항 제목이 누락되었습니다.")
    private String surveyItemTitle;
    @NotEmpty(message = "문항 설명이 누락되었습니다.")
    private String surveyItemContents;

    @NotBlank(message = "유형이 누락되었습니다.")
    @EnumValid(enumClass = SurveyItemType.class)
    private String surveyItemType;
    private String essentialAt;
    private Long essentialCount;

    private int preferenceTypeRange;
    private String preferenceTypeStartText;
    private String preferenceTypeEndText;
    private MultipartFile file;

    private List<SurveyItemDetailInsertForm> itemDetailList = new ArrayList<>();
}
