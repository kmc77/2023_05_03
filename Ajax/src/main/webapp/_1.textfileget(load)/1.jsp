<%-- sample1.txt를 파일 -> properties -> utf-8로 작성합니다. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>서버의 데이터를 대상 엘리먼트에 삽입하기</title>
<link href="../css/ex2.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function() {
		$("button").click(function() { //변경을 클릭하면
			$("button").text('로딩완료').css('color', 'red');
		
		//<p>태그 영역에 "sample2.txt"의 내용을 불러옵니다.
			 $("#container").load("resource1.html");
		});
	});
</script>
</head>
<body>
	<button>서버로부터 데이터 가져오기</button>
	<div id="container">데이터 가져오기 전</div>

</body>
</html>
