<%--
	JSTL(JSP Standard Tag Library)
	- ���� ���Ǵ� ����� ��Ƶ� Ŀ���� �±�(�����ڰ� ���� ������ �� �ִ� �±�)�Դϴ�.
	
	JSTL �ٿ�ε�
	1) �� https://mvnrepository.com/����
		�˻��� "jstl" �Է�
		
	   �� https://mvnrepository.com/artifact/javax.servlet/jstl/1.2
	     jstl-1.2.jar �ٿ�ε��մϴ�.
	     
	2) ��Ŭ������ ���� �ֱ�
	   webapp / WEB-INF / lib / (jstl-1.2.jar)     	
 --%>

<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<%-- * taglib ���þ� : JSTL �̳� Ŀ���� �±� �� �±� ���̺귯���� JSP���� ����� �� ���λ縦 �����ϱ� ���� ����մϴ�.

	 �� prefix �Ӽ��� ����� Ŀ���� �±��� ���ӽ����̽��� �����ϰ�
	          ��õ� ���� �±� ���̺귯���� ȣ���� �� ����� ���λ縦 �ǹ��մϴ�.
	          
	 �� uri �Ӽ��� �±� ���̺귯���� ������ �±׿� �Ӽ� ������ ������ ������ �����ϴ� ��ġ�� �����մϴ�.
	 
	 * tahlib ���� : ����ϸ� �ڵ��� ���̰� �پ��� �νļ��� �������ϴ�.
	          	
 --%>
 <%-- JSP�������� core ���̺귯���� ����մϴ�. --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 
	prefix="c" : ����� �±��� ���ӽ����̽��� �̸��Դϴ�.
		��) <���ӽ����̽�:�±��̸�/>
			<c:set/>
			
	uri="http://java.sun.com/jsp/jstl/core"
		�ھ� ���̺귯���� ����ϰڴٴ� �ǹ��Դϴ�.
		������ �ִ� �ּ��̸� �ݵ�� ����� �մϴ�.		
 --%>
<html>
<head>
    <title>JSTL core ���̺귯�� ��� ���� 1</title>
</head>
<body>
       <%-- <c:set> ������ ���� �����ϴ� �±��Դϴ�.
       		var : ���� ������ ���� �̸�
       		value : ������ ��
        --%>
        <c:set var="test" value="Hello JSTL!" />
  	 
  	 	<h3>
  	 		&lt;c:set&gt; ��� �� :
  	 		<c:out value='${text}' /><!-- ������ ���� ����ϴ� �±��Դϴ� -->
  	 	</h3>
</body>
</html>
