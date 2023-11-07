<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- TUI 에디터 CSS CDN -->
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<link href="/css/com/fm/fileUpload.css" rel="stylesheet" type="text/css">
<script src="/js/fileUpload.js"></script>
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<script>
    function loadingStart(){
        $(document.body).showLoading();
    }

    function fn_fileDownload(fileKey) {
        FileDownloader.downloadFile("/api/v1/fm/file/" + fileKey + "/download", true);
    }

    $(document).ready(function () {
        const Editor = toastui.Editor;

        const editor = new toastui.Editor({
            el: document.querySelector('#editor'), // 에디터를 적용할 요소 (컨테이너)
            height: '500px',                        // 에디터 영역의 높이 값 (OOOpx || auto)
            initialEditType: 'wysiwyg',            // 최초로 보여줄 에디터 타입 (markdown || wysiwyg)
            previewStyle: 'vertical'                // 마크다운 프리뷰 스타일 (tab || vertical)
        });

        getHtml = function(){
            return editor.getHTML();
        }
        getMarkdown = function(){
            return editor.getMarkdown();
        }

        editor.setHTML('${postInfo.postContent}');

        $('.updatePost').click(function() {

            $("#postContent").val(getHtml());
            var formData = new FormData($("#postUpdateForm")[0]);

            $.ajax({
                url: "/admin/bm/post",
                method : "PUT",
                dataType: "json",
                data : formData,
                contentType : false,
                processData : false,
                success : function(result){
                    alert(result.message);
                    if(result.status == "success") {
                        $('#searchForm').attr('action','/admin/bm/post/manage-list')
                            .attr('method', 'GET').submit();
                    }
                },
                error : function(result){
                    var obj = result.responseJSON;
                    if(typeof obj == "undefined" || obj == null || obj == "") {
                        alert("오류가 발생했습니다. 관리자에게 문의해주세요.");
                    } else {
                        alert(result.responseJSON.message);
                    }
                }
            })
        });

        // 파일 삭제
        $(".deleteFile").on("click", function() {
            var fileId = $(this).attr("data-id");
            var clickedEl = $(this);

            if(confirm("파일을 삭제하시겠습니까?")) {
                $.ajax({
                    type: "DELETE",
                    url: "/admin/fm/"+fileId+"/file",
                    datatype:"json",
                    success:function(result){
                        alert(result.message);
                        if(result.status == "success") {
                            clickedEl.parent().remove();
                        }
                    },
                    error:function(result){
                        var obj = result.responseJSON;
                        if(typeof obj == "undefined" || obj == null || obj == "") {
                            alert("오류가 발생했습니다. 관리자에게 문의해주세요.");
                        } else {
                            alert(result.responseJSON.message);
                        }
                    }
                });
            }
        });

    })

    var bbsTy = "BASIC";
    var fileAllowExt = "";
    var fileLmttSize = 100; // 게시판 파일 용량 제한
    var fileMxmCo = 2000000; // 게시판 파일 용량 제한
    var formDataObj = new Object();
    var formDataKeyindex = 0;

    // 파일찾기
    function fn_fileFind(obj) {

        var nav = navigator.userAgent.toLowerCase();

        if ((nav.indexOf("safari") < 0 || nav.indexOf("chrome") > -1) && navigator.appVersion.indexOf("MSIE 8")==-1) {
            var fileObj = $("<input type='file' id='file' name='file' multiple style='display:none;'/>");
            var fileLi = $("<li class= 'fileLi' ></li>");

            $(fileObj).bind("change", function() {
                var fileNm = "";   // 파일명
                var fileExt = "";  // 파일확장자
                var fileSizeSpan = "";

                if (this.files) {
                    var files = this.files;
                    var filesExt = "";
                    var filesSize = 0;

                    //파일 개수 체크
                    var fileCnt = $("#file-list li span b").length+files.length;
                    if ( fileCnt > fileMxmCo ) {
                        alert("첨부파일은 최대"+ fileMxmCo + "개까지 가능합니다\n첨부된 파일을 먼저 지워주세요.");
                        return;
                    }

                    for (var i=0; i<files.length; i++) {
                        filesExt = files[i].name.substring(files[i].name.lastIndexOf(".") + 1);

                        if (fileAllowExt && fileAllowExt.indexOf(filesExt.toLowerCase()) < 0) {

                            if (bbsTy == 'GAL' || bbsTy == 'PIC' ) {
                                alert("이미지 파일만 첨부 가능합니다.");
                                return;

                            } else if (bbsTy == 'VOD') {
                                alert("MP4 파일만 첨부 가능합니다.");
                                return;

                            } else {
                                alert("첨부 할 수 없는 파일형식입니다.");
                                return;
                            }
                        }

                        if (files[i].size > 1024*1024*fileLmttSize) {
                            alert("한 파일당 최대"+fileLmttSize+"MB 까지 올릴수 있습니다.");
                            return;
                        }

                        fileNm += (i>0 ? ", " : "") + "<b>"+files[i].name+"</b>";
                        filesSize += files[i].size;
                    }

                    fileSizeSpan = "<span class='fileSize'>" + filesSize + " bytes</span>";

                } else {
                    fileNm = $(fileObj).val().substring($(fileObj).val().lastIndexOf("\\") + 1);
                    fileExt = fileNm.substring(fileNm.lastIndexOf(".") + 1);

                    if (fileAllowExt && fileAllowExt.indexOf(fileExt.toLowerCase()) < 0) {

                        if (bbsTy == 'GAL' || bbsTy == 'PIC' ) {
                            alert("이미지 파일만 첨부 가능합니다.");
                            return;

                        } else if (bbsTy == 'VOD') {
                            alert("MP4 파일만 첨부 가능합니다.");
                            return;

                        } else {
                            alert("첨부 할 수 없는 파일형식입니다.");
                            return;
                        }
                    }
                }

                $(fileLi).html("<span class='fileName " + fn_getFileExtClass(filesExt) + "'>" + fileNm + "</span>" + "<img id='delete' src='/images/com/fm/delete.png'/>" + fileSizeSpan +"<div style='clear: both; height:0'></div>");

                // 추가된 파일리스트삭제이미지 클릭 이벤트 주입
                $(fileLi).find("img").click(function() {
                    $(this).parent().remove();
                });

                $(fileLi).append(fileObj);
                $("#file-list").append(fileLi);
            });

            $(fileObj).click();

        } else {

            var fileObj = "<input type='file' id='file' name='file' style='height:25px;'/>";
            var fileLi = $("<li class= 'fileLi' style='padding:5px 10px 5px 10px;border-top:0;border-bottom:1px solid #eee;'></li>");

            $(fileLi).html(fileObj + "<img id='delete' src='/images/com/fm/delete.png' style='margin-top:3px;'/>");

            // 파일 확장자 체크
            $(fileLi).find("#file").change(function() {
                var fileNm = "";   // 파일명
                var fileExt = "";  // 파일확장자
                var fileSizeSpan = "";

                if (this.files) {
                    var files = this.files;
                    var filesExt = "";
                    var filesSize = 0;
                    for (var i=0; i<files.length; i++) {
                        filesExt = files[i].name.substring(files[i].name.lastIndexOf(".") + 1);

                        if (fileAllowExt && fileAllowExt.indexOf(filesExt.toLowerCase()) < 0) {

                            if (bbsTy == 'GAL' || bbsTy == 'PIC' ) {
                                alert("이미지 파일만 첨부 가능합니다.");
                                return;
                            } else {
                                alert("첨부 할 수 없는 파일형식입니다.");
                                return;
                            }
                        }
                        fileNm += (i>0 ? ", " : "") + files[i].name;
                    }
                } else {
                    fileNm = $(this).val().substring($(this).val().lastIndexOf("\\") + 1);
                    fileExt = fileNm.substring(fileNm.lastIndexOf(".") + 1);

                    if (fileAllowExt && fileAllowExt.indexOf(fileExt.toLowerCase()) < 0) {
                        if (bbsTy == 'GAL' || bbsTy == 'PIC' ) {
                            alert("이미지 파일만 첨부 가능합니다.");
                        } else {
                            alert("첨부 할 수 없는 파일형식입니다.");
                        }
                        $(this).val("");
                        return false;
                    }
                }
            });

            // 추가된 파일리스트삭제이미지 클릭 이벤트 주입
            // $(fileLi).find("img").click(function() {
            //     $(this).parent().remove();
            // });
            $("#file-list").append(fileLi);
        }
    }
