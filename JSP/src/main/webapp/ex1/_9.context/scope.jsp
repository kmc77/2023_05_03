<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>scome.jsp</title>
<link href="../../css/ch03-5.css" type="text/css" rel="stylesheet">
</head>
<body>
	request �Ӽ� food �� : <%=request.getAttribute("food") %><br>
	session �Ӽ� food �� : <%=session.getAttribute("food") %><br>
	ServletContext �Ӽ� food ��: <%=application.getAttribute("food") %>
	
</body>
</html>