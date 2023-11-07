package gwkim.gwcms.dpcms.sv.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import gwkim.gwcms.dpcms.mm.domain.Member;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

/**
 * 설문 답변 마스터 엔티티
 *
 * @author gwkim
 * @since 2023.09.20
 * @version 1.0
 */
@Entity(name = "tb_sv_answer_master")
@Getter
@Setter
@NoArgsConstructor
public class SurveyAnswerMaster {
    @Id
    @Column(name = "answer_master_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long answerMasterId;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "survey_id")
    private Survey survey;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_id")
    private Member member;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "item_detail_id")
    private SurveyItemDetail surveyItemDetail;

    private String openEndedAnswer;
    private String etcAnswer;

}
