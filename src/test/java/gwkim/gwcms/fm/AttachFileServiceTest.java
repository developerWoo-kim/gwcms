package gwkim.gwcms.fm;

import gwkim.gwcms.dpcms.bm.repository.PostRepository;
import gwkim.gwcms.dpcms.fm.controller.dto.AttachFileMasterDto;
import gwkim.gwcms.dpcms.fm.domain.AttachFileMaster;
import gwkim.gwcms.dpcms.fm.repository.AttachFileMasterRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

@SpringBootTest
@ExtendWith(SpringExtension.class)
@Transactional
public class AttachFileServiceTest {
    @Autowired
    PostRepository postRepository;
    @Autowired
    AttachFileMasterRepository attachFileMasterRepository;

    @Test
    public void findByPostIdTest() {

        AttachFileMaster attachFileMaster = attachFileMasterRepository.findByPost_PostId(2L).orElseThrow();

        AttachFileMasterDto attachFileMasterDto = new AttachFileMasterDto(attachFileMaster);


        System.out.println(attachFileMasterDto);
    }
}
