package gwkim.gwcms.dpcms.bm.domain;

import lombok.Getter;

@Getter
public enum BoardType {
    NORMAL("NORMAL"),
    IMAGE("IMAGE");

    private final String value;
    BoardType(String value) {
        this.value = value;
    }
}
