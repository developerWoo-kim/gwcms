package gwkim.gwcms.dpcms.cfm.util;

import lombok.extern.slf4j.Slf4j;
import org.imgscalr.Scalr;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

@Slf4j
public class CommonFileUtil {
    // 파일 허용 확장자
    private static final String FILE_ALLOW_EXTENSION = "|gul|xls|xlsx|doc|docx|hwp|pdf|ppt|pptx|jpg|gif|bmp|jpeg|psd|pdf|png|zip|txt|";

    /**
     * 디스크에 파일 저장
     * @param rootPath String 루트 경로
     * @param filePath String 파일 업로드 경로
     * @param file MultipartFile
     */
    public static void saveFile(String rootPath, String filePath, MultipartFile file) {
        try {
            String uploadPath = rootPath + filePath;
            createDir(uploadPath);
            file.transferTo(new File(uploadPath));
        } catch (IOException e) {
            log.error(e.getMessage(), e);
            throw new RuntimeException(e);
        }
    }

    /**
     * 파일 디렉토리 생성
     * @param filePath String : 파일 경로
     */
    public static void createDir(String filePath) {
        File filePathDir = new File(filePath);
        if (!filePathDir.exists()) {
            filePathDir.setExecutable(false, true);
            filePathDir.setReadable(true);
            filePathDir.setWritable(false, true);
            filePathDir.mkdirs();
        }
    }

    /**
     * 파일 삭제
     *
     * @param filePath String
     * @return int
     */
    public static int deleteFile(String filePath) {
        File file = new File(filePath);
        int ret = 0;
        if (file.exists()) {
            deleteFileSync(file);
            ret++;
        } else {
            log.debug(" file delete false");
        }

        return ret;
    }

    /**
     * 파일 삭제 실제 수행
     * @param file File
     */
    private static synchronized void deleteFileSync(File file) {
        file.delete();
    }

    /**
     * 썸네일 생성기
     *
     * @param rootFilePath String : 루트 저장 경로
     * @param originalFilePath String : 원본 파일 경로
     * @param thumbFilePath String : 썸네일 파일 경로
     * @param fileExt String : 확장자
     * @throws IOException
     */
    public static void makeThumbnail(String rootFilePath, String originalFilePath, String thumbFilePath, String fileExt) throws IOException {
        // 저장된 원본파일로부터 BufferedImage 객체를 생성합니다.
        BufferedImage srcImg = ImageIO.read(new File(rootFilePath + originalFilePath));

        if(srcImg == null) {
            return;
        }

        // 썸네일의 너비와 높이 입니다.
        int dw = 250, dh = 150;

        // 원본 이미지의 너비와 높이 입니다.
        int ow = srcImg.getWidth();
        int oh = srcImg.getHeight();

        // 원본 너비를 기준으로 하여 썸네일의 비율로 높이를 계산합니다.
        int nw = ow;
        int nh = (ow * dh) / dw;

        // 계산된 높이가 원본보다 높다면 crop이 안되므로
        // 원본 높이를 기준으로 썸네일의 비율로 너비를 계산합니다.
        if(nh > oh) {
            nw = (oh * dw) / dh; nh = oh;
        }

        // crop된 이미지로 썸네일을 생성합니다.
        BufferedImage destImg = Scalr.resize(srcImg, dw, dh);

        // 썸네일을 저장합니다. 이미지 이름 앞에 "thumb_" 를 붙여 표시했습니다.
        //String thumbName = rootFilePath + "/" + "thumb_" + uploadFileName;
        String thumbName = rootFilePath + thumbFilePath;

        File thumbFile = new File(thumbName);
        ImageIO.write(destImg, fileExt.toUpperCase(), thumbFile);
    }

    /**
     * 파일 확장자 체크
     * @param fileExtension String
     * @return boolean
     */
    public static boolean checkFileExtension(String fileExtension) {
        return FILE_ALLOW_EXTENSION.contains("|" + fileExtension + "|");
    }

}
