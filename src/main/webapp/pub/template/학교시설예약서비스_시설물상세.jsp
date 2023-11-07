<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<title>학교시설예약서비스_시설물상세</title>
<!-- CSS -->
<link rel=" shortcut icon" href="/00_common/images/favicon.ico">
<link rel="icon" href="/00_common/images/favicon.ico">
<link rel="stylesheet" href="/00_common/css/reservation_sub.css" media="all"> 
</head>
<body>
    <div class="reserContent">
        <div class="tit">
            <h2>시설물 상세</h2>
        </div>
        <div class="reser_tab">
            <ul>
                <li class="on"><a href="" title="선택된 페이지"><span>개방시설물</span></a></li>
                <li><a href=""><span>예약현황</span></a></li>
                <li><a href=""><span>시설개방규정</span></a></li> 
            </ul>
        </div> 
        <div class="tbl_st scroll_gr">
            <table>
                <caption>시설물상세: 번호, 시설구분, 시설명, 규모 및 면적, 이용인원, 요일별 개방 여부</caption>
                <colgroup>
                    <col style="width: auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">번호</th>
                        <th scope="col">시설구분</th>
                        <th scope="col">시설명</th>
                        <th scope="col">규모 및 면적</th>
                        <th scope="col">이용인원</th>
                        <th scope="col">요일별 개방 여부</th>
                        <th scope="col"></th>
                    </tr> 
                </thead>
                <tbody>
                    <tr>
                        <th>3</th>
                        <td>일반교실</td>
                        <td>일반교실</td>
                        <td>67m²</td>
                        <td>50명</td>
                        <td>
                            <label class="form_ele_group" for="checkbox1-1">
                                <input type="checkbox" name="checkbox1" id="checkbox1-1">
                                <span class="checkmark"></span>
                                <span>평</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-2">
                                <input type="checkbox" name="checkbox1" id="checkbox1-2">
                                <span class="checkmark"></span>
                                <span>토</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-3">
                                <input type="checkbox" name="checkbox1" id="checkbox1-3">
                                <span class="checkmark"></span>
                                <span>일</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-4">
                                <input type="checkbox" name="checkbox4" id="checkbox1-4">
                                <span class="checkmark"></span>
                                <span>공</span>
                            </label>
                        </td>
                        <td><a href="" class="btn_bl br0">신청하기</a></td>
                    </tr> 
                    <tr>
                        <th>2</th>
                        <td>운동장</td>
                        <td>운동장</td>
                        <td>67m²</td>
                        <td>50명</td>
                        <td>
                            <label class="form_ele_group" for="checkbox2-1">
                                <input type="checkbox" name="checkbox2" id="checkbox2-1">
                                <span class="checkmark"></span>
                                <span>평</span>
                            </label>
                            <label class="form_ele_group" for="checkbox2-2">
                                <input type="checkbox" name="checkbox2" id="checkbox2-2">
                                <span class="checkmark"></span>
                                <span>토</span>
                            </label>
                            <label class="form_ele_group" for="checkbox2-3">
                                <input type="checkbox" name="checkbox2" id="checkbox2-3">
                                <span class="checkmark"></span>
                                <span>일</span>
                            </label>
                            <label class="form_ele_group" for="checkbox2-4">
                                <input type="checkbox" name="checkbox2" id="checkbox2-4">
                                <span class="checkmark"></span>
                                <span>공</span>
                            </label>
                        </td>
                        <td><a href="" class="btn_bl br0">신청하기</a></td>
                    </tr> 
                    <tr>
                        <th>1</th>
                        <td>특별교실</td>
                        <td>영어교실</td>
                        <td>67m²</td>
                        <td>50명</td>
                        <td>
                            <label class="form_ele_group" for="checkbox3-1">
                                <input type="checkbox" name="checkbox3" id="checkbox3-1">
                                <span class="checkmark"></span>
                                <span>평</span>
                            </label>
                            <label class="form_ele_group" for="checkbox3-2">
                                <input type="checkbox" name="checkbox3" id="checkbox3-2">
                                <span class="checkmark"></span>
                                <span>토</span>
                            </label>
                            <label class="form_ele_group" for="checkbox3-3">
                                <input type="checkbox" name="checkbox3" id="checkbox3-3">
                                <span class="checkmark"></span>
                                <span>일</span>
                            </label>
                            <label class="form_ele_group" for="checkbox3-4">
                                <input type="checkbox" name="checkbox3" id="checkbox3-4">
                                <span class="checkmark"></span>
                                <span>공</span>
                            </label>
                        </td>
                        <td><a href="" class="btn_bl br0">신청하기</a></td>
                    </tr> 
                </tbody>
            </table>
        </div>
        <p class="btns ac">
            <a href="" class="btn_gr">돌아가기</a>
        </p>
    </div>
     
</body>
</html>