package gwkim.gwcms.dpcms.sv.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.cmm.utils.CommonDateUtil;
import gwkim.gwcms.cmm.utils.auditing.BaseEntity;
import gwkim.gwcms.dpcms.sv.controller.form.SurveyInsertForm;
import gwkim.gwcms.dpcms.sv.controller.form.SurveyItemInsertForm;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


/**
 * 설문 엔티티
 *
 * @author gwkim
 * @since 2023.09.20
 * @version 1.0
 */
@Entity(name = "tb_sv_survey")
@Getter @Setter
@NoArgsConstructor
public class Survey extends BaseEntity {

    @Id
    @Column(name = "survey_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long surveyId;

    @JsonIgnore
    @OneToMany(mappedBy = "survey", cascade = CascadeType.ALL)
    private List<SurveyItem> surveyItemList = new ArrayList<>();

    @JsonIgnore
    @OneToMany(mappedBy = "survey", cascade = CascadeType.ALL)
    private List<SurveyAnswerMaster> surveyAnswerMasterList = new ArrayList<>();

    private String surveyTitle;     // 설문 제목
    @Lob
    private String surveyContent;   // 설문 내용
    private String periodAt;        // 기간 설정 여부
    private LocalDate startDate;    // 설문 시작일
    private LocalDate endDate;      // 설문 종료일

    private String createMemberName;
    private String updateMemberName;

    @Builder
    public Survey(String surveyTitle, String surveyContent, String periodAt, LocalDate startDate, LocalDate endDate) {
        this.surveyTitle = surveyTitle;
        this.surveyContent = surveyContent;
        this.periodAt = periodAt;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    /**
     * 설문 항목 추가 - 연관 관계 매핑
     * @param surveyItem : SurveyItem
     */
    public void addSurveyItem(SurveyItem surveyItem) {
        surveyItem.setSurvey(this);
        this.surveyItemList.add(surveyItem);
    }

    /**
     * 설문 생성 메서드
     * @param form SurveyInsertForm
     * @return Survey
     */
    public static Survey createSurvey(SurveyInsertForm form) {

        List<SurveyItem> surveyItemList = new ArrayList<>();

        if(!form.getSurveyItemList().isEmpty()) {
            List<SurveyItemInsertForm> surveyItemInsertFormList = form.getSurveyItemList();
            for (SurveyItemInsertForm surveyItemInsertForm : surveyItemInsertFormList) {
                SurveyItem surveyItem = SurveyItem.createSurveyItem(surveyItemInsertForm);
                surveyItemList.add(surveyItem);
            }
        }

        Survey buildSurvey = new Survey().builder()
                .surveyTitle(form.getSurveyTitle())
                .surveyContent(form.getSurveyContent())
                .periodAt(form.getPeriodAt())
                .build();

        if("Y".equals(form.getPeriodAt())) {
            buildSurvey.setStartDate(CommonDateUtil.stringToLocalDate(form.getStartDate()));
            buildSurvey.setEndDate(CommonDateUtil.stringToLocalDate(form.getEndDate()));
        }

        for (SurveyItem surveyItem : surveyItemList) {
            buildSurvey.addSurveyItem(surveyItem);
        }
        return buildSurvey;
    }
}
