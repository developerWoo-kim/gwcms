<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
    $(document).ready(function() {
        authorList();
    })

    //권한관리
    function authorList() {
        const memberId = $("#memberId").val();
        //부여가능한 권한 조회
        $.ajax({
            type : "GET",
            url : "/admin/au/author/"+memberId+"/availableList",
            dataType : "json",
            success : function(result) {
                var viewList = "";
                if(result.status = "success") {
                    var list = result.body;
                    for (var i = 0; i < list.length; i++) {
                        viewList += "<tr>";
                        viewList += "<td>" + list[i].authorGroupName + "</td>";
                        viewList += "<td>" + list[i].authorGroupDescription + "</td>";
                        viewList += "<td><a href='javascript:' class='btn_bl mini authorGiveBtn' data-code="+list[i].authorGroupId+">권한부여</a></td>";
                        viewList += "</tr>";
                    }
                } else {
                    viewList += "<tr>";
                    viewList += "<td colspan='3'>" + result.message + "</td>";
                    viewList += "</tr>";

                }
                $("#authorGive_tbody").html(viewList);
            },
            error : function(result) {
                alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
            }
        });

        //회원 권한 조회
        $.ajax({
            type : "GET",
            url : "/admin/au/author/"+memberId+"/member-author",
            dataType : "json",
            success : function(result) {
                var viewList = "";
                if(result.status == "success") {
                    var list = result.body;
                    if(list.length > 0) {
                        for (var i = 0; i < list.length; i++) {
                            viewList += "<tr>";
                            viewList += "<td>" + list[i].authorGroup.authorGroupName + "</td>";
                            viewList += "<td>" + list[i].authorGroup.authorGroupDescription + "</td>";
                            viewList += "<td><a href='javascript:' class='btn_reL mini authorDropBtn' data-code="+list[i].authorGroupMemberId+" >권한회수</a></td>";
                            viewList += "</tr>";
                        }
                    } else {
                        viewList += "<tr>";
                        viewList += "<td colspan='5'>부여된 권한이 없습니다.</td>";
                        viewList += "</tr>";
                    }

                } else {
                    viewList += "<tr>";
                    viewList += "<td colspan='3'>" + result.message + "</td>";
                    viewList += "</tr>";
                }

                $("#author_tbody").html(viewList);
            },
            error : function(result) {
                alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
            }
        });
    }

    /** 권한 부여 */
    $(document).on('click', '.authorGiveBtn', function () {
        const memberId = $("#memberId").val();
        $.ajax({
            type : "POST",
            url : "/admin/au/author/member-author",
            data : {
                memberId : memberId,
                authorId : $(this).attr("data-code")
            },
            dataType : "json",
            success : function(result) {
                alert(result.message);
                if(result.status == "success") {
                    authorList();
                }
            },
            error : function(result) {
                alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
            }
        });
    })

    /** 권한 회수 */
    $(document).on('click', '.authorDropBtn', function () {
        var authorGroupMemberId = $(this).attr("data-code");
        $.ajax({
            type : "DELETE",
            url : "/admin/au/author/"+authorGroupMemberId+"/member-author",
            dataType : "json",
            success : function(result) {
                alert(result.message);
                if(result.status == "success") {
                    authorList();
                }
            },
            error : function(result) {
                alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
            }
        });
    })

    $(document).on('click', '.backBtn', function() {
        goSearch();
    })

    function goSearch() {
        $('#searchForm').attr('action','/admin/mm/member/manageList')
            .attr('method', 'GET').submit();
    }
</script>
<style type="text/css">
    .mber{ float:right; width:49.5%; height:100%; }
    .give{ float:left; width:49.5%; height:100%; }
</style>

<form id="searchForm" name="searchForm" method="GET" >
    <input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
    <input type="hidden" id="size" name="size" value="<c:out value='${condition.size}'/>">
    <input type="hidden" id="page" name="page" value="${condition.page}" />
    <input type="hidden" id="searchText" name="searchText" value="<c:out value='${condition.searchText}'/>">
</form>

<input type="hidden" id="memberId" name="memberId" value="<c:out value='${condition.memberId}'/>">

<div class="authorList">
    <div class="authorTb give ajaxTb">
        <h4 class="tit1">부여 가능한 권한 목록</h4>
        <fieldset class="board-srch">
            <div class="sele">
                <div class="top_box">
                    <div class="bbs_srch">
                        <select id="selSys"></select>
                        <input type="hidden" name="cntntsAuth" id="cntntsAuth" value=""/>
                        <div class="srchForm">
                            <input name="srchAuthor" id="srchAuthorGive" title="권한그룹,권한명(또는 코드)입력" class="col-sm-4" type="text" value="" placeholder="권한그룹,권한명(또는 코드)입력" maxlength="40">
                            <!-- <button type="button" onclick="javascript:goSrchAuthorGive()" title="검색" class="btnSearch">검색</button> -->
                            <button type="button" onclick="javascript:goSrchAuthorGive()" title="검색" class="btnSearch">검색</button>
                        </div>
                        <div class="srchBtn">
                            <button type="button" title="돌아가기" class="btnTy_white01 backBtn">돌아가기</button>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
        <div class="bbs_ListA">
            <table class="authorGiveList">
                <caption>부여 가능한 권한 목록</caption>
                <colgroup>
                    <col style="width: 15%;">
                    <col style="width: 15%;">
                    <col style="width: 15%">
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">권한그룹</th>
                    <th scope="col">권한설명</th>
                    <th scope="col">권한부여</th>
                </tr>
                </thead>
                <tbody class="authorGive_tbody" id="authorGive_tbody">
                </tbody>
            </table>
        </div>
    </div>

    <div class="authorTb mber ajaxTb">
        <h4 class="tit1">회원 권한 목록</h4>
        <fieldset class="board-srch">
            <div class="sele">
                <div class="top_box">
                    <div class="bbs_srch">
                        <div class="srchForm">
                            <input name="srchAuthor" id="srchAuthorMber" title="회원명 또는 아이디 입력" class="col-sm-4" type="text" value="" placeholder="권한명(또는 코드)입력" maxlength="40">
                            <button type="button" onclick="javascript:goSrchAuthorMber()" title="검색" class="btnSearch">검색</button>
                        </div>
                        <div class="srchBtn">
                            <button type="button" title="돌아가기" class="btnTy_white01 backBtn">돌아가기</button>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
        <div class="bbs_ListA">
            <table class="authorMberList">
                <caption>회원 권한 목록</caption>
                <colgroup>
                    <col style="width: 15%;">
                    <col style="width: 15%;">
                    <col style="width: 15%">
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">권한그룹</th>
                    <th scope="col">권한설명</th>
                    <th scope="col">권한부여</th>
                </tr>
                </thead>
                <tbody class="author_tbody" id="author_tbody">
                </tbody>
            </table>
        </div>
    </div>
</div>
