<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- https://www.w3schools.com/bootstrap4/tryit.asp?filename=trybs_filters_table&stacked=h --%>

<div class="container mt-3">
	<h2>�߰��ǰ ��� Table</h2>
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
	 		<td>��Ʈ��</td>
	 		<td>200,000</td>
	 		<td>�ĳ���</td>
	 	</tr>
	 	<tr>
	 		<td>��Ʈ</td>
	 		<td>100</td>
	 		<td>���޸�</td>
	 	</tr>
	 	<tr>
	 		<td>����</td>
	 		<td>703</td>
	 		<td>����</td>
	 	</tr>
	 	<tr>
	 		<td>����</td>
	 		<td>300</td>
	 		<td>�ƿ�������</td>
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