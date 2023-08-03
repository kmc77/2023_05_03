<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"
	pageEncoding="EUC-KR"%>

<%
String id = "";
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("id")) {
	id = cookies[i].getValue();
		}
	}
}
%>
<html>
<head>
<title>��Ű�� �̿��� ���̵� ����ϱ�</title>
<mata name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/js/jquery-3.7.0.js"></script>
<style>
.container {
	margin: 3em auto;
	border: 1px solid lightgray;
	width: 500px
}
</style>
<script>
// ������� ID�� ��Ű�� �����ϴ� �Լ�
$(function() {
    const id_val = '<%=id%>';
		if (id_val) {
			$("#id").val(id_val).css('font-weight', "bold");
			$("#remember").prop('checked', true);
		}

		$("form").submit(function() {
			const inputid = $.trim($("#id").val());
			if (!inputid) {
				alert("���̵� �Է��ϼ���");
				$("#id").focus();
				return false;
			}

			// Ư�� ��Ű�� ���� �������� �Լ�
			const inputpass = $.trim($("#pass").val());
			if (!inputpass) {
				alert("��й�ȣ�� �Է��ϼ���");
				$("#pass").focus();
				return false;
			}
		})
	})
</script>
</head>
<body>
	<div class="container">
		<form action="login_ok.jsp" method="post" class="border-light p-5">
			<p class="h4 mb-4 text-center">login</p>
			<div class="form-group">
				<label for="id">id</label> <input type="text" class="form-control"
					id="id" placeholder="Enter id" name="id">
			</div>
			<div class="form-group">
				<label for="pass">Password</label> <input type="Password"
					class="form-control" id="pass" placeholder="Enter Password"
					name="Passwd">
			</div>

			<div class="form-group custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" id="remember"
					name="remember" value="store"> <label
					class="custom-control-label" for="remember">���̵� ����ϱ�</label>
			</div>

			<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
		</form>
	</div>
</body>
</html>