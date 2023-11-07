package gwkim.gwcms.config.globalconfig;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@SpringBootTest
@ExtendWith(SpringExtension.class)
public class GlobalConfigTest {
    @Value("${Globals.AesSecretKey}")
    private String aesSecretKey;

    @Value("${Globals.fileStorePath}")
    private String fileStorePath;

    @Test
    public void valueAnnotationTest(){
        Assertions.assertEquals(aesSecretKey, "dpcmsV1AesSecret");
        Assertions.assertEquals(fileStorePath, "/Users/kimgunwoo/IdeaProjects/cms/src/main/webapp/upload");
    }
}
