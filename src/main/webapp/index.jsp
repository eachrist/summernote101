<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Editor Sample</title>
<script src="/js/lib/jquery-3.7.1.min.js"></script>
<script src="/js/lib/summernote10/summernote-lite.js"></script>
<script src="/js/lib/summernote10/lang/summernote-ko-KR.js"></script>

<link rel="stylesheet" href="/js/lib/summernote10/summernote-lite.css">
<link rel="stylesheet" href="/js/lib/summernote10/plugin/video/summernote-video-upload.css">

<script>
$(document).ready(function() {

    $('#summernote').summernote({
          height: 300,                 // 에디터 높이
          minHeight: null,             // 최소 높이
          maxHeight: null,             // 최대 높이
          focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
          lang: "ko-KR",                    // 한글 설정
          placeholder: '최대 2048자까지 쓸 수 있습니다',    //placeholder 설정
          toolbar: [
              // [groupName, [list of button]]
              ['fontname', ['fontname']],
              ['fontsize', ['fontsize']],
              ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
              ['color', ['forecolor','color']],
              ['table', ['table']],
              ['para', ['ul', 'ol', 'paragraph']],
              ['height', ['height']],
              ['insert',['picture','link','video','videoUpload']],
              ['codeview', ['codeview']],
              ['view', ['fullscreen', 'help']]
            ],
          codemirror: { // codemirror options
              theme: 'monokai'
            },
          fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
          fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
          callbacks: { // You can use callback.
              onVideoUpload: function(files) {
                sendVideoFile(files[0], $(this));
              }
            }
          
    });
});
</script>
</head>
<body>
웹에디터 교체 샘플

<form method="post">
  <textarea id="summernote" name="editordata"></textarea>
</form>


</body>
</html>