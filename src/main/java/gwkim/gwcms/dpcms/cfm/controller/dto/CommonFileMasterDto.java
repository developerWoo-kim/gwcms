package gwkim.gwcms.dpcms.cfm.controller.dto;

import gwkim.gwcms.dpcms.cfm.domain.CommonFile;
import gwkim.gwcms.dpcms.cfm.domain.CommonFileMaster;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class CommonFileMasterDto {
    private Long masterId;
    private List<CommonFileDto> fileList = new ArrayList<>();

    public CommonFileMasterDto(Long masterId) {
        this.masterId = masterId;
    }

    public CommonFileMasterDto(CommonFileMaster commonFileMaster) {
        this.masterId = commonFileMaster.getFileMasterId();
        for(CommonFile file : commonFileMaster.getFileList()) {
            this.fileList.add(new CommonFileDto(file));
        }
    }
}
