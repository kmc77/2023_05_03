<%@ page language="java" contentType="text/html; charset=EUC-KR"
		 pageEncoding="EUC-KR"%>
<%
	//��Ű ��ü�� �����ϰ� language1�̶�� ��Ű �̸���
	//�Է¹��� language���� ���� �����մϴ�.
	Cookie cookie = new Cookie("language1", request.getParameter("language"));

	//�ð��� �������� ������(setMaxAge()�޼ҵ� ������� ���� ��)
	//������ ����� ��Ű�� �����˴ϴ�.
	//�Ǵ� �޼��带 ȣ���� �� ���� ������ 0�� �ָ� ��Ű�� ���� �˴ϴ�.
	cookie.setMaxAge(60*60*24);//��Ű�� ��ȿ�ð��� 24�ð����� �����մϴ�.(������ ��)
	
	response.addCookie(cookie); //Ŭ���̾�Ʈ�� ��Ű���� �����մϴ�.
%>		 
<script>
	location.href="cookieExample.jsp"//cookieExample.jsp�� ���ư��ϴ�.
</script>
