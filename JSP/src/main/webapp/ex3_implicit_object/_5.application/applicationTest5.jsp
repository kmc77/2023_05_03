<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
request.setCharacterEncoding("utf-8");
    
 <html>
 <head>
 <title>Application Test - �ʱ�ȭ �Ķ���� �о����</title>
 <style>
 	div{background:<%=application.getInitParameter("color")%>}
 </style>
 </head>
 
 <body>
 	<h2>wdb.xml���� ������ �������� ����</h2>
 	
 	 <div>���� ���� ���ΰ���?<%= application.getInitParameter("parameter1") %></div>
 	 
 	 
</body>
</html>