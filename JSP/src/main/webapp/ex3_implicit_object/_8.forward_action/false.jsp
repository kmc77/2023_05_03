<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>�Ķ���� ���</title>
</head>
<body>
	name �Ķ���� ��: <%= request.getParameter("name").toUpperCase() %>
	
	<!-- name �Ķ������ ���� �빮�ڷ� ��ȯ�Ͽ� ��� -->
	<!-- ���� �������� �����ϸ� errorNullPointer.jsp�� ����ȴ� -->
	<!-- �ּ�â�� ?name=hong�� �Է��ϸ� ���������� 'name �Ķ���� ��: HONG'�� ��µȴ� -->
</body>
</html>