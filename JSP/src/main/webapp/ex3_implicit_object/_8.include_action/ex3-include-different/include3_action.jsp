<%--
	1. include �׼� �±�
	   include �׼��� page �Ӽ��� ������ ó���� ������ ó�� ����� ���� �������� �����ϴ� ����Դϴ�.
	   
	2. include ��Ƽ��� ������
	   include ��Ƽ��� ���� ������ ������ include ���þ�� ������ �������� �ҽ� �ڵ尡 �״�� ���� �Ǿ� ���������
	   include �׼� �±״� page �Ӽ��� �������� ���� ����� ���� ��ġ�� ���Խ�ŵ�ϴ�.
	   
	   *������ �߻��մϴ�.   
 --%>

<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Include Action Test</title>
</head>
<body>
	<h2>��Ʋ��� �׼� �׽�Ʈ ����</h2>
	<jsp:include page='include1.jsp' />
	<%=alias %> <%-- ���� �߻� --%>
	<h2>��Ŭ��� �׼� �׽�Ʈ ��</h2>
</body>
</html>