// FormData[0] 형식자동변환 지원여부 확인
function fn_FormDataSupport(formId){
	if (document.createElement('canvas').getContext) {
		try {
			formData = new FormData($("#"+formId)[0]);
			return true;
		} catch (e) {
			return false;
		}
	}
	return false;
}

// html5 지원여부 확인
function fn_html5Support() {
	if (document.createElement('canvas').getContext) {
		try {
			FileReader;
			return true;
		} catch (e) {
			return false;
		}
	}

	return false;
}

// 파일 확장자
function fn_getFileExtClass(fileExt) {
	
	if(fileExt != null){
		fileExt = fileExt.toLowerCase();	
	}
	
	if (fileExt == "gul" || fileExt == "hwp") {
		return "file_hw";
	} else if (fileExt == "doc" || fileExt == "docx") {
		return "file_word";
	} else if (fileExt == "pptx" || fileExt == "pptx") {
		return "file_ppt";
	} else if (fileExt == "pdf") {
		return "file_pdf";
	} else if (fileExt == "xls" || fileExt == "xlsx") {
		return "file_excel";
	} else if (fileExt == "jpg" || fileExt == "jpeg") {
		return "file_jpg";
	} else if (fileExt == "gif") {
		return "file_gif";
	} else if (fileExt == "bmp") {
		return "file_bmp";
	} else if (fileExt == "png") {
		return "file_png";
	} else if (fileExt == "txt") {
		return "file_note";
	} else if (fileExt == "dwg" || fileExt == "dxf" || fileExt == "dwt" || fileExt == "dwf" || fileExt == "iges" || fileExt == "step" || fileExt == "kosdic" || fileExt == "stl" || fileExt == "cals") {
		return "file_dwg";
	} else if (fileExt == "zip") {
		return "file_zip";
	} else {
		return "file_blank";
	}
}

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
		$(fileLi).find("img").click(function() {
			$(this).parent().remove();
		});
		$("#file-list").append(fileLi);
	}
}