package gwkim.gwcms;

import gwkim.gwcms.cmm.utils.CommonUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/")
    public String index() {
        return "redirect:/admin/index";
    }

    @RequestMapping("/{sysId}/index")
    public String index(@PathVariable("sysId") String sysId) {
        return CommonUtil.getMainLayoutPathBySysID(sysId);
    }
}
