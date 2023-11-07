<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<title>학교시설예약서비스</title>
<!-- CSS -->
<link rel=" shortcut icon" href="/00_common/images/favicon.ico">
<link rel="icon" href="/00_common/images/favicon.ico">
<link rel="stylesheet" href="/00_common/css/reservation_sub.css" media="all"> 
</head>
<body>
    <div class="reserContent">
        <div class="tbl_st fcy">
            <table>
                <caption>지역, 시설, 기간, 학교명</caption>
                <colgroup>
                    <col style="width: 20%;">
                    <col style="width: auto;">
                </colgroup> 
                <tbody>
                    <tr>
                        <th scope="row">지역</th>
                        <td class="al">
                            <label class="form_ele_group" for="checkbox1-1">
                                <input type="checkbox" name="checkbox1" id="checkbox1-1">
                                <span class="checkmark"></span>
                                <span>전체</span>
                            </label><br/>
                            <label class="form_ele_group" for="checkbox1-2">
                                <input type="checkbox" name="checkbox1" id="checkbox1-2">
                                <span class="checkmark"></span>
                                <span>가람동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-3">
                                <input type="checkbox" name="checkbox1" id="checkbox1-3">
                                <span class="checkmark"></span>
                                <span>한솔동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-4">
                                <input type="checkbox" name="checkbox1" id="checkbox1-4">
                                <span class="checkmark"></span>
                                <span>도담동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-5">
                                <input type="checkbox" name="checkbox1" id="checkbox1-5">
                                <span class="checkmark"></span>
                                <span>어진동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-6">
                                <input type="checkbox" name="checkbox1" id="checkbox1-6">
                                <span class="checkmark"></span>
                                <span>아름동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-7">
                                <input type="checkbox" name="checkbox1" id="checkbox1-7">
                                <span class="checkmark"></span>
                                <span>종촌동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-8">
                                <input type="checkbox" name="checkbox1" id="checkbox1-8">
                                <span class="checkmark"></span>
                                <span>고운동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-9">
                                <input type="checkbox" name="checkbox1" id="checkbox1-9">
                                <span class="checkmark"></span>
                                <span>보람동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-10">
                                <input type="checkbox" name="checkbox1" id="checkbox1-10">
                                <span class="checkmark"></span>
                                <span>새롬동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-11">
                                <input type="checkbox" name="checkbox1" id="checkbox1-11">
                                <span class="checkmark"></span>
                                <span>나성동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-12">
                                <input type="checkbox" name="checkbox1" id="checkbox1-12">
                                <span class="checkmark"></span>
                                <span>세종동</span>
                            </label> 
                            <label class="form_ele_group" for="checkbox1-13">
                                <input type="checkbox" name="checkbox1" id="checkbox1-13">
                                <span class="checkmark"></span>
                                <span>대평동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-14">
                                <input type="checkbox" name="checkbox1" id="checkbox1-14">
                                <span class="checkmark"></span>
                                <span>소담동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-15">
                                <input type="checkbox" name="checkbox1" id="checkbox1-15">
                                <span class="checkmark"></span>
                                <span>다정동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-16">
                                <input type="checkbox" name="checkbox1" id="checkbox1-16">
                                <span class="checkmark"></span>
                                <span>해밀동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-17">
                                <input type="checkbox" name="checkbox1" id="checkbox1-17">
                                <span class="checkmark"></span>
                                <span>산울동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-18">
                                <input type="checkbox" name="checkbox1" id="checkbox1-18">
                                <span class="checkmark"></span>
                                <span>누리동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-19">
                                <input type="checkbox" name="checkbox1" id="checkbox1-19">
                                <span class="checkmark"></span>
                                <span>한별동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-20">
                                <input type="checkbox" name="checkbox1" id="checkbox1-20">
                                <span class="checkmark"></span>
                                <span>반곡동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-21">
                                <input type="checkbox" name="checkbox1" id="checkbox1-21">
                                <span class="checkmark"></span>
                                <span>집현동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-22">
                                <input type="checkbox" name="checkbox1" id="checkbox1-22">
                                <span class="checkmark"></span>
                                <span>합강동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-23">
                                <input type="checkbox" name="checkbox1" id="checkbox1-23">
                                <span class="checkmark"></span>
                                <span>다솜동</span>
                            </label> 
                            <label class="form_ele_group" for="checkbox1-24">
                                <input type="checkbox" name="checkbox1" id="checkbox1-24">
                                <span class="checkmark"></span>
                                <span>용호동</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-25">
                                <input type="checkbox" name="checkbox1" id="checkbox1-25">
                                <span class="checkmark"></span>
                                <span>연기면</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-26">
                                <input type="checkbox" name="checkbox1" id="checkbox1-26">
                                <span class="checkmark"></span>
                                <span>연동면</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-27">
                                <input type="checkbox" name="checkbox1" id="checkbox1-27">
                                <span class="checkmark"></span>
                                <span>부강면</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-28">
                                <input type="checkbox" name="checkbox1" id="checkbox1-28">
                                <span class="checkmark"></span>
                                <span>금남면</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-29">
                                <input type="checkbox" name="checkbox1" id="checkbox1-29">
                                <span class="checkmark"></span>
                                <span>장군면</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-30">
                                <input type="checkbox" name="checkbox1" id="checkbox1-30">
                                <span class="checkmark"></span>
                                <span>연서면</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-31">
                                <input type="checkbox" name="checkbox1" id="checkbox1-31">
                                <span class="checkmark"></span>
                                <span>전의면</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-32">
                                <input type="checkbox" name="checkbox1" id="checkbox1-32">
                                <span class="checkmark"></span>
                                <span>전동면</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-33">
                                <input type="checkbox" name="checkbox1" id="checkbox1-33">
                                <span class="checkmark"></span>
                                <span>소정면</span>
                            </label>
                            <label class="form_ele_group" for="checkbox1-34">
                                <input type="checkbox" name="checkbox1" id="checkbox1-34">
                                <span class="checkmark"></span>
                                <span>조치원읍</span>
                            </label> 
                        </td>
                    </tr> 
                    <tr>
                        <th scope="row">시설</th>
                        <td class="al">
                            <label class="form_ele_group" for="checkbox2-1">
                                <input type="checkbox" name="checkbox2" id="checkbox2-1">
                                <span class="checkmark"></span>
                                <span>전체</span>
                            </label><br/>
                            <label class="form_ele_group" for="checkbox2-2">
                                <input type="checkbox" name="checkbox2" id="checkbox2-2">
                                <span class="checkmark"></span>
                                <span>일반교실</span>
                            </label>
                            <label class="form_ele_group" for="checkbox2-3">
                                <input type="checkbox" name="checkbox2" id="checkbox2-3">
                                <span class="checkmark"></span>
                                <span>체육관(강당)</span>
                            </label>
                            <label class="form_ele_group" for="checkbox2-4">
                                <input type="checkbox" name="checkbox2" id="checkbox2-4">
                                <span class="checkmark"></span>
                                <span>운동장</span>
                            </label>
                            <label class="form_ele_group" for="checkbox2-5">
                                <input type="checkbox" name="checkbox2" id="checkbox2-5">
                                <span class="checkmark"></span>
                                <span>기타</span>
                            </label>
                        </td>
                    </tr> 
                    <tr>
                        <th scope="row">기간</th>
                        <td class="al"><input type="text" name="" title="시작 기간"> ~ <input type="text" name="" title="기간 끝"></td>
                    </tr> 
                    <tr>
                        <th scope="row">학교명</th>
                        <td class="al">
                            <input type="text" name="" class="InpSel_type01" title="검색어 입력" placeholder="검색어 입력">
					        <button class="btn_gr InpSel_100"><i class="xi-search"></i>검색</button>
                        </td>
                    </tr> 
                </tbody>
            </table>
        </div>
        <p class="fcy_list mgt30">
            <span>시설구분: </span><em class="fcy1">일반교실,</em> <em class="fcy2">체육관/강당,</em> <em class="fcy3">운동장,</em> <em class="fcy4">테니스장,</em> <em class="fcy5">골프연습장,</em> <em class="fcy6">기타</em>
        </p>
        <div class="tbl_st scroll_gr fcy_list">
            <table>
                <caption>번호, 지역, 학교명, 시설, 연락처, 주소</caption>
                <colgroup>
                    <col style="width: auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">번호</th>
                        <th scope="col">지역</th>
                        <th scope="col">학교명</th>
                        <th scope="col">시설</th>
                        <th scope="col">연락처</th>
                        <th scope="col">주소</th> 
                    </tr> 
                </thead>
                <tbody>
                    <tr>
                       <td>3</td>
                       <td>다정동</td>
                       <td>학교3</td>
                       <td><em class="fcy1">&nbsp;</em></td>
                       <td>010-1234-5678</td>
                       <td>주소3</td>
                    </tr> 
                    <tr>
                        <td>2</td>
                        <td>한솔동</td>
                        <td>학교2</td>
                        <td></td>
                        <td>010-1234-5678</td>
                        <td>주소2</td>
                    </tr> 
                    <tr>
                        <td>1</td>
                        <td>새롬동</td>
                        <td>학교1</td>
                        <td><em class="fcy3">&nbsp;</em></td>
                        <td>010-1234-5678</td>
                        <td>주소1</td>
                    </tr> 
                </tbody>
            </table>
        </div>
    </div> 
</body>
</html>