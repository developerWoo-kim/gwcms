package gwkim.gwcms.cmm.utils.chart.pieChart;

import gwkim.gwcms.cmm.utils.chart.ChartColor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * 파이 차트용 객체
 *
 * @author gwkim
 * @since 2023.08.14
 * @version 0.1
 */
@Data
@NoArgsConstructor
public class PieChart {
    private List<Long> data = new ArrayList<>();                // 데이터
    private List<String> backgroundColor = new ArrayList<>();   // 차트 배경색

    //== 편의 메소드 ==//

    /**
     * 차트 색 세팅
     */
    public void createBackgroundColor() {
        ChartColor[] chartColor = ChartColor.values(); // 차트 컬러 가져와서 순서대로 뿌려주기
        long colorCount = Arrays.stream(chartColor).count();
        int index = 0;
        for(Long i : data) {
            if(index == colorCount) index = 0;
            backgroundColor.add(chartColor[index].getSymbol());
            index++;
        }
    }

}
