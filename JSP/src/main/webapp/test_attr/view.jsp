<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<title>��ȿ�� �˻� ��� ȭ��</title>
<style>
  table{margin:0 auto;width:500px;border-collapse:collapse}
  tr{border-bottom:1px solid gray;height:3em}
</style>
</head>
<body>
   <table>
     <tr><th>���̵�</th><td><%=request.getAttribute("id") %></td></tr>
     <tr><th>��й�ȣ</th><td><%=request.getAttribute("pass") %></td></tr>
     <tr><th>�ֹι�ȣ</th><td><%=request.getAttribute("jumin") %></td></tr>
     <tr><th>�̸���</th><td><%=request.getAttribute("email") %></td></tr>
     <tr><th>����</th><td><%=request.getAttribute("gender") %></td></tr>
     <tr><th>���</th><td><%=request.getAttribute("hobby") %></td></tr>
     <tr><th>�����ȣ</th><td><%=request.getAttribute("post1") %></td></tr>
     <tr><th>�ּ�</th><td><%=request.getAttribute("address") %></td></tr>
     <tr><th>�ڱ�Ұ�</th><td><%=request.getAttribute("intro") %></td></tr>
   </table>
</body>
</html>