
/**
 * 브라우저 체크
 */
function browserChecker() {
    const agent = window.navigator.userAgent.toLowerCase();
    let browserName;

    switch (true) {
        case agent.indexOf("edge") > -1 :
            browserName = "MSEdge";
            break;
        case agent.indexOf("edg/") > -1 :
            browserName = "Edge";
            break;
        case agent.indexOf("opr") > -1 && !!window.opr:
            browserName = "Opera";
            break;
        case agent.indexOf("chrome") > -1 && !!window.chrome:
            browserName = "Chrome";
            break;
        case agent.indexOf("trident") > -1 :
            browserName = "MSIE";
            break;
        case agent.indexOf("firefox") > -1 :
            browserName = "Firefox";
            break;
        case agent.indexOf("safari") > -1 :
            browserName = "Safari";
            break;
    }

    return browserName;
}