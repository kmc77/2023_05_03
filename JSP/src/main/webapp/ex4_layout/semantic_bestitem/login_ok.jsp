<%@ page language="java" contentType="text/html; charset=EUC-KR" 
		pageEncoding="EUC-KR"%>
		
<!DOCTYPE html>
<html>
<head>
<title>�α��� ó��</title>
</head>
<body>
	<%
	//web.xml�� ������ ���� �����ɴϴ�.
    String id = application.getInitParameter("id");
	System.out.println(id);
    String password = application.getInitParameter("password");

   	//�Է��� ���̵�� ��й�ȣ�� �����ɴϴ�.
   	String inputid = request.getParameter("id");
    String inputpassword = request.getParameter("password");
   	
    //web.xml���� ������ ���� �Է��� ���� ���մϴ�.
    if (id.equals(inputid) && password.equals(inputpassword)) {
        session.setAttribute("id", id);

%>
	<script>
		alert('<%=id%>�� ȯ���մϴ�.');
		location.href = "templatetest.jsp";
		</script>
	<%
		} else if (id.equals(inputid)) {
	%>
	<script>
		alert("��й�Ȧ�� Ȯ���ϼ���");
		history.back();
	</script>
	<%
		} else {
	%>
	<script>
		alert("���̵� Ȯ���ϼ���");
		history.back();
	</script>
	<%
		}
	%>
</body>
</html>