<%--
	JSP ���þ�(Directive)
	����) <%@ ..... %>
	JSP ���� ������ JSP�� ������ �����̳ʿ��� �ش� �������� ���
	ó���� ���ΰ��� ���� ���� �������� ������ �ִµ� ���˴ϴ�.
	
	���þ��� ����)
		page ���þ�, include ���þ�, taglib ���þ�
		
	�� page ���þ�
	  JSP �������� ���� �Ӽ��� �����ϴ� ���þ��Դϴ�.
	  ����) <%@ page �Ӽ�=�� ..... %>
	  
	�� include ���þ�
	  Ư���� JSP���� �Ǵ� HTML ������ �ش� JSP �������� ������ �� �ֵ��� �ϴ� ����� �����ϴ� ���þ��Դϴ�.
	  			����) <%@ include file="���ϰ��" %>
	  			  	
	�� taglib ���þ�� JSTL(JSP Standard Tag Library)�̳�
	  Ŀ���� �±� �� �±� ���̺귯���� JSP���� ����� �� ���λ縦 �����ϱ� ���� ���˴ϴ�.
	  ����) <%@ tahlib uri="http://taglib.com/sampleURI" prefix="samplePrefix" %>  			  	
 --%>

<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!-- 1. contentType : JSP�������� �����ϴ� ������ ������ �� ������ �� �������� ������ �� ���Ǵ� ���ڵ� Ÿ�Դϴ�.
		������ ������ ������ ������ ���°� ��� MIME�������� �Ǿ� �ִ���	�����ϴ� �Ӽ��Դϴ�.
		
		MTME(Multipurpose Internet Mail Extensions)�� ���ͳ��� ���� ������ �ְ� ���� �� ���Ǵ�
		���� ������ ������ ���� ���Դϴ�.
		���� text/html, text/plain, image/gif, video/avi �� ���� ���� Ÿ���� �����մϴ�.
		
	 2. charset=EUC-KR �� ������ �� �ֽ��ϴ�.
	 			������ ��� �⺻ ĳ���ͼ��� ISO-8859-1�� ����ϰ� �˴ϴ�.
	 			
	 3. pageEncoding : ���� �������� ���� ���ڵ� ����� ������ �� ����ϴ� �Ӽ��Դϴ�.
	 				   �� �Ӽ��� �����Ǿ� ���� ������ contentType �Ӽ����� ������ ���� �ڵ�� JSP������ �о� ���Դϴ�.				
		 -->    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login.jsp</title>
<link href="../../css/ch03-1.css" type="text/css" rel ="stylesheet">
</head>
<body>
<form action="login_ok" method="post">
	���̵� : <input type="text" name="id"  required><br>
	��й�ȣ :	<input type="password" name="passwd" required><br>
		<div class="clearfix">
			<button type="submit" class="submitbtn">����</button>
			<button type="reset" class="cancelbtn">���</button>
		</div>
</form>
</body>
</html>