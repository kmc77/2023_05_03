<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login.html</title>
<link href="../../css/ch03-1.css" type="text/css" rel ="stylesheet">
</head>
<body>
<!-- �� �������� URL��
	 http://localhost:8088/JSP/ex1/_1.login/login1_get.html�� �ǹ��մϴ�.
	 
	 action�� �ǹ̴�
	 http://localhost:8088/JSP/ex1/_1.login/LifeCycleTest�� �ǹ��մϴ�.
	 
	 src/main/java ��Ű���� ���� ��Ű�� _1.login�� LifeCycleTest.java����
	 @WebServlet(urlPatterns = "/ex1/_1.login/LifeCycleTest") �Ǵ�
	 @WebServlet("/ex1/_1.login/LifeCycleTest") ���� �����ؾ� �մϴ�.
	 
 -->

<form action="login_ok.jsp" method="post">

 <h1>�α��� </h1>
 	 <hr>
 	 <b>���̵�</b>
		<input type="text" name="id" placeholder="Enter id" required>
		<b>Password</b>
		<input type="text" name="password" placeholder="Enter password" required>
		<div class="clearfix">
			<button type="submit" class="submitbtn">Submit</button>
			<button type="reset" class="cancelbtn">Cancel</button>
		</div>
</form>

</body>
</html>