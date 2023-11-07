package gwkim.gwcms.dpcms.mn.utils;

import gwkim.gwcms.dpcms.mn.domain.Menu;

import java.util.List;

public class MenuGenerator {
    /**
     * 메뉴 리스트 생성
     * @param list
     */
    public static String makeMenuList(List<Menu> list) {

        StringBuffer sb = new StringBuffer();

        for (int i = 0; i < list.size(); i++) {

            // 메뉴 레벨
            int menuLevel = list.get(i).getMenuLevel();
            // 메뉴 아이디
            String menuId = String.valueOf(list.get(i).getMenuId());
            // 메뉴 명
            String menuName = list.get(i).getMenuName();
            // 상위 메뉴 아이디
            String thisUpperMenuId = String.valueOf(list.get(i).getUpperMenuId());

            //사용 여부
            String useAt = "";
            String useVisible = "";
            if ( list.get(i).getUseAt() != null ) {
                useAt = list.get(i).getUseAt();
                if ( useAt.equals("N") ) {
                    useVisible= "&nbsp; [미사용]";
                } else {
                    useVisible = "";
                }

            } else {
                useAt = "Y";
                useVisible = "";
            }

            /** 메뉴 생성 시작 */
            int prevMenuLevel = 0;

            if (i > 0) {
                prevMenuLevel = list.get(i-1).getMenuLevel();
            }

            String nextUpperMenuId = "";
            int nextMenuLevel = 0;

            if (i != list.size() - 1) {
                // 다음 순서 메뉴의 상위 메뉴 아이디
                nextUpperMenuId = String.valueOf(list.get(i+1).getUpperMenuId());
                // 다음 순서 메뉴의 메뉴 레벨
                nextMenuLevel = list.get(i+1).getMenuLevel();
            }

            if (menuLevel == 1) {
                sb.append("<li id='menuId_" + menuId + "' data-area=" + menuLevel + ">");
                sb.append("<div><button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp;<button class='btnmnSt2 menuDetail clickAble'" +
                        " type='button' data-id='" + menuId + "' data-nm='" + menuName + "'>상세정보</button>&nbsp;&nbsp;<a class='menuDetail clickAble' href='#'" +
                        " data-id='" + menuId + "' data-nm='" + menuName + "'>" + menuName + " " + useVisible + "</a></div>\n");

                // 현재 메뉴가 다음 메뉴의 상위 메뉴가 아닐 경우 닫는다. ( 단일 메뉴 )
                if (!menuId.equals(nextUpperMenuId)) {
                    sb.append("</li>");
                }

            } else if (menuLevel == 2) {
                // 이전 메뉴의 하위 메뉴 일 때 ul 생성
                if (menuLevel != prevMenuLevel && menuLevel > prevMenuLevel) {
                    sb.append("<ul style='display: none;'>");
                }

                sb.append("	<li id='menuId_" + menuId + "' data-area=" + menuLevel + ">");
                sb.append("		<div><button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp;<button class='btnmnSt2 menuDetail clickAble' type='button'" +
                        " data-id='" + menuId + "' data-nm='" + menuName + "'>상세정보</button>&nbsp;&nbsp;<a class='menuDetail clickAble' href='#' data-id='" + menuId + "'" +
                        " data-nm='" + menuName + "'>" + menuName + " " + useVisible + "</a></div>\n");

                // 현재 메뉴가 다음 메뉴의 상위메뉴가 아닐 경우 닫는다.
                if (!menuId.equals(nextUpperMenuId)) {
                    sb.append("		</li>");

                    // 다음 메뉴가 1차 메뉴 인경우
                    if (menuLevel > nextMenuLevel && nextMenuLevel == 1) {
                        sb.append("	</ul>");
                    }

                    // 현재 메뉴의 상위 메뉴와 다음 메뉴의 상위 메뉴가 다를 때 닫는다.
                    if (!thisUpperMenuId.equals(nextUpperMenuId)) {
                        sb.append("</li>");
                    }
                }
            } else if (menuLevel == 3) {
                // 이전 메뉴의 하위 메뉴 일 때 ul 생성
                if (menuLevel != prevMenuLevel && menuLevel > prevMenuLevel) {
                    sb.append("			<ul style='display: none;'>");
                }

                sb.append("<li id='menuId_" + menuId + "' data-area=" + menuLevel + ">");
                sb.append("	<div><button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp;<button class='btnmnSt2 menuDetail clickAble' type='button' " +
                        "data-id='" + menuId + "' data-nm='" + menuName + "'>상세정보</button>&nbsp;&nbsp;<a class='menuDetail clickAble' href='#' id='menuName' " +
                        "data-id='" + menuId + "' data-nm='" + menuName + "'>" + menuName + " " + useVisible + "</a></div>\n");

                // 현재 메뉴가 다음 메뉴의 상위메뉴가 아닐 경우 닫는다.
                if (!menuId.equals(nextUpperMenuId)) {
                    sb.append("		</li>");

                    // 다음 메뉴가 1차, 2차 인경우
                    if (menuLevel > nextMenuLevel) {
                        if ( nextMenuLevel == 0 ||  nextMenuLevel == 1 ) {
                            sb.append("	</ul>");
                            sb.append("	 </li>");
                            sb.append("	  </ul>");

                        } else {
                            sb.append("	</ul>");
                        }
                    }

                    // 현재 메뉴의 상위 메뉴와 다음 메뉴의 상위 메뉴가 다를 때 닫는다.
                    if (!thisUpperMenuId.equals(nextUpperMenuId)) {
                        sb.append("</li>");
                    }
                }

                //} else if ( menuLevel == 4 && tabAt.equals("Y") ) {
            } else if ( menuLevel == 4 ) {

                // 이전 메뉴의 하위 메뉴 일 때 ul 생성
                if (menuLevel != prevMenuLevel && menuLevel > prevMenuLevel) {
                    sb.append("			<ul style='display: none;'>");
                }

                sb.append("<li id='menuId_" + menuId + "' data-area=" + menuLevel + ">");
                sb.append("	<div><button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp;<button class='btnmnSt2 menuDetail clickAble' type='button' " +
                        "data-id='" + menuId + "' data-nm='" + menuName + "'>상세정보</button>&nbsp;&nbsp;<a class='menuDetail clickAble' href='#' id='menuName' data-id='" + menuId + "' " +
                        "data-nm='" + menuName + "'>" + menuName + " " + useVisible + "</a></div>\n");

                // 현재 메뉴가 다음 메뉴의 상위메뉴가 아닐 경우 닫는다.
                if (!menuId.equals(nextUpperMenuId)) {
                    sb.append("		</li>");

                    // 다음 메뉴가 1차, 2차, 3차 인경우
                    if (menuLevel > nextMenuLevel) {
                        if ( nextMenuLevel == 0 || nextMenuLevel == 1 ) {
                            sb.append("	</ul>");
                            sb.append("	 </li>");
                            sb.append("	  </ul>");
                            sb.append("	   </li>");
                            sb.append("	    </ul>");

                        } else if ( nextMenuLevel == 2 ) {
                            sb.append("	</ul>");
                            sb.append("	 </li>");
                            sb.append("	  </ul>");

                        } else {
                            sb.append("	</ul>");
                        }
                    }

                    // 현재 메뉴의 상위 메뉴와 다음 메뉴의 상위 메뉴가 다를 때 닫는다.
                    if (!thisUpperMenuId.equals(nextUpperMenuId)) {
                        sb.append("</li>");
                    }
                }

                //} else if ( menuLevel == 5 && tabAt.equals("Y") ) {
            } else if ( menuLevel == 5 ) {

                // 이전 메뉴의 하위 메뉴 일 때 ul 생성
                if (menuLevel != prevMenuLevel && menuLevel > prevMenuLevel) {
                    sb.append("			<ul style='display: none;'>");
                }

                sb.append("<li id='menuId_" + menuId + "' data-area=" + menuLevel + ">");
                sb.append("	<div><button class='btnmnSt1' type='button' id='btnSave'>메뉴이동</button>&nbsp;<button class='btnmnSt2 menuDetail clickAble' type='button' " +
                        "data-id='" + menuId + "' data-nm='" + menuName + "'>상세정보</button>&nbsp;&nbsp;<a class='menuDetail clickAble' href='#' id='menuName' data-id='" + menuId + "' " +
                        "data-nm='" + menuName + "'>" + menuName + " " + useVisible + "</a></div>\n");
                sb.append("</li>");

                if (menuLevel > nextMenuLevel) {
                    sb.append("			</ul>");
                }

                if (!thisUpperMenuId.equals(nextUpperMenuId)) {
                    sb.append("		</li>");

                    if (menuLevel > nextMenuLevel ) {

                        if ( nextMenuLevel == 0 || nextMenuLevel == 1 ) {
                            sb.append("	</ul>");
                            sb.append("	 </li>");
                            sb.append("	  </ul>");
                            sb.append("	   </li>");
                            sb.append("	    </ul>");
                            sb.append("	   	 </li>");

                        } else if ( nextMenuLevel == 2 ) {
                            sb.append("	</ul>");
                            sb.append("	 </li>");
                            sb.append("	  </ul>");
                            sb.append("	   </li>");

                        } else if (nextMenuLevel == 3 ) {
                            sb.append("	  </ul>");
                            sb.append("	   </li>");

                        } else {
                            sb.append("");
                        }
                    }
                }
            }

        }

        return sb.toString();
    }
}
