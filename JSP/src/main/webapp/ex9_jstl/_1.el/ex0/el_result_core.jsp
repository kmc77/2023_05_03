<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("euc-kr");
%>
<html>
<head>
    <title>EL ���尴ü ��� ����</title>
</head>
<body>
        <h3>�Ѿ�� �̸��� : ${param.name }</h3>
        <h3>�Ѿ�� ��̴� :
        <c:forEach var="ho" items="${paramValues.hobby}">
        		<c:out value="${ho}"/>
        </c:forEach>		
		</h3>
		
		        
     <h3>session������ �Ӽ� id�� �� : ${sessionScope.id }</h3>
  	 <h3>${id }</h3>
  	 
</body>
</html>
