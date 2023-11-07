/**
 * 파일 다운로드 모듈
 * @param url api url
 * @param shouldShowLoading 로딩바 호출 여부
 * @type {{downloadFile: FileDownloader.downloadFile}}
 */
var FileDownloader = (function () {
    // 내부 변수 및 함수
    var isLoading = false;

    // 로딩 바를 표시하는 함수
    function showLoading() {
        if (!isLoading) {
            $(document.body).showLoading();
            isLoading = true;
        }
    }

    // 로딩 바를 숨기는 함수
    function hideLoading() {
        if (isLoading) {
            $(document.body).hideLoading();
            isLoading = false;
        }
    }

    // Blob 데이터를 파일로 다운로드
    function downloadBlobAsFile(blob, fileName) {
        var link = document.createElement('a');
        link.href = window.URL.createObjectURL(blob);
        link.download = fileName;
        link.click();
    }

    // 공개 API
    return {
        downloadFile: function (url, shouldShowLoading) {
            if (shouldShowLoading) {
                showLoading();
            }

            $.ajax({
                url: url,
                type: "GET",
                xhrFields: {
                    responseType: 'blob'
                },
                success: function (data, message, xhr) {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        let disposition = xhr.getResponseHeader('Content-Disposition');
                        let matches = /filename="(.+)"/.exec(disposition);
                        let fileName = matches != null && matches.length > 1 ? matches[1] : "downloaded_file";
                        downloadBlobAsFile(data, fileName);
                    } else {
                        alertMsg("알림", "다운로드에 실패하였습니다.");
                    }
                },
                error: function (result) {
                    var obj = result.responseJSON;
                    if (typeof obj == "undefined" || obj == null || obj == "") {
                        alert("오류가 발생했습니다. 관리자에게 문의해주세요.");
                    } else {
                        alert(result.responseJSON.message);
                    }
                },
                complete: function () {
                    if (shouldShowLoading) {
                        hideLoading();
                    }
                }
            });
        }
    };
})();

/**
 * 파일 파인더 공통
 * @type {{find: (function(*): *|jQuery|HTMLElement), name: (function(*): *|jQuery|HTMLElement), id: (function(*): *|jQuery|HTMLElement)}}
 */
var fileFinder = (function () {
    /**
     * 확장자 체크
     * @param fileAllowExt
     * @param fileExt
     */
    function filesExtCheck(fileAllowExt, fileExt) {
        if (fileAllowExt && fileAllowExt.indexOf(fileExt.toLowerCase()) < 0) {
            alert("첨부 할 수 없는 파일형식입니다.");
            return;
        }
    }

    return {
        /**
         * 파일 파인더 input type file 엘리먼트를 리턴
         * @param fileAllowExt 허용 확장자 문자열 예시) jpg,png,jpeg
         * @param callback
         * @returns {*|jQuery|HTMLElement}
         */
        find: function (fileAllowExt, callback) {
            var fileObj = $("<input type='file' style='display:none;'/>");

            $(fileObj).bind("change", function(e) {
                var fileNm = $(fileObj).val().substring($(fileObj).val().lastIndexOf("\\") + 1);
                var fileExt = fileNm.substring(fileNm.lastIndexOf(".") + 1);
                filesExtCheck(fileAllowExt, fileExt);
                callback(e);
            });

            $(fileObj).click();

            return fileObj;
        }
    }
})();