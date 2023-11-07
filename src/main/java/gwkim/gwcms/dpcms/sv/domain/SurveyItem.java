package gwkim.gwcms.dpcms.sv.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.dpcms.sv.controller.form.SurveyItemDetailInsertForm;
import gwkim.gwcms.dpcms.sv.controller.form.SurveyItemInsertForm;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * 설문 항목 엔티티
 *
 * @author gwkim
 * @since 2023.09.20
 * @version 1.0
 */
@Entity(name = "tb_sv_survey_item")
@Getter
@Setter
@NoArgsConstructor
public class SurveyItem {
    @Id
    @Column(name = "survey_item_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long surveyItemId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "survey_id")
    private Survey survey;

    @JsonIgnore
    @OneToMany(mappedBy = "surveyItem", cascade = CascadeType.ALL)
    private List<SurveyItemDetail> surveyItemDetailList = new ArrayList<>();

    private String surveyItemTitle;
    private String surveyItemContents;

    @Enumerated(value = EnumType.STRING)
    private SurveyItemType surveyItemType;

    @Column(columnDefinition = "VARCHAR(1) DEFAULT 'N'")
    private String essentialAt;                 // 필수 여부 : 필수 선택 수와 관계 없음
    private Long essentialCount;                // 필수 선택 수

    private int preferenceTypeRange;
    private String preferenceTypeStartText;
    private String preferenceTypeEndText;

    private String surveyItemKey;               // 문항 식별 키

    @Transient
    private MultipartFile file;

    @Builder
    public SurveyItem(String surveyItemTitle, String surveyItemContents, SurveyItemType surveyItemType, String essentialAt, Long essentialCount, int preferenceTypeRange, String preferenceTypeStartText, String preferenceTypeEndText) {
        this.surveyItemTitle = surveyItemTitle;
        this.surveyItemContents = surveyItemContents;
        this.surveyItemType = surveyItemType;
        this.essentialAt = essentialAt;
        this.essentialCount = essentialCount;
        this.preferenceTypeRange = preferenceTypeRange;
        this.preferenceTypeStartText = preferenceTypeStartText;
        this.preferenceTypeEndText = preferenceTypeEndText;
    }

    /**
     * 항목 상세 추가 - 연관 관계 매핑
     */
    public void addSurveyItemDetail(SurveyItemDetail surveyItemDetail) {
        surveyItemDetail.setSurveyItem(this);
        this.surveyItemDetailList.add(surveyItemDetail);
    }

    /**
     * 설문 생성 - 생성 메서드(static factory method + builder pattern)
     *
     * @param form SurveyItemInsertForm
     * @return SurveyItem
     */
    public static SurveyItem createSurveyItem(SurveyItemInsertForm form) {
        SurveyItemType itemType = SurveyItemType.valueOf(form.getSurveyItemType());
        SurveyItem buildItem = itemType.createSurveyItem(form);
        buildItem.setEssentialAt(form.getEssentialAt() != null ? "Y" : "N");
        buildItem.setSurveyItemKey(UUID.randomUUID().toString());
        buildItem.setFile(form.getFile());

        return buildItem;
    }

    /**
     * 서술형 세팅
     * @param form : SurveyItemInsertForm
     * @return SurveyItem
     */
    public static SurveyItem openEndedSurveyItem(SurveyItemInsertForm form) {
        SurveyItem buildItem = new SurveyItem().builder()
                .surveyItemTitle(form.getSurveyItemTitle())
                .surveyItemContents(form.getSurveyItemContents())
                .surveyItemType(SurveyItemType.valueOf(form.getSurveyItemType()))
                .build();

        SurveyItemDetail itemDetail = new SurveyItemDetail();
        itemDetail.setItemDetailName("서술형 항목");
        itemDetail.setEtcAt("N");

        buildItem.addSurveyItemDetail(itemDetail);

        return buildItem;
    }

    /**
     * 선택형 문항
     *
     * @param form : SurveyItemInsertForm
     * @return SurveyItem
     */
    public static SurveyItem choiceSurveyItem(SurveyItemInsertForm form) {
        SurveyItem buildItem = new SurveyItem().builder()
                .surveyItemTitle(form.getSurveyItemTitle())
                .surveyItemContents(form.getSurveyItemContents())
                .surveyItemType(SurveyItemType.valueOf(form.getSurveyItemType()))
                .essentialCount(form.getEssentialCount())
                .build();

        if(!form.getItemDetailList().isEmpty()) {
            for (SurveyItemDetailInsertForm itemDetail : form.getItemDetailList()) {
                SurveyItemDetail detail = new SurveyItemDetail();
                detail.setItemDetailName(itemDetail.getItemDetailName());
                detail.setEtcAt(itemDetail.getEtcAt() != null ? "Y" : "N");

                buildItem.addSurveyItemDetail(detail);
            }
        }

        return buildItem;
    }

    /**
     * 선호도형 문항
     *
     * @param form : SurveyItemInsertForm
     * @return SurveyItem
     */
    public static SurveyItem likertScaleSurveyItem(SurveyItemInsertForm form) {
        SurveyItem buildItem = new SurveyItem().builder()
                .surveyItemTitle(form.getSurveyItemTitle())
                .surveyItemContents(form.getSurveyItemContents())
                .surveyItemType(SurveyItemType.valueOf(form.getSurveyItemType()))
                .preferenceTypeRange(form.getPreferenceTypeRange())
                .preferenceTypeStartText(form.getPreferenceTypeStartText())
                .preferenceTypeEndText(form.getPreferenceTypeEndText())
                .build();

        int range = buildItem.getPreferenceTypeRange();
        for(int i = 1; i <= range; i++) {
            SurveyItemDetail detail = new SurveyItemDetail();
            detail.setItemDetailName(String.valueOf(i));
            detail.setEtcAt("N");
            buildItem.addSurveyItemDetail(detail);
        }
        return buildItem;
    }
}
