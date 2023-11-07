package gwkim.gwcms.dpcms.sv.domain;

import gwkim.gwcms.dpcms.sv.controller.form.SurveyItemInsertForm;

/**
 * 설문 유형 ENUM
 * OE : 서술형, SC : 단일 선택형, MC : 복수 선택형, LS : 선호도 형
 */
public enum SurveyItemType {
    OE {
        @Override
        public SurveyItem createSurveyItem(SurveyItemInsertForm form) {
            return SurveyItem.openEndedSurveyItem(form);
        }
    },
    SC {
        @Override
        public SurveyItem createSurveyItem(SurveyItemInsertForm form) {
            return SurveyItem.choiceSurveyItem(form);
        }
    },
    MC {
        @Override
        public SurveyItem createSurveyItem(SurveyItemInsertForm form) {
            return SurveyItem.choiceSurveyItem(form);
        }
    },
    LS {
        @Override
        public SurveyItem createSurveyItem(SurveyItemInsertForm form) {
            return SurveyItem.likertScaleSurveyItem(form);
        }
    };

    public abstract SurveyItem createSurveyItem(SurveyItemInsertForm form);
}
