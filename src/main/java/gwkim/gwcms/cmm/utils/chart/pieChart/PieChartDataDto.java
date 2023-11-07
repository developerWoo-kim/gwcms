package gwkim.gwcms.cmm.utils.chart.pieChart;

import gwkim.gwcms.cmm.utils.chart.ChartColor;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * pie chart dto
 *
 * @author gwkim
 * @since 2023.08.14
 * @version 0.1
 */
@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
public class PieChartDataDto {
    private List<String> labels = new ArrayList<>();                   // 차트 레이블
    private List<String> chartCategoryData = new ArrayList<>();        // 차트 카테고리 데이터
    private PieChart chartData;                                        // 차트 데이터

    //== 편의 메소드 ==//
    /**
     * 차트 카테고리 데이터 세팅
     */
    public void createChartCategoryData(int cnt) {
        ChartColor[] chartColor = ChartColor.values(); // 차트 컬러 가져와서 순서대로 뿌려주기
        long colorCount = Arrays.stream(chartColor).count();
        int index = 0;
        for(int i = 0; i < cnt; i++) {
            if(index == colorCount) index = 0;
            chartCategoryData.add(chartColor[index].getSymbol());
            index++;
        }
    }

    /**
     * 데이터 수 확인
     * @return
     */
    public Integer culUserTotalCnt() {
        int totalCnt = 0;
        return totalCnt;
    }
}
