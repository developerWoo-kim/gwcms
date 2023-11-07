package gwkim.gwcms.dpcms.bm.controller.api;

import gwkim.gwcms.cmm.utils.CommonGlobalsConfigValue;
import gwkim.gwcms.dpcms.bm.controller.form.PostInsertForm;
import gwkim.gwcms.dpcms.bm.controller.form.PostUpdateForm;
import gwkim.gwcms.dpcms.bm.domain.Board;
import gwkim.gwcms.dpcms.bm.domain.BoardType;
import gwkim.gwcms.dpcms.bm.domain.Post;
import gwkim.gwcms.dpcms.bm.repository.BoardRepository;
import gwkim.gwcms.dpcms.bm.repository.PostRepository;
import gwkim.gwcms.dpcms.fm.domain.AttachFile;
import gwkim.gwcms.dpcms.fm.domain.AttachFileMaster;
import gwkim.gwcms.dpcms.fm.domain.ThumbnailFile;
import gwkim.gwcms.dpcms.fm.repository.AttachFileMasterRepository;
import gwkim.gwcms.dpcms.fm.repository.AttachFileRepository;
import gwkim.gwcms.dpcms.fm.repository.ThumbnailFileRepository;
import gwkim.gwcms.dpcms.fm.service.AttachFileService;
import gwkim.gwcms.dpcms.fm.service.ThumbnailFileService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class PostManageApiService {
    private final CommonGlobalsConfigValue globalsConfigValue;

    private final BoardRepository boardRepository;
    private final PostRepository postRepository;
    private final AttachFileService attachFileService;
    private final AttachFileMasterRepository attachFileMasterRepository;
    private final AttachFileRepository attachFileRepository;
    private final ThumbnailFileRepository thumbnailFileRepository;
    private final ThumbnailFileService thumbnailFileService;

    /**
     * 게시물 저장
     *
     * @param form : PostInsertForm
     */
    @Transactional
    public void savePost(PostInsertForm form) {
        /** 게시물 저장*/
        Board board = boardRepository.findById(form.getBoardId()).orElseThrow();
        Post post = postRepository.save(Post.createPost(form, board));

        /**
         * 이미지 게시판인 경우 썸네일 생성 프로세스
         */
        if(board.getBoardType() == BoardType.IMAGE) {
            if(Optional.ofNullable(form.getThumbFile()).isPresent()) {
                String rootPath = globalsConfigValue.getRootPath();

                ThumbnailFile thumbFile = ThumbnailFile.createThumbFile(post, form.getThumbFile());
                thumbnailFileService.uploadThumbFileProcessor(rootPath, thumbFile, form.getThumbFile());
                thumbnailFileRepository.save(thumbFile);
            };
        }

        /**
         * 첨부 파일이 있는 경우 체크
         * 업로드 경로에 저장 후 db insert
         * */
        if(form.getFile() != null) {
            List<AttachFile> attachFiles = attachFileService.uploadFileToStorage(form.getFile());
            AttachFileMaster masterFile = AttachFileMaster.createMasterFile(post, attachFiles.toArray(attachFiles.toArray(new AttachFile[0])));
            AttachFileMaster save = attachFileMasterRepository.save(masterFile);
        }
    };

    /**
     * 게시물 수정
     *
     * @param form : PostUpdateForm
     */
    @Transactional
    public void updatePost(PostUpdateForm form) {
        // 게시물 저장
        Post post = postRepository.findById(form.getPostId()).orElseThrow();
        post.setPostTitle(form.getPostTitle());
        post.setPostContent(form.getPostContent());

        Optional<AttachFileMaster> findAttachMasterFile = attachFileMasterRepository.findByPost_PostId(post.getPostId());

        // updateForm 에 파일이 있는 경우
        if(form.getFile() != null) {
            List<AttachFile> attachFiles = new ArrayList<>();
            // 기존 파일 있는지 체크
            if(findAttachMasterFile.isPresent()) {
                AttachFileMaster attachFileMaster = findAttachMasterFile.get();
                attachFiles = attachFileService.uploadFileToStorage(form.getFile());

                for (AttachFile attachFile : attachFiles) {
                    attachFileMaster.addAttachFile(attachFile);
                }

                attachFileRepository.saveAll(attachFiles);
            } else {
                attachFiles = attachFileService.uploadFileToStorage(form.getFile());
                AttachFileMaster masterFile = AttachFileMaster.createMasterFile(post, attachFiles.toArray(attachFiles.toArray(new AttachFile[0])));
                AttachFileMaster save = attachFileMasterRepository.save(masterFile);
            }
        }
    };
}
