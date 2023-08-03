<%--
	* ǥ�����(Expression Language:EL)
		��Ĵ���� �����ϱ� ������ ���� ������ �ʿ� �����ϴ�.
	JSP ��ũ��Ʈ ����Ͽ� �Ӽ� ������ �� �� ���ϰ� ����ϱ� ���� �����Ǵ� ����Դϴ�.
		����) ${ }
		
		ǥ���� �±�
	1. <%=article.getId()%>  //article�� �ڹٺ��� ���
	   => ${article.id} �Ǵ�  ${article["id']} �Ǵ� ${article['id']}
	   
	2. <%=request.getParameter("name")%>
	   => ${param.name}
	   
	3. <%=request.getParameterValues("hobby")%>
	   => ${paramValues.hobby} ����� ��Ʈ�� �迭(String[])
	   				���ʴ�� ����� ���
	   	- ${paramValues.hobby[0] }
	   	- ${paramValues.hobby[1] }
	   	- ${paramValues.hobby[2] }
	   				      		
	4. <%=request.getAttribute("hoho")%>
	   => ${requestScope.hoho}
	   
	5. <%=session.getAttribute("id")%>
	   => ${sessionScope.id}
	   
	6. ${hoho}
				�� ��쿡�� pageContext -> request -> session -> application ���� ��ü ������
		'hoho' �̸��� attribute�� ã���ϴ�.		      	

 --%>



<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%
	pageContext.setAttribute("id", "pageContext");
	request.setAttribute("id", "request");
	session.setAttribute("id", "session");
	application.setAttribute("id", "application");

%>
<html>
<head>
    <title>EL ���尴ü ��� ����</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 <style>
 	.container{width:500px}
 	table{margin:auto;}
 	td:nth-child(1),h3{text-align:center}
 </style>
</head>
<body>
<div class="container">
  <form action="el_result_core.jsp" method="post">
  	<h3>EL ����</h3>
  	<table class="table">
  		<tr>
  			<td>�̸� </td>
  			<td><input type="text" name="name" value="ȫ�浿" class="form-control"></td>
  		</tr>
  		<tr>
  			<td>���</td>
  			<td>
  				<input type="checkbox" name="hobby" id="hobby1" value="����">����
  				<input type="checkbox" name="hobby" id="hobby2" value="���">���
  			</td>
  		</tr>
  		<tr>
  			<td colspan="2" align="center">
  				<input type="submit" value="�Է�" class="btn btn-info btn-block"></td>
  		</tr>
  	</table>
  	</form>
  	
  	 <h5>page������ �Ӽ� id�� �� : ${pageScope.id }</h5>
  	 <h5>request������ �Ӽ� id�� �� : ${requestScope.id }</h5>
  	  <h5>��� ������ �Ӽ� id�� �� : ${id }</h5>
  	 
  	</div>
  					
</body>
</html>
