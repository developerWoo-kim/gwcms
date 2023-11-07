package gwkim.gwcms.cmm.security.exception.web.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/author/denied")
public class SecurityAccessDeniedController {
    @RequestMapping(produces = MediaType.TEXT_HTML_VALUE)
    public String failedSecureHtml() {
        return "common/accessDenied";
    }

    @RequestMapping
    public ResponseEntity<String> failedSecure() {
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(null);
    }
}
