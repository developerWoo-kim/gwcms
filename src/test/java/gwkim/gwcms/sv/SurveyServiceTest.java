package gwkim.gwcms.sv;

import gwkim.gwcms.dpcms.sv.domain.Survey;
import gwkim.gwcms.dpcms.sv.domain.SurveyItem;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemDetail;
import gwkim.gwcms.dpcms.sv.domain.SurveyItemType;
import gwkim.gwcms.dpcms.sv.repository.SurveyRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@SpringBootTest
@ExtendWith(SpringExtension.class)
@Transactional
public class SurveyServiceTest {
    @Autowired
    SurveyRepository surveyRepository;
    
    @Test
    @DisplayName("설문 유형별 엔티티 생성 테스트")
    @Rollback(value = false)
    public void surveyEntityCreateTest(){



        List<SurveyItem> surveyItemList = new ArrayList<>();
        // ========================================================================================================= //

        // 서술형 MC
        List<SurveyItemDetail> detailList1 = new ArrayList<>();
        detailList1.add(createSurveyItemDetail(""));

        surveyItemList.add(createSurveyItem("서술 항목 제목", "설명", SurveyItemType.OE, "N", null,
                null, null, detailList1));



        // ========================================================================================================= //

        // 단일 선택형 SC
        List<SurveyItemDetail> detailList2 = new ArrayList<>();
        detailList2.add(createSurveyItemDetail("단일_항목1"));
        detailList2.add(createSurveyItemDetail("단일_항목2"));
        detailList2.add(createSurveyItemDetail("단일_항목3"));
        detailList2.add(createSurveyItemDetail("단일_항목3"));

        surveyItemList.add(createSurveyItem("단일 선택 항목 제목", "설명", SurveyItemType.SC, "N", null,
                null, null, detailList2));



        // ========================================================================================================= //

        // 기타가 있는 단일 선택형 SC
//        List<SurveyItemDetail> detailList3 = new ArrayList<>();
//        detailList3.add(createSurveyItemDetail("단일(기타)_항목1"));
//        detailList3.add(createSurveyItemDetail("단일(기타)_항목2"));
//        detailList3.add(createSurveyItemDetail("단일(기타)_항목3"));
//        detailList3.add(createSurveyItemDetail("기타"));
//
//        surveyItemList.add(createSurveyItem("단일 선택 항목 제목", "설명", SurveyItemType.SC, "Y", null,
//                null, null, detailList3));

        // ========================================================================================================= //

        // 복수 선택형 MC
        List<SurveyItemDetail> detailList4 = new ArrayList<>();
        detailList4.add(createSurveyItemDetail("복수_항목1"));
        detailList4.add(createSurveyItemDetail("복수_항목2"));
        detailList4.add(createSurveyItemDetail("복수_항목3"));
        detailList4.add(createSurveyItemDetail("복수_항목3"));

        surveyItemList.add(createSurveyItem("복수 선택 항목 제목", "설명", SurveyItemType.MC, "Y", null,
                null, null, detailList4));

        // ========================================================================================================= //

        // 선도호형 LS
        List<SurveyItemDetail> detailList5 = new ArrayList<>();
        detailList5.add(createSurveyItemDetail("1"));
        detailList5.add(createSurveyItemDetail("2"));
        detailList5.add(createSurveyItemDetail("3"));
        detailList5.add(createSurveyItemDetail("4"));
        detailList5.add(createSurveyItemDetail("5"));

        surveyItemList.add(createSurveyItem("선도호형 항목 제목", "설명", SurveyItemType.LS, "N", null,
                "싫다", "좋다", detailList5));

        // ========================================================================================================= //


        Survey survey = createSurvey("테스트 설문_1", "설명", null, null,
                "N", surveyItemList);

        System.out.println(survey);

        surveyRepository.save(survey);
    }
    
    public Survey createSurvey(String surveyTitle, String surveyContent, LocalDate startDate, LocalDate endDate,
                               String periodAt, List<SurveyItem> surveyItemList) {
        Survey survey = new Survey().builder()
                .surveyTitle(surveyTitle)
                .periodAt(periodAt)
                .build();

        for (SurveyItem surveyItem : surveyItemList) {
            survey.addSurveyItem(surveyItem);
        }

        return survey;
    }

    public SurveyItem createSurveyItem(String surveyItemTitle, String surveyItemContents, SurveyItemType surveyItemType, String etcAt,
                                       Long essentialCount, String preferenceTypeStartRange, String preferenceTypeEndRange, List<SurveyItemDetail> surveyItemDetail) {
        SurveyItem surveyItem = new SurveyItem().builder()
                .surveyItemTitle(surveyItemTitle)
                .surveyItemContents(surveyItemContents)
                .surveyItemType(surveyItemType)
                .essentialCount(essentialCount)
                .preferenceTypeStartText(preferenceTypeStartRange)
                .preferenceTypeEndText(preferenceTypeEndRange)
                .build();

        for (SurveyItemDetail itemDetail : surveyItemDetail) {
            surveyItem.addSurveyItemDetail(itemDetail);
        }

        return surveyItem;
    }

    public SurveyItemDetail createSurveyItemDetail(String item_detail_name) {
        SurveyItemDetail surveyItemDetail = new SurveyItemDetail();
        surveyItemDetail.setItemDetailName(item_detail_name);
        return surveyItemDetail;
    }
}
