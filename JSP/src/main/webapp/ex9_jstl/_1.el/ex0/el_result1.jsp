<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<%
	request.setCharacterEncoding("euc-kr");
%>
<html>
<head>
    <title>EL ���尴ü ��� ����</title>
</head>
<body>
        <h3>�Ѿ�� �̸��� : ${param.name }</h3>
        <h3>�Ѿ�� ��̴� 
        ${c:forEach.hobby[0] } ,
        ${c:forEach.hobby[1] }</h3>
        
     <h3>page������ �Ӽ� id�� �� : ${pageScope.id }</h3>
  	 <h3>request������ �Ӽ� id�� �� : ${requestScope.id }</h3>
  	 <h3>session������ �Ӽ� id�� �� : ${sessionScope.id }</h3>
  	 <h3>application������ �Ӽ� id�� �� : ${applicationScope.id }</h3>
  	 <h3>page -> request -> session -> application �������� �Ӽ� id�� ���� ã���ϴ�.
  	 	: ${id }</h3>
  	 
</body>
</html>
