<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- https://www.w3schools.com/bootstrap4/tryit.asp?filename=trybs_filters_table&stacked=h --%>

<div class="container mt-3">
	<h2>�Ż�ǰ ��� Table</h2>
	<p>��ǰ�Է��ϼ���.</p>
	<input class="form-control" id="myInput" ytpe="search" placeholder="Search..">
	<br>
	<table class="table table-bordered">
	 <thead>
	 	<tr>
	 		<th>��ǰ�̸�</th>
	 		<th>����</th>
	 		<th>������</th>
	 	</tr>
	 </thead>
	 <tbody id="myTable">
	 	<tr>
	 		<td>������ s21 ��Ʈ��</td>
	 		<td>8000</td>
	 		<td>�Ｚ</td>
	 	</tr>
	 	<tr>
	 		<td>ȫ��</td>
	 		<td>4200</td>
	 		<td>���ٴ�</td>
	 	</tr>
	 	<tr>
	 		<td>Ŀ��</td>
	 		<td>700</td>
	 		<td>�ް�</td>
	 	</tr>
	 </tbody>		
	</table>
</div>
<script>
	$("#myInput").on("keyup", function() {
		const value = $(this).val().toLowerCase();
		$("#myTable tr").each(function() {
			console.log($(this).text().toLowerCase().indexOf(value) > -1)
			
			//toggle(true)�� ������ ��Ҹ� ���̵��� �����ϴ� �޼ҵ��Դϴ�.
			//tohhle(false)�� ������ ��ҿ� style="display: none;" �Ӽ��� �߰��Ǿ� ������ �ʵ��� �մϴ�.
			$(this).toggle($(this).text().toLowerCase().indexOf(value) >-1)
			
		}):
	});

</script>
</html>