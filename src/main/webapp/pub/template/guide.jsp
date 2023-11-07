<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
    $(document).ready(function() {
	$("#con_com_box > div").hide(); // Initially hide all content
	$("#tabs li:first").addClass('on'); // Activate first tab
	$("#con_com_box > div:first").fadeIn(); // Show first tab content
	
	$('#tabs a').click(function(e) {
		e.preventDefault();        
		$("#con_com_box > div").hide(); //Hide all content
		$("#tabs li").removeClass('on'); //Reset id's
		$(this).parent().addClass('on'); // Activate this
		$('#' + $(this).attr('title')).fadeIn(); // Show content for current tab
	});
});
</script>

<style>
    .Guide_con h3.Guid_tit {position:relative; padding-top:8px; font-size:1.2rem; color:#111; font-weight:500;}
    .Guide_con h3.Guid_tit:before {content:""; display:block; position:absolute; top:0; left:0; width:3rem; height:4px; background:#1976d2;}
    .Guide_con .DG_list {padding-bottom:25px; margin-bottom:25px; border-bottom:1px dashed #c3c3c3; overflow:hidden; }
    .Guide_con .DG_list li {margin:5px; float:left;}
    .Guide_con .DG_list li a {display:block; min-width:170px; padding:0 1rem; text-align:center; font-size:18px; line-height:45px; color:#fff; border:1px solid #07174a; background:#07174a; }
    .Guide_con .DG_list li a:hover, 
    .Guide_con .DG_list li a:focus {border:1px solid #064584; background:#1976d2;}
    .Guide_titBox {margin:2rem 0 1rem; padding:0 1rem 1rem; color:#000; text-align:center; border-bottom:2px dotted #999; background:#fff;}
    .Guide_titBox h3 {position:relative; padding-bottom:0.5rem; margin-bottom:0.5rem; font-size:1.2rem; font-weight:600;}
    .Guide_titBox h3:before {content:""; display:block; position:absolute; bottom:0; left:50%; width:3rem; height:2px; margin-left:-1.5rem; border-radius:1px; background:#000;}
    .Guide_titBox p {margin-top:5px; font-size:0.8rem; font-weight:200;}

    .Guide_titBox2 {position:relative; margin:1.5rem 0 0.5rem; color:#000; border-top:2px solid #333; border-bottom:1px solid #666; background:#f7f7f7; line-height:0; font-size:0;}
    .Guide_titBox2 h3 {display:inline-block; margin:-15px 0 0 -1px; font-size:.75rem; line-height:1.4; padding:3px 1rem; line-height:1rem; color:#fff; background:#333;}
    .Guide_titBox2 div {padding:0.5rem 0; font-size:0.8rem; line-height:18px; }

    .GuideList{ padding:1rem; border:2px solid #ddd;}
    .GuideList ul{ font-size:0;}
    .GuideList li{ display:inline-block; font-size:.8rem; padding:.25rem; }
 
    .com_code {width:100%; height:100px; font-size:12px; font-family:'Dotum'; line-height:1.3; color:#000; border:none; background:#f7f7f7;}
</style>

<div class="Guide_con">
    <div class="tab_list Tab_w20">
        <ul id="tabs">
            <li class="on"><a href="#" title="con_com1"><span>타이틀</span></a></li>
            <li><a href="#" title="con_com2"><span>블릿 및 리스트</span></a></li>
            <li><a href="#" title="con_com3"><span>텍스트 관련</span></a></li>
            <li><a href="#" title="con_com4"><span>테이블</span></a></li>
            <li><a href="#" title="con_com5"><span>박스</span></a></li>
            <li><a href="#" title="con_com6"><span>탭</span></a></li>
            <li><a href="#" title="con_com7"><span>버튼</span></a></li>
            <li><a href="#" title="con_com8"><span>이미지</span></a></li>
            <li><a href="#" title="con_com9"><span>콘텐츠준비중</span></a></li>
        </ul>
    </div>

    <!-- 여기부터 -->
    <div id="con_com_box">

        <div id="con_com1">
        <!-- 타이틀 -->

            <div class="Guide_titBox">
                <h3>타이틀</h3>
            </div>

            <h3 class="tit1">타이틀1 tit1</h3>
            <h4 class="tit2">타이틀2 tit2</h4>
            <h5 class="tit3">타이틀3 tit3</h5>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <h3 class="tit1">타이틀1 tit1</h3>
                    <h4 class="tit2">타이틀2 tit2</h4>
                    <h5 class="tit3">타이틀3 tit3</h5>
                </textarea>
                </div>
            </div>
        <!-- //타이틀 -->
        </div>

        <div id="con_com2">
        <!-- 블릿 및 리스트 -->
            <!-- 블릿 -->
            <div class="Guide_titBox">
                <h3>블릿</h3>
                <p>블릿스타일 입니다. 클래스명의 숫자가 낮은것부터 높은순으로 순차적으로 사용해주세요.</p>
            </div>

            <p class="bu_st1">블릿스타일1 bu_st1</p>
            <p class="bu_st2">블릿스타일2 bu_st2</p>
            <p class="bu_st3">블릿스타일3 bu_st3</p>
            <p class="bu_st4">블릿스타일4 bu_st4</p>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <p class="bu_st1">블릿스타일1 bu_st1</p>
                    <p class="bu_st2">블릿스타일2 bu_st2</p>
                    <p class="bu_st3">블릿스타일3 bu_st3</p>
                    <p class="bu_st4">블릿스타일4 bu_st4</p>
                </textarea>
                </div>
            </div>

            <!-- //블릿 -->

            <!-- 리스트 -->
            <div class="Guide_titBox">
                <h3>리스트 : 블릿 타입</h3>
                <p>블릿이 들어가 있는 리스트 스타일과 블릿이 없는 스타일 & 순서가 있는 리스트 스타일입니다.</p>
            </div>

            <ul class="list_st1">
                <li>리스트 타입1 list_st1</li>
                <li>리스트 타입1 list_st1</li>
            </ul>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ul class="list_st1">
                        <li>리스트 타입1 list_st1</li>
                        <li>리스트 타입1 list_st1</li>
                    </ul>
                </textarea>
                </div>
            </div>

            <ul class="list_st2">
                <li>리스트 타입2 list_st2</li>
                <li>리스트 타입2 list_st2</li>
            </ul>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ul class="list_st2">
                        <li>리스트 타입2 list_st2</li>
                        <li>리스트 타입2 list_st2</li>
                    </ul>
                </textarea>
                </div>
            </div>

            <ul class="list_st3">
                <li>리스트 타입3 list_st3</li>
                <li>리스트 타입3 list_st3</li>
            </ul>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ul class="list_st3">
                        <li>리스트 타입3 list_st3</li>
                        <li>리스트 타입3 list_st3</li>
                    </ul>
                </textarea>
                </div>
            </div>

            <ul class="list_st4">
                <li>리스트 타입4 list_st4</li>
                <li>리스트 타입4 list_st4</li>
                <li class="bu_none">리스트 타입 중 블릿 없는 리스트 : <strong class="bg_green">li에 클래스 bu_none (리스트 : 블릿 타입엔 모두 해당)</strong></li>
            </ul>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ul class="list_st4">
                        <li>리스트 타입4 list_st4</li>
                        <li>리스트 타입4 list_st4</li>
                        <li class="bu_none">리스트 타입 중 블릿 없는 리스트  : li에 클래스 bu_none (리스트 : 블릿 타입엔 모두 해당)</li>
                    </ul>
                </textarea>
                </div>
            </div>

            
            <div class="Guide_titBox">
                <h3>리스트 : 텍스트 타입</h3>
                <p>블릿이 없는 텍스트 리스트 스타일 : 번호 혹은 알파벳, 가나다 순으로 가는 경우 해당 스타일 적용 : <strong class="bg_red">list_stT1, list_stT2 의 차이는 행간 간격 글자크기 변동있음</strong></p>
            </div>

            <ol class="list_stT1">
                <li>리스트 타입1 list_stT1
                    <ol>
                        <li>리스트 타입1 list_stT1</li>
                        <li>리스트 타입1 list_stT1</li>
                    </ol>
                </li>
                <li>리스트 타입1 list_stT1</li>
            </ol>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ol class="list_stT1">
                        <li>리스트 타입1 list_stT1
                            <ol>
                                <li>리스트 타입1 list_stT1</li>
                                <li>리스트 타입1 list_stT1</li>
                            </ol>
                        </li>
                        <li>리스트 타입1 list_stT1</li>
                    </ol>
                </textarea>
                </div>
            </div>

            <ol class="list_stT2">
                <li>리스트 타입2 list_stT2
                    <ol>
                        <li>리스트 타입2 list_stT2</li>
                        <li>리스트 타입2 list_stT2</li>
                    </ol>
                </li>
                <li>리스트 타입2 list_stT2</li>
            </ol>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ol class="list_stT2">
                        <li>리스트 타입2 list_stT2
                            <ol>
                                <li>리스트 타입2 list_stT2</li>
                                <li>리스트 타입2 list_stT2</li>
                            </ol>
                        </li>
                        <li>리스트 타입2 list_stT2</li>
                    </ol>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>리스트 : 가로 나열</h3>
                <p>리스트 스타일 들어가 있는 코드에 쓰이는 가로 나열 스타일</p>
            </div>

            <ul class="list_st1 li_w50">
                <li>모든 리스트 타입 li_w50</li>
                <li>모든 리스트 타입 li_w50</li>
            </ul>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ul class="list_st1 li_w50">
                        <li>모든 리스트 타입 li_w50</li>
                        <li>모든 리스트 타입 li_w50</li>
                    </ul>
                </textarea>
                </div>
            </div>

            <ul class="list_st2 li_w30">
                <li>모든 리스트 타입 li_w30</li>
                <li>모든 리스트 타입 li_w30</li>
                <li>모든 리스트 타입 li_w30</li>
            </ul>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ul class="list_st2 li_w30">
                        <li>모든 리스트 타입 li_w30</li>
                        <li>모든 리스트 타입 li_w30</li>
                        <li>모든 리스트 타입 li_w30</li>
                    </ul>
                </textarea>
                </div>
            </div>

            <ul class="list_st3 li_w25">
                <li>모든 리스트 타입 li_w25</li>
                <li>모든 리스트 타입 li_w25</li>
                <li>모든 리스트 타입 li_w25</li>
                <li>모든 리스트 타입 li_w25</li>
            </ul>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ul class="list_st3 li_w25">
                        <li>모든 리스트 타입 li_w25</li>
                        <li>모든 리스트 타입 li_w25</li>
                        <li>모든 리스트 타입 li_w25</li>
                        <li>모든 리스트 타입 li_w25</li>
                    </ul>
                </textarea>
                </div>
            </div>

            <ul class="list_st4 li_w20">
                <li>모든 리스트 타입 li_w20</li>
                <li>모든 리스트 타입 li_w20</li>
                <li>모든 리스트 타입 li_w20</li>
                <li>모든 리스트 타입 li_w20</li>
                <li>모든 리스트 타입 li_w20</li>
            </ul>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ul class="list_st4 li_w20">
                        <li>모든 리스트 타입 li_w20</li>
                        <li>모든 리스트 타입 li_w20</li>
                        <li>모든 리스트 타입 li_w20</li>
                        <li>모든 리스트 타입 li_w20</li>
                        <li>모든 리스트 타입 li_w20</li>
                    </ul>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>리스트 : 순차적 혹은 맨 앞에 포인트 들어가는 리스트 타입</h3>
                <p>순차적으로 들어가거나 맨 앞에 텍스트가 들어가지만 포인트를 줄 경우 사용</p>
            </div>

            <ol class="list_ol1">
                <li><span class="num">1</span>순차적 리스트 타입1 list_ol1</li>
                <li><span class="num">2</span>순차적 리스트 타입1 list_ol1</li>
            </ol>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <ol class="list_ol1">
                        <li><span class="num">1</span>순차적 리스트 타입1 list_ol1</li>
                        <li><span class="num">2</span>순차적 리스트 타입1 list_ol1</li>
                    </ol>
                </textarea>
                </div>
            </div>
            <!-- //리스트 -->
        <!-- //블릿 및 리스트 -->
        </div>

        <div id="con_com3">
        <!-- 텍스트 관련 -->

            <div class="Guide_titBox">
                <h3>텍스트 요소 : 경고&말풍선 타입</h3>
                <p>경고 혹은 말풍선</p>
            </div>

            <p class="bu_atte">당구장표시 bu_atte</p>
            <p class="bu_wnrn">경고 텍스트 타입 bu_wnrn</p>
            <p class="bu_wnrnL">경고 텍스트 라인 타입 bu_wnrnL</p>
            <p class="bu_ment">말풍선 텍스트 타입 bu_ment</p>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <p class="bu_atte">당구장표시 bu_atte</p>
                    <p class="bu_wnrn">경고 텍스트 타입 bu_wnrn</p>
                    <p class="bu_wnrnL">경고 텍스트 라인 타입 bu_wnrnL</p>
                    <p class="bu_ment">말풍선 텍스트 타입 bu_ment</p>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>텍스트 요소 : 폰트컬러 타입</h3>
                <p>텍스트별 컬러 지정</p>
            </div>

            <p class="pc_blue">텍스트 블루 pc_blue</p>
            <p class="pc_navy">텍스트 네이비 pc_navy</p>
            <p class="pc_org">텍스트 오렌지 pc_org</p>
            <p class="pc_black">텍스트 블랙 pc_black</p>
            <p class="pc_green">텍스트 그린 pc_green</p>
            <p class="pc_red">텍스트 레드 pc_red</p>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <p class="pc_blue">텍스트 블루 pc_blue</p>
                    <p class="pc_navy">텍스트 네이비 pc_navy</p>
                    <p class="pc_org">텍스트 오렌지 pc_org</p>
                    <p class="pc_black">텍스트 블랙 pc_black</p>
                    <p class="pc_green">텍스트 그린 pc_green</p>
                    <p class="pc_red">텍스트 레드 pc_red</p>
                </textarea>
                </div>
            </div>


            <div class="Guide_titBox">
                <h3>텍스트 요소 : 텍스트 배경색</h3>
                <p>텍스트별 배경색 지정</p>
            </div>

            <span class="bg_blue">텍스트 배경 블루 bg_blue</span>
            <span class="bg_navy">텍스트 배경 네이비 bg_navy</span>
            <span class="bg_org">텍스트 배경 오렌지 bg_org</span>
            <span class="bg_black">텍스트 배경 블랙 bg_black</span>
            <span class="bg_green">텍스트 배경 그린 bg_green</span>
            <span class="bg_red">텍스트 배경 레드 bg_red</span>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <span class="bg_blue">텍스트 배경 블루 bg_blue</span>
                    <span class="bg_navy">텍스트 배경 네이비 bg_navy</span>
                    <span class="bg_org">텍스트 배경 오렌지 bg_org</span>
                    <span class="bg_black">텍스트 배경 블랙 bg_black</span>
                    <span class="bg_green">텍스트 배경 그린 bg_green</span>
                    <span class="bg_red">텍스트 배경 레드 bg_red</span>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>텍스트 요소 : 강조 타입 및 폰트 변경</h3>
                <p>텍스트별 강조 타입 및 폰트 변경 스타일 'f_weightB' 보단 'font_FB' 로 사용 권장</p>
            </div>

            <p class="Tline_b">텍스트 밑줄 Tline_b</p>
            <p><span class="Tline_bgB">텍스트 밑줄 Tline_bgB</span></p>
            <p class="f_weightB">텍스트 강조 f_weightB</p>
            <p class="font_Fr">텍스트 Regular font_Fr</p>
            <p class="font_Fm">텍스트 Medium font_Fm</p>
            <p class="font_Fb">텍스트 Bold font_Fb</p>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <p class="Tline_b">텍스트 밑줄 Tline_b</p>
                    <p><span class="Tline_bgB">텍스트 밑줄 Tline_bgB</span></p>
                    <p class="f_weightB">텍스트 강조 f_weightB</p>
                    <p class="font_Fr">텍스트 Regular font_Fr</p>
                    <p class="font_Fm">텍스트 Medium font_Fm</p>
                    <p class="font_Fb">텍스트 Bold font_Fb</p>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>텍스트 요소 : 폰트 크기</h3>
                <p>텍스트별 강조 타입 및 폰트 변경 스타일 'f_weightB' 보단 'font_FB' 로 사용 권장</p>
            </div>

            <p class="fs12">폰트 크기12 fs12</p>
            <p class="fs13">폰트 크기13 fs13</p>
            <p class="fs14">폰트 크기14 fs14</p>
            <p class="fs16">폰트 크기16 fs16</p>
            <p class="fs18">폰트 크기18 fs18</p>
            <p class="fs20">폰트 크기20 fs20</p>
            <p class="fs22">폰트 크기22 fs22</p>
            <p class="fs24">폰트 크기24 fs24</p>
            <p class="fs26">폰트 크기26 fs26</p>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <p class="fs12">폰트 크기12 fs12</p>
                    <p class="fs13">폰트 크기13 fs13</p>
                    <p class="fs14">폰트 크기14 fs14</p>
                    <p class="fs16">폰트 크기16 fs16</p>
                    <p class="fs18">폰트 크기18 fs18</p>
                    <p class="fs20">폰트 크기20 fs20</p>
                    <p class="fs22">폰트 크기22 fs22</p>
                    <p class="fs24">폰트 크기24 fs24</p>
                    <p class="fs26">폰트 크기26 fs26</p>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>텍스트 요소 : 링크 타입</h3>
                <p>텍스트 내에 새창, 메일, 전화, 다운로드가 있을경우 사용</p>
            </div>

            <p>링크 타입 : <a href="" class="bu_link" target="_blank" title="새창">텍스트 내 새창 링크 bu_link</a></p>
            <p>메일 링크 타입 : <a href="mailTo:admin.klic.co.kr" class="bu_mail" title="메일보내기">텍스트 내 메일 링크 bu_mail</a></p>
            <p>파일다운 링크 타입 : <a href="#" class="bu_down" title="파일 다운로드">텍스트 내 파일다운 링크 bu_down</a></p>
            <p>전화 링크 타입 : <a href="tel:01000000000" class="bu_tel" title="전화">텍스트 내 전화 링크 bu_tel</a></p>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <p>링크 타입 : <a href="" class="bu_link" target="_blank" title="새창">텍스트 내 새창 링크 bu_link</a></p>
                    <p>메일 링크 타입 : <a href="mailTo:admin.klic.co.kr" class="bu_mail" title="메일보내기">텍스트 내 메일 링크 bu_mail</a></p>
                    <p>파일다운 링크 타입 : <a href="#" class="bu_down" title="파일 다운로드">텍스트 내 파일다운 링크 bu_down</a></p>
                    <p>전화 링크 타입 : <a href="tel:01000000000" class="bu_tel" title="전화">텍스트 내 전화 링크 bu_tel</a></p>
                </textarea>
                </div>
            </div>
        <!-- //텍스트 관련 -->
        </div>

        <div id="con_com4">
        <!-- 테이블 -->
            <div class="box_st3">
                <p class="bu_wnrn pc_red">테이블(테이블 클래스 전부) 감싸는 div추가 / 테이블 내 td 텍스트 전체 정렬 클래스 추가(tb_txtL, tb_txtC, tb_txtR) / tr 또는 td, th 배경 색상 클래스 추가 (tbl_bg_bl, tbl_bg_ye, tbl_bg_re, tbl_bg_gr)</p>
            </div>
            
            <div class="Guide_titBox">
                <h3>테이블 : 테이블 기본 타입 tbl_st</h3>
                <p>기본 테이블 스타일<strong class="pc_red">tbl_utile 를 쓸때는 테이블 위에 타이틀이나 마진값이 있어야 합니다</strong></p>
            </div>

            <p class="tbl_utile">(단위 : 원)</p>
            <div class="tbl_st">
                <table>
                    <caption>테이블스타일</caption>
                    <colgroup>
                        <col span="4" style="width:15%;">
                        <col style="width:40%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th scope="row">tfoot 내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                    </tfoot>
                </table>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <p class="tbl_utile">(단위 : 원)</p>
                    <div class="tbl_st">
                        <table>
                            <caption>테이블스타일</caption>
                            <colgroup>
                                <col span="4" style="width:15%;">
                                <col style="width:40%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>테이블 : 테이블 세로 타입 tbl_st_row</h3>
                <p>테이블 세로 타입</p>
            </div>

            <div class="tbl_st_row">
                <table>
                    <caption>테이블스타일</caption>
                    <colgroup>
                        <col span="4" style="width:15%;">
                        <col style="width:40%;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                    </tfoot>
                </table>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="tbl_st_row">
                        <table>
                            <caption>테이블스타일</caption>
                            <colgroup>
                                <col span="4" style="width:15%;">
                                <col style="width:40%;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>테이블 : 테이블 4면 라인 tbl_st2</h3>
                <p>4면 라인 및 스타일 추가 적용화면</p>
            </div>

            <div class="tbl_st2">
                <table>
                    <caption>테이블스타일</caption>
                    <colgroup>
                        <col span="4" style="width:15%;">
                        <col style="width:40%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row" >내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="tbl_st2">
                        <table>
                            <caption>테이블스타일</caption>
                            <colgroup>
                                <col span="4" style="width:15%;">
                                <col style="width:40%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row" >내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </textarea>
                </div>
            </div>
            
            <div class="Guide_titBox">
                <h3>테이블 : 스크롤 추가 scroll_gr</h3>						
                <p>반응형에서 스크롤이 필요할 시, 테이블 스타일 클래스(tbl_st, tbl_st2, tbl_st_row)에 <span class="pc_red f_weightB">'scroll_gr' 클래스 추가</span></p>
            </div>

            <p class="tbl_utile">(단위 : 원)</p>
            <div class="tbl_st scroll_gr">
                <table>
                    <caption>테이블스타일</caption>
                    <colgroup>
                        <col span="4" style="width:15%;">
                        <col style="width:40%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th scope="row">내용 제목</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                    </tfoot>
                </table>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <p class="tbl_utile">(단위 : 원)</p>
                    <div class="tbl_st scroll_gr">
                        <table>
                            <caption>테이블스타일</caption>
                            <colgroup>
                                <col span="4" style="width:15%;">
                                <col style="width:40%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th scope="row">내용 제목</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>테이블 : 배경 및 라인 색상 클래스 추가</h3>
                <p>배경 : tr 또는 td, th 배경 색상 넣을 수 있음</p>
                <p>라인 : 4면 또는 좌우, 상하 라인 클래스 추가 / tr에도 스타일 적용 가능(* 좌측 선 짤리는 현상 있음. 확인 후 사용)</p>
            </div>
            <div class="tbl_st">
                <table>
                    <caption>테이블스타일</caption>
                    <colgroup>
                        <col span="4" style="width:15%;">
                        <col style="width:40%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                            <th scope="col">기본테이블 tbl_st</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="tbl_bg_bl">
                            <td class="tbl_L">4면 tbl_L</td>
                            <td class="tbl_Lbl">4면 tbl_Lbl</td>
                            <td class="tbl_Lre">4면 tbl_Lre</td>
                            <td class="tbl_Lgr">4면 tbl_Lgr</td>
                            <td class="tbl_Lye">4면 tbl_Lye</td>
                        </tr>
                        <tr class="tbl_bg_ye">
                            <td class="tbl_L_R">우측선 tbl_L_R</td>
                            <td class="tbl_Lbl_R">우측선 tbl_Lbl_R</td>
                            <td class="tbl_Lre_R">우측선 tbl_Lre_R</td>
                            <td class="tbl_Lgr_R">우측선 tbl_Lgr_R</td>
                            <td class="tbl_Lye_R">우측선 tbl_Lye_R</td>
                        </tr>
                        <tr class="tbl_bg_re">
                            <th scope="row">tbl_bg_re</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr class="tbl_bg_gr">
                            <th scope="row">tbl_bg_gr</th>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>1234567890 123456789012345678901234567890</td>
                        </tr>
                        <tr>
                            <th scope="row" class="tbl_bg_re">tbl_bg_re</th>
                            <td class="tbl_bg_bl">tbl_bg_bl</td>
                            <td class="tbl_bg_ye">tbl_bg_ye</td>
                            <td class="tbl_bg_re">tbl_bg_re</td>
                            <td class="tbl_bg_gr">tbl_bg_gr</td>
                        </tr>
                        <tr>
                            <td class="tbl_L_T">상단선 tbl_L_T</td>
                            <td class="tbl_Lbl_T">상단선 tbl_Lbl_T</td>
                            <td class="tbl_Lre_T">상단선 tbl_Lre_T</td>
                            <td class="tbl_Lgr_T">상단선 tbl_Lgr_T</td>
                            <td class="tbl_Lye_T">상단선 tbl_Lye_T</td>
                        </tr>
                        <tr>
                            <td class="tbl_L_L">좌측선 tbl_L_L</td>
                            <td class="tbl_Lbl_L">좌측선 tbl_Lbl_L</td>
                            <td class="tbl_Lre_L">좌측선 tbl_Lre_L</td>
                            <td class="tbl_Lgr_L">좌측선 tbl_Lgr_L</td>
                            <td class="tbl_Lye_L">좌측선 tbl_Lye_L</td>
                        </tr>
                        <tr>
                            <td class="tbl_L_B">하단선 tbl_L_B</td>
                            <td class="tbl_Lbl_B">하단선 tbl_Lbl_B</td>
                            <td class="tbl_Lre_B">하단선 tbl_Lre_B</td>
                            <td class="tbl_Lgr_B">하단선 tbl_Lgr_B</td>
                            <td class="tbl_Lye_B">하단선 tbl_Lye_B</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="tbl_st">
                        <table>
                            <caption>테이블스타일</caption>
                            <colgroup>
                                <col span="4" style="width:15%;">
                                <col style="width:40%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                    <th scope="col">기본테이블 tbl_st</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="tbl_bg_bl">
                                    <td class="tbl_L">4면 tbl_L</td>
                                    <td class="tbl_Lbl">4면 tbl_Lbl</td>
                                    <td class="tbl_Lre">4면 tbl_Lre</td>
                                    <td class="tbl_Lgr">4면 tbl_Lgr</td>
                                    <td class="tbl_Lye">4면 tbl_Lye</td>
                                </tr>
                                <tr class="tbl_bg_ye">
                                    <td class="tbl_L_R">우측선 tbl_L_R</td>
                                    <td class="tbl_Lbl_R">우측선 tbl_Lbl_R</td>
                                    <td class="tbl_Lre_R">우측선 tbl_Lre_R</td>
                                    <td class="tbl_Lgr_R">우측선 tbl_Lgr_R</td>
                                    <td class="tbl_Lye_R">우측선 tbl_Lye_R</td>
                                </tr>
                                <tr class="tbl_bg_re">
                                    <th scope="row">tbl_bg_re</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr class="tbl_bg_gr">
                                    <th scope="row">tbl_bg_gr</th>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>내용</td>
                                    <td>1234567890 123456789012345678901234567890</td>
                                </tr>
                                <tr>
                                    <th scope="row" class="tbl_bg_re">tbl_bg_re</th>
                                    <td class="tbl_bg_bl">tbl_bg_bl</td>
                                    <td class="tbl_bg_ye">tbl_bg_ye</td>
                                    <td class="tbl_bg_re">tbl_bg_re</td>
                                    <td class="tbl_bg_gr">tbl_bg_gr</td>
                                </tr>
                                <tr>
                                    <td class="tbl_L_T">상단선 tbl_L_T</td>
                                    <td class="tbl_Lbl_T">상단선 tbl_Lbl_T</td>
                                    <td class="tbl_Lre_T">상단선 tbl_Lre_T</td>
                                    <td class="tbl_Lgr_T">상단선 tbl_Lgr_T</td>
                                    <td class="tbl_Lye_T">상단선 tbl_Lye_T</td>
                                </tr>
                                <tr>
                                    <td class="tbl_L_L">좌측선 tbl_L_L</td>
                                    <td class="tbl_Lbl_L">좌측선 tbl_Lbl_L</td>
                                    <td class="tbl_Lre_L">좌측선 tbl_Lre_L</td>
                                    <td class="tbl_Lgr_L">좌측선 tbl_Lgr_L</td>
                                    <td class="tbl_Lye_L">좌측선 tbl_Lye_L</td>
                                </tr>
                                <tr>
                                    <td class="tbl_L_B">하단선 tbl_L_B</td>
                                    <td class="tbl_Lbl_B">하단선 tbl_Lbl_B</td>
                                    <td class="tbl_Lre_B">하단선 tbl_Lre_B</td>
                                    <td class="tbl_Lgr_B">하단선 tbl_Lgr_B</td>
                                    <td class="tbl_Lye_B">하단선 tbl_Lye_B</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>테이블 : FORM </h3>
                <p>테이블 내 인풋 요소</p>
            </div>

            <div class="tbl_st tbl_form">
                <table>
                    <caption>테이블스타일</caption>
                    <colgroup>
                        <col style="width:15%;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">th</th>
                            <th scope="col">input</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">텍스트</th>
                            <td class="al">내용입니다 내용입니다 내용입니다 내용입니다 내용입니다</td>
                        </tr>
                        <tr>
                            <th scope="row">절차</th>
                            <td class="al">
                                <ul class="list_st2">
                                    <li>리스트는 2번 부터</li>
                                    <li>리스트는 2번 부터                                        
                                        <ul class="list_st3">
                                            <li>리스트 내용 입니다 리스트 내용 입니다 리스트 내용 입니다</li>
                                            <li>리스트 내용 입니다 리스트 내용 입니다 리스트 내용 입니다</li>
                                        </ul>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">버튼</th>
                            <td class="al">
                                <a href="" class="btn_blL">테이블 내 버튼</a>
                                <a href="" class="btn_bl">테이블 내 버튼</a>
                                <a href="" class="btn_blL">다운로드<i class="xi-download" aria-hidden="true"></i></a>
                                <a href="" class="btn_bl"><i class="xi-log-in" aria-hidden="true"></i></a>
                                <a href="" class="btn_blL"><i class="xi-log-in" aria-hidden="true"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">input</th>
                            <td class="al">
                                <input type="text" title="텍스트 입력" placeholder="input box">
                                <input type="password" title="비밀번호 입력" placeholder="password">
                                <select title="선택" placeholder="select box">
                                    <option>선택1</option>
                                    <option>선택2</option>
                                    <option>선택3</option>
                                    <option>선택4</option>
                                    <option>선택5</option>
                                </select>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
					<div class="tbl_st tbl_form">
						<table>
							<caption>테이블스타일</caption>
							<colgroup>
								<col style="width:15%;">
								<col style="width:auto;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">th</th>
									<th scope="col">input</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">텍스트</th>
									<td class="al">내용입니다 내용입니다 내용입니다 내용입니다 내용입니다</td>
								</tr>
								<tr>
									<th scope="row">절차</th>
									<td class="al">
										<ul class="list_st2">
											<li>리스트는 2번 부터</li>
											<li>리스트는 2번 부터                                        
												<ul class="list_st3">
													<li>리스트 내용 입니다 리스트 내용 입니다 리스트 내용 입니다</li>
													<li>리스트 내용 입니다 리스트 내용 입니다 리스트 내용 입니다</li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row">버튼</th>
									<td class="al">
										<a href="" class="btn_bl">테이블 내 버튼</a>
										<a href="" class="btn_gr">테이블 내 버튼</a>
										<a href="" class="btn_bl">다운로드<i class="xi-download" aria-hidden="true"></i></a>
										<a href="" class="btn_gr ico"><i class="xi-search" aria-hidden="true"></i></a>
									</td>
								</tr>
								<tr>
									<th scope="row">input</th>
									<td class="al">
										<input type="text" title="텍스트 입력" placeholder="input box">
										<input type="password" title="비밀번호 입력" placeholder="password">
										<select title="선택" placeholder="select box">
											<option>선택1</option>
											<option>선택2</option>
											<option>선택3</option>
											<option>선택4</option>
											<option>선택5</option>
										</select>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
                </textarea>
                </div>
            </div>
        <!-- //테이블 -->
        </div>


        <div id="con_com5">
        <!-- 박스 스타일 -->

            <div class="Guide_titBox">
                <h3>박스 : 박스형 타입들</h3>
                <p>4면 선 흰배경 or 회색배경 / 빗선 테두리 / 상하 선 / 포인트색상 / 아이콘</p>
            </div>

            <div class="box_st1">
                <h5 class="tit3">박스스타일1 box_st1 타이틀 tit3 사용 ! </h5>
                기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다.기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다.
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="box_st1">
                        <h5 class="tit3">박스스타일1 box_st1 타이틀 tit3 사용 ! </h5>
                        기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다.기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다. 기본 텍스트 박스 입니다.
                    </div>
                </textarea>
                </div>
            </div>

            <div class="box_st2">
                <h5 class="tit3">박스스타일2 box_st2</h5>
                <p>기본 텍스트 기본 텍스트 기본 텍스트 기본 텍스트 기본 텍스트 </p>
                <ul class="list_st2">
                    <li>리스트 타입</li>
                    <li>리스트 타입</li>
                </ul>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="box_st2">
                        <div class="inner">
                            <h5 class="tit3">박스스타일2 box_st2</h5>
                            <p>기본 텍스트 기본 텍스트 기본 텍스트 기본 텍스트 기본 텍스트 </p>
                            <ul class="list_st2">
                                <li>리스트 타입</li>
                                <li>리스트 타입</li>
                            </ul>
                        </div>
                    </div>
                </textarea>
                </div>
            </div>

            <div class="box_st3">
                <p>박스스타일 3</p>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="box_st3">
                        <h5 class="tit3">박스스타일3 box_st3</h5>
                        <p>박스스타일 3</p>
                    </div>
                </textarea>
                </div>
            </div>

            <div class="box_st3 box_ico">
                <div class="inner">
                    <div class="ico"><img src="/00_common/images/con_com/ico_boxImg1.png" alt=""></div>
                    <h5 class="tit3">박스스타일2 + 아이콘 : box_st2 box_ico</h5>
                    <p>아이콘 박스스타일입니다 아이콘 박스스타일입니다 아이콘 박스스타일입니다 아이콘 박스스타일입니다</p>
                </div>
            </div>
            <img src="/00_common/images/con_com/ico_boxImg2.png" alt="">
            <img src="/00_common/images/con_com/ico_boxImg3.png" alt="">
            <img src="/00_common/images/con_com/ico_boxImg4.png" alt="">
            <img src="/00_common/images/con_com/ico_boxImg5.png" alt="">

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="box_st3 box_ico">
                        <div class="inner">
                            <div class="ico"><img src="/00_common/images/con_com/ico_boxImg1.png" alt=""></div>
                            <h5 class="tit3">박스스타일2 + 아이콘 : box_st2 box_ico</h5>
                            <p>아이콘 박스스타일입니다 아이콘 박스스타일입니다 아이콘 박스스타일입니다 아이콘 박스스타일입니다</p>
                        </div>
                    </div>
                </textarea>
                </div>
            </div> 
        <!-- //박스 스타일 -->
        </div>

        <div id="con_com6">
        <!-- 탭 스타일 -->
            <div class="Guide_titBox">
                <h3>탭 : 탭스타일 단계별</h3>
                <p>탭스타일 기본 한줄에 4개씩 표출 / 가로 지정일 경우 Tab_w50, Tab_w30, Tab_w20 으로 클래스 나뉨</p>
            </div>

            <div class="tab_st1">
                <ul>
                    <li class="on"><a href="" title="선택된 페이지">1차 탭 1차 탭</a></li>
                    <li><a href="">기술평가 관련 상품</a></li>
                    <li><a href="">코넥스 기술특례상장 평가</a></li>
                    <li><a href="" target="_blank" title="새창">탭 타이틀</a></li>
                </ul>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="tab_st1">
                        <ul>
                            <li class="on"><a href="" title="선택된 페이지">1차 탭 1차 탭</a></li>
                            <li><a href="">기술평가 관련 상품</a></li>
                            <li><a href="">코넥스 기술특례상장 평가</a></li>
                            <li><a href="" target="_blank" title="새창">탭 타이틀</a></li>
                        </ul>
                    </div>
                </textarea>
                </div>
            </div>

            <div class="tab_st2">
                <ul>
                    <li class="on"><a href="" title="선택된 페이지"><span>2차 탭 2차 탭</span></a></li>
                    <li><a href=""><span>기술평가 관련 상품</span></a></li>
                    <li><a href=""><span>코넥스 기술특례상장 평가</span></a></li>
                    <li><a href="" target="_blank" title="새창"><span>탭 타이틀</span></a></li>
                </ul>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="tab_st2">
                        <ul>
                            <li class="on"><a href="" title="선택된 페이지"><span>2차 탭 2차 탭</span></a></li>
                            <li><a href=""><span>기술평가 관련 상품</span></a></li>
                            <li><a href=""><span>코넥스 기술특례상장 평가</span></a></li>
                            <li><a href="" target="_blank" title="새창"><span>탭 타이틀</span></a></li>
                        </ul>
                    </div>
                </textarea>
                </div>
            </div>

            <div class="tab_list">
                <ul>
                    <li class="on"><a href="" title="선택된 페이지"><span>탭리스트 탭리스트</span></a></li>
                    <li><a href=""><span>기술평가 관련 상품</span></a></li>
                    <li><a href=""><span>코넥스 기술특례상장 평가</span></a></li>
                    <li><a href="" target="_blank" title="새창"><span>탭 타이틀</span></a></li>
                </ul>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="tab_list">
                        <ul>
                            <li class="on"><a href="" title="선택된 페이지"><span>탭리스트 탭리스트</span></a></li>
                            <li><a href=""><span>기술평가 관련 상품</span></a></li>
                            <li><a href=""><span>코넥스 기술특례상장 평가</span></a></li>
                            <li><a href="" target="_blank" title="새창"><span>탭 타이틀</span></a></li>
                        </ul>
                    </div>
                </textarea>
                </div>
            </div>

            <div class="Guide_titBox">
                <h3>탭 : 탭스타일 갯수</h3>
                <p>가로 갯수 지정에 따라 Tab_w50, Tab_w30, Tab_w20 으로 클래스 추가</p>
            </div>

            <div class="tab_st1 Tab_w50">
                <ul>
                    <li class="on"><a href="" title="선택된 페이지">기술평가안내</a></li>
                    <li><a href="">기술평가 관련 상품</a></li>
                </ul>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="tab_st1 Tab_w50">
                        <ul>
                            <li class="on"><a href="" title="선택된 페이지">기술평가안내</a></li>
                            <li><a href="">기술평가 관련 상품</a></li>
                        </ul>
                    </div>
                </textarea>
                </div>
            </div>

            <div class="tab_st2 Tab_w20">
                <ul>
                    <li class="on"><a href="" title="선택된 페이지">기술평가안내</a></li>
                    <li><a href="">기술평가 관련 상품</a></li>
                    <li><a href="">코넥스 기술특례상장 평가</a></li>
                    <li><a href="" target="_blank" title="새창">탭 타이틀</a></li>
                    <li><a href="">탭 타이틀</a></li>
                    <li><a href="">탭 타이틀</a></li>
                    <li><a href="">탭 타이틀</a></li>
                </ul>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="tab_st2 Tab_w20">
                        <ul>
                            <li class="on"><a href="" title="선택된 페이지">기술평가안내</a></li>
                            <li><a href="">기술평가 관련 상품</a></li>
                            <li><a href="">코넥스 기술특례상장 평가</a></li>
                            <li><a href="" target="_blank" title="새창">탭 타이틀</a></li>
                            <li><a href="">탭 타이틀</a></li>
                            <li><a href="">탭 타이틀</a></li>
                            <li><a href="">탭 타이틀</a></li>
                        </ul>
                    </div>
                </textarea>
                </div>
            </div>
        <!-- //탭 스타일 -->
        </div>

        <div id="con_com7">
        <!-- 버튼 스타일 -->

            <div class="Guide_titBox">
                <h3>버튼 : 기본 버튼</h3>
                <p>강조버튼, 기본버튼, 아이콘버튼, 작은버튼</p>
            </div>


            <p class="bu_st1">컨텐츠 하단에 버튼 배치 시, div class="btns" 로 감싸기</p>
            <div class="btns">
                <a href="" class="btn_bl">기본버튼 btn_bl</a>
                <a href="" class="btn_blL">기본버튼(라인) btn_blL</a> 
                <a href="" class="btn_gr">기본버튼 btn_gr</a>
                <a href="" class="btn_grL">기본버튼(라인) btn_grL</a> 
            </div>
            
            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="btns">
                        <a href="" class="btn_bl">기본버튼 btn_bl</a>
                        <a href="" class="btn_blL">기본버튼(라인) btn_blL</a> 
                        <a href="" class="btn_gr">기본버튼 btn_gr</a>
                        <a href="" class="btn_grL">기본버튼(라인) btn_grL</a> 
                    </div>
                </textarea>
                </div>
            </div>

            <p class="bu_st1">버튼컬러</p>
            <div class="btns">
                <a href="" class="btn_navy">추가 색상 버튼 btn_navy</a>
                <a href="" class="btn_navyL">추가 색상 버튼(라인) btn_navy</a>
                <a href="" class="btn_yel">추가 색상 버튼 btn_yel</a>
                <a href="" class="btn_yelL">추가 색상 버튼(라인) btn_yel</a>
                <a href="" class="btn_mint">추가 색상 버튼 btn_mint</a>
                <a href="" class="btn_mintL">추가 색상 버튼(라인) btn_mint</a>
                <a href="" class="btn_green">추가 색상 버튼 btn_green</a>
                <a href="" class="btn_greenL">추가 색상 버튼(라인) btn_green</a>
                <a href="" class="btn_pink">추가 색상 버튼 btn_pink</a>
                <a href="" class="btn_pinkL">추가 색상 버튼(라인) btn_pink</a>
            </div>
            
            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="btns">
                        <a href="" class="btn_navy">추가 색상 버튼 btn_navy</a>
                        <a href="" class="btn_navyL">추가 색상 버튼(라인) btn_navy</a>
                        <a href="" class="btn_yel">추가 색상 버튼 btn_yel</a>
                        <a href="" class="btn_yelL">추가 색상 버튼(라인) btn_yel</a>
                        <a href="" class="btn_mint">추가 색상 버튼 btn_mint</a>
                        <a href="" class="btn_mintL">추가 색상 버튼(라인) btn_mint</a>
                        <a href="" class="btn_green">추가 색상 버튼 btn_green</a>
                        <a href="" class="btn_greenL">추가 색상 버튼(라인) btn_green</a>
                        <a href="" class="btn_pink">추가 색상 버튼 btn_pink</a>
                        <a href="" class="btn_pinkL">추가 색상 버튼(라인) btn_pink</a>
                    </div>
                </textarea>
                </div>
            </div> 

            <div class="btns">
                <a href="" class="btn_bl btnIco">삭제<i class="xi-trash" aria-hidden="true"></i></a>
                <a href="" class="btn_gr btnIco">다음2<i class="xi-arrow-right" aria-hidden="true"></i></a>
                <a href="" class="btn_navy btnIco">다음2<i class="xi-angle-right" aria-hidden="true"></i></a>
                <a href="" class="btn_yel btnIco">검색<i class="xi-search" aria-hidden="true"></i></a>
                <a href="" class="btn_mint btnIco">새창이동<i class="xi-external-link" aria-hidden="true"></i></a>
                <a href="" class="btn_green btnIco">목록<i class="xi-bars" aria-hidden="true"></i></a>
                <a href="" class="btn_pink btnIco">다운로드<i class="xi-download" aria-hidden="true"></i></a>
                <a href="" class="btn_bl btnIco">새로고침<i class="xi-refresh" aria-hidden="true"></i></a>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="btns">
                        <a href="" class="btn_gr">기본버튼 btn_gr<i class="xi-download" aria-hidden="true"></i></a>
                        <a href="" class="btn_grL">기본버튼(라인) btn_grL<i class="xi-arrow-right" aria-hidden="true"></i></a>
                        <a href="" class="btn_bl">기본버튼 btn_bl<i class="xi-angle-right" aria-hidden="true"></i></a>
                        <a href="" class="btn_red">기본버튼 btn_red<i class="xi-search" aria-hidden="true"></i></a>
                        <a href="" class="btn_pur">기본버튼 btn_pur<i class="xi-external-link" aria-hidden="true"></i></a>
                        <a href="" class="btn_org">기본버튼 btn_org<i class="xi-bars" aria-hidden="true"></i></a>
                        <a href="" class="btn_mint">기본버튼 btn_mint<i class="xi-home" aria-hidden="true"></i></a>
                        <a href="" class="btn_yel">기본버튼 btn_yel<i class="xi-refresh" aria-hidden="true"></i></a>
                    </div>
                </textarea>
                </div>
            </div>
            
            <div class="btns">
                <a href="" class="btn_navy mini">추가 색상 버튼 btn_navy</a>
                <a href="" class="btn_navyL mini">추가 색상 버튼(라인) btn_navy</a>
                <a href="" class="btn_yel mini">추가 색상 버튼 btn_yel</a>
                <a href="" class="btn_yelL mini">추가 색상 버튼(라인) btn_yel</a>
                <a href="" class="btn_mint mini">추가 색상 버튼 btn_mint</a>
                <a href="" class="btn_mintL mini">추가 색상 버튼(라인) btn_mint</a>
                <a href="" class="btn_green mini">추가 색상 버튼 btn_green</a>
                <a href="" class="btn_greenL mini">추가 색상 버튼(라인) btn_green</a>
                <a href="" class="btn_pink mini">추가 색상 버튼 btn_pink</a>
                <a href="" class="btn_pinkL mini">추가 색상 버튼(라인) btn_pink</a>
            </div>
            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="btns">
                        <a href="" class="btn_navy mini">추가 색상 버튼 btn_navy</a>
                        <a href="" class="btn_navyL mini">추가 색상 버튼(라인) btn_navy</a>
                        <a href="" class="btn_yel mini">추가 색상 버튼 btn_yel</a>
                        <a href="" class="btn_yelL mini">추가 색상 버튼(라인) btn_yel</a>
                        <a href="" class="btn_mint mini">추가 색상 버튼 btn_mint</a>
                        <a href="" class="btn_mintL mini">추가 색상 버튼(라인) btn_mint</a>
                        <a href="" class="btn_green mini">추가 색상 버튼 btn_green</a>
                        <a href="" class="btn_greenL mini">추가 색상 버튼(라인) btn_green</a>
                        <a href="" class="btn_pink mini">추가 색상 버튼 btn_pink</a>
                        <a href="" class="btn_pinkL mini">추가 색상 버튼(라인) btn_pink</a>
                    </div>
                </textarea>
                </div>
            </div>
        <!-- //버튼 스타일 -->
        </div>

        <div id="con_com8">
        <!-- 이미지 관련 스타일 -->
            <div class="Guide_titBox">
                <h3>이미지 : 확대보기</h3>
                <p>모바일에서 이미지 확대보기 스크립트 들어가는 부분</p>
            </div>

            <div class="box_st1 box_st_img">
                <p class="rsp_img"><img src="/00_common/images/con_com/sp1.jpg" alt="샘플이미지"></p>
            </div>


            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">                   
                    <div class="box_st1 box_st_img">
                        <p class="rsp_img"><img src="/00_common/images/con_com/sp1.jpg" alt="샘플이미지"></p>
                    </div>
                </textarea>
                </div>
            </div>
        <!-- //이미지 관련 스타일 -->
        </div>

        <div id="con_com9">
        <!-- 콘텐츠 준비중 -->
            <div class="Guide_titBox">
                <h3>콘텐츠 준비중</h3>
                <p>콘텐츠 준비중 기본 코드</p>
            </div>

            <div class="Coming_soon">
                <div class="inner">
                    <h3><span>콘텐츠 <em>준비중</em></span>입니다.</h3>
                    <p>보다 나은 서비스 제공을 위하여 <br>페이지준비중에 있습니다. <br>빠른시일내에 준비하여 찾아뵙겠습니다. <br>감사합니다.</p>
                </div>
            </div>

            <div class="Guide_titBox2">
                <h3>Code</h3>
                <div>
                <textarea class="com_code">
                    <div class="Coming_soon">
                        <div class="inner">
                            <h3><em>콘텐츠 준비중</em>입니다.</h3>
                            <p>보다 나은 서비스 제공을 위하여 <br>페이지준비중에 있습니다. <br>빠른시일내에 준비하여 찾아뵙겠습니다. <br>감사합니다.</p>
                        </div>
                    </div>
                </textarea>
                </div>
            </div>
        <!-- //콘텐츠 준비중 -->
        </div>
    </div>

    <!-- 여기까지 -->

</div>