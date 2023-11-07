package gwkim.gwcms.dpcms.fm.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DownloadFileDto {
    private String fileName;
    private HttpHeaders httpHeaders;
    private Resource resource;
}
