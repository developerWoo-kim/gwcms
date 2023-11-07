package gwkim.gwcms.cmm.utils;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class CommonDateUtil {

    /**
     * 문자열 -> LocalDate 변환
     * @param strDate 문자열 날짜
     * @return LocalDate
     */
    public static LocalDate stringToLocalDate(String strDate) {
        // 포맷터
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        // 문자열 -> Date
        return LocalDate.parse(strDate, formatter);
    }
}
