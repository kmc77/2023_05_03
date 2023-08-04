<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<html>
<head>
    <title>���� ���ε� Ȯ�� �� �ٿ�ε�</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
    String name = request.getParameter("name");
    String subject = request.getParameter("subject");
    String systemName1 = request.getParameter("systemName1");
    String systemName2 = request.getParameter("systemName2");
    String origfileName1 = request.getParameter("origfileName1");
    String origfileName2 = request.getParameter("origfileName2");
    String uploadPath = request.getParameter("uploadPath");

%>
<div class="container">
 <h4 class="text-center">���� �ٿ�ε� ��</h4>
 <table class="table table-bordered table-striped">
   <tr>
     <td class="text-center">�ۼ���</td>
     <td class="text-center"><%=name %></td>
   </tr>
   <tr>
     <td class="text-center">����</td>
     <td class="text-center"><%=subject %></td>
   </tr>
   <tr>
     <td class="text-center">���ϸ�1</td>
     <td class="text-center">
       <a href="<%=request.getContextPath() %>/down?file_name=<%=systemName1 %>"><%=origfileName1 %></a>
     </td>
   </tr>
   <tr>
     <td class="text-center">���ϸ�2</td>
     <td class="text-center">
       <a href="<%=request.getContextPath() %>/down?file_name=<%=systemName2 %>"><%=origfileName2 %></a>
     </td>
   </tr>
   <tr>
     <td class="text-center">uploadPath</td>
     <td class="text-center"><%=uploadPath %></td>
   </tr>
 </table>
</div>
</body>
</html>