package gwkim.gwcms.dpcms.sm.service.impl;

import gwkim.gwcms.cmm.utils.CommonGlobalsConfigValue;
import gwkim.gwcms.dpcms.sm.domain.System;
import gwkim.gwcms.dpcms.sm.repository.SystemManageRepository;
import gwkim.gwcms.dpcms.sm.service.SystemManageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.*;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class SystemManageServiceImpl implements SystemManageService {
    private final SystemManageRepository systemManageRepository;
    private final CommonGlobalsConfigValue commonGlobalsConfigValue;

    @Override
    @Transactional
    public void saveSystem(System systemManage) throws IOException {
        String rootPath = commonGlobalsConfigValue.getRootPath();
        String templateId = systemManage.getTemplateId();
        String systemId = systemManage.getSystemId();
        // 이미지 복사
        String srcFolder = rootPath+"/images/template/"+templateId;
        String tarFolder = rootPath+"/images/web/"+systemId;

        PrintWriter out = null;
        String retType = "fail";
        String rollBackSysId = "";

        // 파일유무 체크
        File fileExistYN = new File(srcFolder);
        if(!fileExistYN.exists()){
            retType = "image";
        } else {
            File fromFile = new File(srcFolder);
            File copyFile = new File(tarFolder);
            copyDirectoryFiles(fromFile, copyFile);
        }

        // CSS 복사
        srcFolder = rootPath+"/css/template/"+templateId;
        tarFolder = rootPath+"/css/web/"+systemId;

        // 파일유무 체크
        fileExistYN = null;
        fileExistYN = new File(srcFolder);
        if(!fileExistYN.exists()){
            retType = "css";
        } else {
            File fromFile = new File(srcFolder);
            File copyFile = new File(tarFolder);
            copyDirectoryFilesCntsChg(fromFile, copyFile, templateId, systemId );
        }

        // JSP 복사
        srcFolder = rootPath+"/WEB-INF/views/common/template/"+templateId;
        tarFolder = rootPath+"/WEB-INF/views/dpcms/layout/"+systemId;
        // 파일유무 체크
        fileExistYN = null;
        fileExistYN = new File(srcFolder);
        if(!fileExistYN.exists()){
            retType = "jsp";
        } else {
            File fromFile = new File(srcFolder);
            File copyFile = new File(tarFolder);
            copyDirectoryFilesCntsChg(fromFile, copyFile, templateId, systemId);
        }

        // 시스템 등록
        System saveSystem = systemManageRepository.save(systemManage);
    }

    /**
     * 폴더복사
     *
     * @param fromFileName
     * @param copyFileName
     */
    public void copyDirectoryFiles(File fromFileName, File copyFileName) throws IOException {

        if(fromFileName.isDirectory()){
            if(!copyFileName.exists()){
                copyFileName.mkdirs();
            }

            String[] child = fromFileName.list();
            if (child != null) {
                for(int i = 0; i<child.length;i++){
                    copyDirectoryFiles(new File(fromFileName, child[i]),new File(copyFileName, child[i]) );
                }
            }
        }else{
            FileInputStream in = null;
            FileOutputStream out = null;

            try {
                in = new FileInputStream(fromFileName);
                out = new FileOutputStream(copyFileName);

                byte[] buf = new byte[1024];
                int len;
                while ((len = in.read(buf)) > 0)
                    out.write(buf, 0, len);

            } catch (IOException e) {
                log.debug(this.getClass() + "copyDirectoryFiles", e);
            } finally {
                if ( out != null && in != null ) {
                    in.close();
                    out.close();
                }
            }
        }

    }

    /**
     * 폴더복사( 경로변경 )
     *
     * @param fromFileName
     * @param copyFileName
     * @param tempID
     * @param systemId
     */
    public void copyDirectoryFilesCntsChg(File fromFileName, File copyFileName, String tempID, String systemId) {

        if(fromFileName.isDirectory()){
            if(!copyFileName.exists()){
                copyFileName.mkdirs();
            }
            String[] child = fromFileName.list();
            if (child != null) {
                for(int i = 0; i<child.length;i++){
                    copyDirectoryFilesCntsChg(new File(fromFileName, child[i]),new File(copyFileName, child[i]), tempID, systemId);
                }
            }
        }else{
            FileInputStream input = null;
            Reader sreader = null;
            FileOutputStream output = null;
            OutputStreamWriter swriter = null;
            BufferedWriter writer = null;
            BufferedReader in = null;
            try {
                input = new FileInputStream(fromFileName);
                sreader=new InputStreamReader(input,"UTF-8");
                in=new BufferedReader(sreader);
                output=new FileOutputStream(copyFileName,false);
                swriter=new OutputStreamWriter(output,"UTF-8");
                writer = new BufferedWriter(swriter);
                StringBuilder builder = new StringBuilder();
                String returnStr = "";
                int ch;

                while((ch = in.read()) !=-1)
                {
                    builder.append((char)ch);
                    returnStr = builder.toString();

                }
                if(returnStr.indexOf("/images/template/"+tempID) > -1)
                    returnStr = returnStr.replaceAll("/images/template/"+tempID, "/images/web/"+systemId);
                writer.write(returnStr);
                writer.newLine();


            } catch (IOException e) {
                log.debug(this.getClass() + "#### copyDirectoryFilesCntsChg e", e);
            } finally {
                try {
                    in.close();
                    writer.close();
                } catch (IOException e2) {
                    log.debug(this.getClass() + "#### copyDirectoryFilesCntsChg e2 Exception", e2);
                }
            }

        }

    }
}
