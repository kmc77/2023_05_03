<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>dispatcher.jsp</title>
<style>
	body{background:pink;}
	div{color:red}
	p{color:green}
</style>
</head>
<body>
<!-- request��ü�� getParamter()�޼��带 �̿��ؼ� �Ķ���� "food"�� ���� �����ɴϴ�. -->
<%-- jsp���� <%=�� �Ǵ� ���� �Ǵ� ���� %>  '�� �Ǵ� ���� �Ǵ� ����' �� ����϶�� �ǹ��Դϴ�.--%>
	<div>
	 request �Ӽ� food �� : <%=request.getAttribute("food") %><br>
	 request �Ӽ� name �� : <%=request.getAttribute("name") %>
	</div>
	<p>
		��û�ּ�  <%=request.getRequestURL() %>
	</p>	
</body>
</html>
<%-- ���� �� �ּҶ��� �� Ȯ���� ������.
	�������� �ּ� ǥ������
--%>