<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>empty ������</title>
</head>
<body>
   <%--
   	empty ������
   	����) empty ��
   	�� ���� ��� �ְų� null������ ������ �� ����ϴ� ������ �Դϴ�.
   	�� ���� null�̸� true�� ��ȯ�մϴ�.
   	�� ���ڿ��� �迭�� ũ�Ⱑ 0�� ��쿡�� true�� ��ȯ�մϴ�.
    --%>
  <%
  		session.setAttribute("login_id", "hong");
  		session.invalidate();
  %>
	<c:out value="${login_id }"/>
	<hr>
	<c:if test='${empty login_id }'>
		<strong style="color:red">���̵� �������� �ʽ��ϴ�.</strong>
	</c:if>
	
	<c:if test='${!empty login_id }'>
		<strong style="color:green">���̵� �����մϴ�.</strong>
	</c:if>	  	
  	
  	
  	
  		
   </body>
   </html>