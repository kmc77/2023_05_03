<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű�� �̿��� ���̵� ����ϱ�</title>
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
function setRememberMe() {
    const rememberMeChecked = $("#remember").prop("checked");
    if (rememberMeChecked) {
        const userId = $("#id").val();
        document.cookie = "remember_me=" + userId + "; expires=Thu, 31 Dec 2030 00:00:00 UTC; path=/";
    } else {
        // üũ�ڽ��� �����Ǹ� remember_me ��Ű�� �����մϴ�.
        document.cookie = "remember_me=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/";
    }
}

// "���̵� ����ϱ�" üũ�ڽ��� ��Ű�� ���� ���õǾ�� ���� Ȯ���ϴ� �Լ�
function checkRememberMe() {
    const userId = getCookie("remember_me");
    if (userId) {
        $("#id").val(userId);
        $("#remember").prop("checked", true);
    }
}

// Ư�� ��Ű�� ���� �������� �Լ�
function getCookie(name) {
    const value = "; " + document.cookie;
    const parts = value.split("; " + name + "=");
    if (parts.length === 2) {
        return parts.pop().split(";").shift();
    }
}

$(document).ready(function() {
    // ���� �ε�� �� "���̵� ����ϱ�" üũ�ڽ��� ���õǾ�� ���� Ȯ���մϴ�.
    checkRememberMe();

    // üũ�ڽ��� ���õǰų� ���� ������ �� ������� ID�� ��Ű�� �����մϴ�.
    $("#remember").change(function() {
        setRememberMe();
    });
});
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