<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<html>
<head>
<%
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
%>
<meta charset="EUC-KR">
<title>Servlet here</title>
<style>
 span{color:red;}
</style>
</head>
<body>
<h1>����ð��� <%=hour %>�� <%=minute %>�� <%=second %>�� �Դϴ�.</h1>
<span>���� JSP2 �Դϴ�.</span>
</body>
</html>