package gwkim.gwcms.sv;

import gwkim.gwcms.cmm.utils.CommonUtil;
import gwkim.gwcms.dpcms.mm.domain.Member;
import gwkim.gwcms.dpcms.mm.domain.MemberType;
import gwkim.gwcms.dpcms.mm.repository.MemberManageRepository;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
import gwkim.gwcms.dpcms.sv.repository.SurveyAnswerMasterRepository;
import gwkim.gwcms.dpcms.sv.repository.SurveyRepository;
import gwkim.gwcms.dpcms.sv.domain.Survey;
import gwkim.gwcms.dpcms.sv.domain.SurveyAnswerMaster;
import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemDetail;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@SpringBootTest
@ExtendWith(SpringExtension.class)
@Transactional
public class SurveyAnswerServiceTest {
    @Autowired
    MemberManageRepository memberManageRepository;
    @Autowired
    SurveyRepository surveyRepository;
    @Autowired
    SurveyAnswerMasterRepository surveyAnswerMasterRepository;
    @Autowired
    SystemManageRepository systemManageRepository;

    @Test
    @DisplayName("설문 답변 등록 테스트")
    @Rollback(value = false)
    public void saveSurveyAnswerTest() {
        Survey survey = surveyRepository.findById(1L).orElseThrow();

        List<SurveyItem> surveyItemList = survey.getSurveyItemList();
        Member member = memberManageRepository.findById("admin").orElseThrow();

        for (SurveyItem surveyItem : surveyItemList) {
            SurveyAnswerMaster surveyAnswerMaster = new SurveyAnswerMaster();
            surveyAnswerMaster.setMember(member);
            surveyAnswerMaster.setSurvey(survey);

            SurveyItemDetail surveyItemDetail;
            if("OE".equals(surveyItem.getSurveyItemType().toString())) {

                surveyItemDetail = surveyItem.getSurveyItemDetailList().stream()
                        .filter(s -> s.getItemDetailId().equals(1L))
                        .findFirst()
                        .orElse(null);

                surveyAnswerMaster.setSurveyItemDetail(surveyItemDetail);
                surveyAnswerMaster.setOpenEndedAnswer("2.서술형 답변 입니다.");

            } else if("SC".equals(surveyItem.getSurveyItemType().toString())) {

                surveyItemDetail = surveyItem.getSurveyItemDetailList().stream()
                        .filter(s -> s.getItemDetailId().equals(3L))
                        .findFirst()
                        .orElse(null);

                surveyAnswerMaster.setSurveyItemDetail(surveyItemDetail);

            } else if("MC".equals(surveyItem.getSurveyItemType().toString())) {
                surveyItemDetail = surveyItem.getSurveyItemDetailList().stream()
                        .filter(s -> s.getItemDetailId().equals(7L))
                        .findFirst()
                        .orElse(null);
                surveyAnswerMaster.setSurveyItemDetail(surveyItemDetail);
            } else {
                surveyItemDetail = surveyItem.getSurveyItemDetailList().stream()
                        .filter(s -> s.getItemDetailId().equals(14L))
                        .findFirst()
                        .orElse(null);
                surveyAnswerMaster.setSurveyItemDetail(surveyItemDetail);
            }

            surveyAnswerMasterRepository.save(surveyAnswerMaster);

        }
    }


    public Member createMember(String memberId, String memberName, String memberPassword, String telNo, String email, String ciKey,
                               String diKey, String type, System system) {
        String pwSalt = CommonUtil.getSalt();

        Member buildMember = new Member().builder()
                .memberId(memberId)
                .memberName(memberName)
                .telNo(telNo)
                .email(email)
                .build();
        // 비밀번호 암호화
//        buildMember.setMemberPassword(Member.encryptPassword(pwSalt, memberPassword));

        MemberType memberType = new MemberType().builder()
                .memberType(type)
                .confirmAt("N")
                .system(system)
                .build();
        buildMember.addMemberType(memberType);

        return buildMember;
    }
}
