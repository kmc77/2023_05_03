<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α׾ƿ� ������</title>
</head>
<body>
	<%=session.getAttribute("id") %>�� �α׾ƿ� �Ǽ̽��ϴ�.
	<%
		//session.removeAttribute("id");// "id"�� �Ӽ��� �����մϴ�.
		session.invalidate(); //������ ��� �Ӽ��� ����
	%>
	<br>
	<a href="login.jsp">�α���</a>
</body>
</html>