</script>
<form name="fileDownloadForm" id="fileDownloadForm"></form>
<form id="searchForm" name="searchForm" method="GET" >
    <input type="hidden" id="mi" name="mi" value="<c:out value='${condition.mi}'/>"/>
    <input type="hidden" id="boardId" name="boardId" value="<c:out value='${condition.boardId}'/>"/>
    <input type="hidden" id="systemId" name="systemId" value="<c:out value='${condition.systemId}'/>"/>
    <input type="hidden" id="size" name="size" value="<c:out value='${condition.size}'/>">
    <input type="hidden" id="page" name="page" value="${condition.page}" />
    <input type="hidden" id="searchText" name="searchText" value="<c:out value='${condition.searchText}'/>">
</form>
<form name="postUpdateForm" id="postUpdateForm" method="post" enctype="multipart/form-data">
    <input type="hidden" id="postId" name="postId" value="<c:out value="${postInfo.postId}"/>"/>
    <div class="bbs_WriteA">
        <table>
            <caption>제목, 이미지, 이미지설명, 내용을 작성하실 수 있습니다.</caption>
            <colgroup>
                <col style="width: 15%;">
                <col style="width: 100%;">
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row"><label for="postTitle">제목</label></th>
                    <td>
                        <input name="postTitle" id="postTitle" type="text" class="input_txt bbs_write_tit" maxlength="600" value="<c:out value="${postInfo.postTitle}"/>">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="postContent" id="postContent" value="">
                        <div id="editor"></div>
                    </td>
                </tr>
                <tr class="fileUploadTr">
                    <td colspan="2">
                        <style>
                            #fileListDiv {height: 110px !important}
                        </style>

                        <div id="popup">
                            <h2>첨부파일</h2>
                            <div class="ar" style="padding: 0 10px 10px 10px;">
                                <a class="button_file" href="#none" onclick="fn_fileFind(this)" id="fileSelectButton">파일선택</a>
                            </div>
                            <input type="hidden" name="fileGrpKey" value="<c:out value='${fileGrpKey}'/>"/>
                            <div id="fileListDiv">
                                <ul id="file-list" style="height:65px;">
                                    <c:forEach var="file" items="${fileMaster.fileList}" varStatus="status">
                                        <!-- 일반, 사진, 갤러리 게시판  -->
                                        <li class='fileLi'>
                                            <span class='fileName'>
                                                <a href="#none" onclick="fn_fileDownload('<c:out value="${file.fileKey}"/>')"><b><c:out value="${file.originalFileName}"/></b></a>
                                            </span>
                                            <img id='delete' src='/images/com/fm/delete.png' class="deleteFile" data-id="<c:out value='${file.fileId}'/>"/>
                                            <span class='fileSize'><c:out value="${file.fileSize}"/> bytes</span>
                                            <div style='clear: both; height:0'></div>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- 버튼 -->
    <div class="btns ar">
        <a href="javascript:" title="글쓰기" class="btn_ blue btton_blue updatePost">수정</a>
        <a href="javascript:" data-url="/<c:out value="${ctx}"/>/na/ntt/selectNttList.do" data-nm="bbsId" data-param="<c:out value="${RQbbsId}"/>" title="취소" class="btn_ black menuFormBtn btton_black">취소</a>
    </div>
    <!-- //버튼 -->
</form>