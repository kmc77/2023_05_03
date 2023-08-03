<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
 
<!DOCTYPE html>
<html>
<head>
<title>Request Test(requestTest1_Form.jsp)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style>
	.container { width: 70%; margin-top: 30px; }
	h3 { text-align: center; }
</style>	
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
<script>
	$(function(){
		$("form").submit(function() {
			let selected = $("input:radio:checked").length;
			if(selected < 1){
				alert("������ ������ �ּ���");
				return false;
			}
			
			selected = $("input:checkbox:checked").length;
			if(selected < 1){
				alert("��̸� �� �� �̻� ������ �ּ���");
				return false;
			}
		});
	});
</script>
</head>
<body>
	<div class="container">
		<h3>Request �����Դϴ�.</h3>
		<form action="requesTest1.jsp" method="get">
			<table class="table">
				<tr>
					<td>�̸�</td>
					<td><input type="text" name="name" class="form-control" required></td>
				</tr>
				<tr>
					<td>����</td>
					<td>
						<label>
							<input type="radio" name="gender" value="male" > ����
						</label>
						<label>
							<input type="radio" name="gender" value="female" > ����
						</label>
					</td>
				</tr>
				<tr>
					<td>���</td>
					<td>
						<label>
							<input type="checkbox" value="����" name="hobby"> ����
						</label>
						<label>
							<input type="checkbox" value="����" name="hobby"> ����
						</label>
						<label>
							<input type="checkbox" value="TV��û" name="hobby"> TV��û
						</label>
						<label>
							<input type="checkbox" value="�౸" name="hobby"> �౸
						</label>
						<label>
							<input type="checkbox" value="��Ÿ" name="hobby"> ��Ÿ
						</label>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" class="btn btn-success">����</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
