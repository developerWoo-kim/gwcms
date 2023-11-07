package gwkim.gwcms.dpcms.ad.controller;

import gwkim.gwcms.cmm.utils.CommonGlobalsConfigValue;
import gwkim.gwcms.cmm.utils.CommonUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class AdminMainController {
    private final CommonGlobalsConfigValue commonGlobalsConfigValue;

    /**
     * dpcms 메인 화면
     *
     * @param model
     * @return
     */
    @RequestMapping("/admin/index")
    public String adminIndex(Model model){
        // 서버 현황 조회 (SmSystemInfoController.java)
        String uploadPath = commonGlobalsConfigValue.getFileStorePath();
        File file = new File(uploadPath);
        long total = file.getTotalSpace();
        long free = file.getFreeSpace();
        long use = total - free;

        if (total == 0) {
            total = 1;
        }
        double per = (double) ((use * 10000) / total) / 100;
        double restPer = (double) (100.00 - per);

        Map server = new HashMap<String, String>();
        server.put("totalDisk", CommonUtil.getCommaString("" + (total / 1024 / 1024)) + "MB");
        server.put("useDisk", CommonUtil.getCommaString("" + (use / 1024 / 1024)) + "MB(" + per + "%)");
        server.put("per", "" + per);
        server.put("restDisk", CommonUtil.getCommaString("" + (free / 1024 / 1024)) + "MB(" + restPer + "%)");
        server.put("restPer", "" + restPer);
        model.addAttribute("server", server);

        return CommonUtil.getMainLayoutPathBySysID("admin");
    }

    @RequestMapping("/admin/ad/loginPage")
    public String adminLoginPage(Model model) {
        return "dpcms/ad/adminLoginPage";
    }
}
