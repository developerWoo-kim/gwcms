package gwkim.gwcms.dpcms.sv.repository;

public interface SurveyAnswerMasterCustomRepository {

    /**
     * 설문 참여자 수 조회
     * @param surveyId Long
     * @return int
     */
    int findAnswerMemberCountBySurveyId(Long surveyId);
}
