package gwkim.gwcms.cmm.utils;

import lombok.extern.slf4j.Slf4j;

/**
 *	Class Name	: CommonLog.java
 *	Description	: 공통 로그 처리
 *	Modification Information
 *	수정일		수정자		수정 내용
 *	-----------	----------	---------------------------
 *	2023.08.24	gwkim		최초 생성
 *
 *
 *	@author  gwkim
 *	@since  2023.08.24
 *	@version 1.0
 */
@Slf4j
public class CommonLog {

    /**
     * 디버그 처리
     * @param e Exception
     * @param c Class
     * @param methodNm String
     */
    public static void debug(Exception e, @SuppressWarnings("rawtypes") Class c, String methodNm) {
        log.debug("dpcms_"+c.getName()+"["+methodNm+"] "+e.getClass().getName());
    }
}