<%--
	������ �⺻������ �����̳� ���ο� ������ ���� �� �����ϰ� ����� ������ �����ϱ� ���ؼ� ����ID��� ���� ����մϴ�.
	���� ID�� ��Ű�� ����ؼ� �����Ǹ� �� ���� ��Ű �̸��� JSESSIONID �Դϴ�.
	
	(1) ���� �������� ������ �ּ���
	(2) ���� �ϼ���
	(3) ���ΰ�ħ �غ�����~
		JSESSIONID �� �߰��� ���̴��� Ȯ���� �ּ���
 --%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
 <%@ page import="java.util.Enumeration"%>
 <!DOCTYPE HTML>
 <html>
 <head>
 <title>Request Test2(requestTest2.jsp)</title>
 <link rel="stylesheet"
 		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 </head>
 <body>
 <div class="container">
 	<h1>������� ����</h1>
 	<table class="table table-striped">
 		<tr>
 			<td>����̸�</td>
 			<td>�����</td>
 		</tr>
 		<%
 			//getHeaderNames()�޼���:HTTP��û ����� ���Ե� ��� ��� �̸���
 			//Enumeration ��ü�� �����մϴ�.
 			Enumeration<String> e = request.getHeaderNames();
 			while (e.hasMoreElements()) {
 				String headerName = e.nextElement();
 	 		%>	
 	 		<tr>
 	 			<td><%=headerName %></td>
 	 			<td>
 	 				<%--getHeader(): �Ű������� ������ �̸����� �Ҵ�� ����
 	 								 �����մϴ�. ���� ��� null�� �����մϴ� --%>
 					<%=request.getHeader(headerName) %>		
 				</td>
 			</tr>
 			<%
 				}
 			%>		
 	</table>
 	</div>
 
 
 </body>
 </html>   
