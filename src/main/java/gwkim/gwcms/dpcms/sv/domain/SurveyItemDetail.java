package gwkim.gwcms.dpcms.sv.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

/**
 * 설문 항목 상세 엔티티
 *
 * @author gwkim
 * @since 2023.09.20
 * @version 1.0
 */
@Entity(name = "tb_sv_survey_item_detail")
@Getter
@Setter
@NoArgsConstructor
public class SurveyItemDetail {
    @Id
    @Column(name = "item_detail_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long itemDetailId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "survey_item_id")
    private SurveyItem surveyItem;

    private String itemDetailName;

    @Column(columnDefinition = "VARCHAR(1) DEFAULT 'N'")
    private String etcAt;

    @JsonIgnore
    @OneToMany(mappedBy = "surveyItemDetail")
    private List<SurveyAnswerMaster> surveyAnswerMaster;
}
