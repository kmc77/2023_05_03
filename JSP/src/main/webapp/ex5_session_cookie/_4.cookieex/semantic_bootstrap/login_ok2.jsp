<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<title>��Ű�� �̿��� ���̵� ����ϱ�</title>
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
			String check_value = request.getParameter("remember");
			Cookie cookie = new Cookie("id", request.getParameter("id"));
			//ID ����ϱ⸦ üũ�� ���
			if (check_value != null && check_value.equals("store")) {
				//cookie.setMaxAge(60 * 60 * 24); //��Ű�� ��ȿ�ð��� 24�ð����� �����մϴ�.
				cookie.setMaxAge(2 * 60);//��ȿ�ð��� 2������ �����մϴ�.
				response.addCookie(cookie);//Ŭ���̾�Ʈ�� ��Ű���� �����մϴ�.
			} else {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}

		} else if (id.equals(inputid)) {
	%>
	<script>
		alert("��й�ȣ�� Ȯ���ϼ���");
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