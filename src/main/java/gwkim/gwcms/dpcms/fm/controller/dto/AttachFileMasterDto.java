package gwkim.gwcms.dpcms.fm.controller.dto;

import gwkim.gwcms.dpcms.fm.domain.AttachFile;
import gwkim.gwcms.dpcms.fm.domain.AttachFileMaster;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class AttachFileMasterDto {
    private Long fileMasterId;
    private List<AttachFileDto> fileList = new ArrayList<>();
    private LocalDateTime createDateTime;
    private String useAt;

    @Builder
    public AttachFileMasterDto(Long fileMasterId, List<AttachFileDto> fileList, LocalDateTime createDateTime, String useAt) {
        this.fileMasterId = fileMasterId;
        this.fileList = fileList;
        this.createDateTime = createDateTime;
        this.useAt = useAt;
    }

    public AttachFileMasterDto(AttachFileMaster fileMaster) {
        this.fileMasterId = fileMaster.getFileMasterId();
        List<AttachFile> flist = fileMaster.getFileList();
        for(AttachFile file : flist) {
            fileList.add(new AttachFileDto(file));
        }
        this.createDateTime = fileMaster.getCreateDateTime();
        this.useAt = fileMaster.getUseAt();
    }
}
