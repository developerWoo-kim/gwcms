package gwkim.gwcms.cmm.utils.chart;


import lombok.Getter;

/**
 * 차트 컬러 (현재 5가지)
 *
 * @author gwkim
 * @since 2023.08.09
 * @version 0.1
 */
@Getter
public enum ChartColor {
    BLUE(4, "rgb(78,115,223)", "text-primary"),
    GREEN(1, "rgb(28,200,138)", "text-success"),
    YELLOW(2, "rgb(246,194,62)", "text-warning"),
    DARK(0, "rgb(90,92,105)", "text-dark"),
    GRAY(3, "rgb(133,135,150)", "text-gray");

    private final int value;
    private final String symbol;
    private final String cssClass;

    ChartColor(int value, String symbol, String cssClass) {
        this.value = value;
        this.symbol = symbol;
        this.cssClass = cssClass;
    }
}
