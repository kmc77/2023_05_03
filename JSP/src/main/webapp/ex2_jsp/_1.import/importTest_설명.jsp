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
    
<!DOCTYPE>
<%-- SimpleDateFormat Ŭ���� ������� import
	 import �Ӽ� : JSP ���������� ����� Ŭ����(�������̽�) ���� �մϴ�.
	 							�������� ������ ��� �޸��� �����Ͽ� ǥ���� �� �ֽ��ϴ�.
	 <%@page import="java.text.SimpleDateFormat, java.util.*"%>							
 --%>
 <%@page import="java.text.SimpleDateFormat" %>
 <%-- DateŬ���� ������� import --%>
 <%@page import="java.util.*" %>
<html>
<head>
<title>import �Ӽ� �׽�Ʈ</title>
</head>
<body>
<h1> ���� �ð��� <%=new SimpleDateFormat().format(new Date()) %>�Դϴ�.</h1>
</body>
</html>