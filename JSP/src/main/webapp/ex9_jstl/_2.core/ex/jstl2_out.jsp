<%--
JSP ǥ�� �±� ���̺귯�� (JSTL)
- �����ڰ� ���� ����ϴ� ����� ��Ƴ��� ����� ���� �±�(�±� ���̺귯��)�Դϴ�.

JSTL �ٿ�ε�
1) https://mvnrepository.com/ ����
   "jstl" �˻�
   
   https://mvnrepository.com/artifact/javax.servlet/jstl/1.2
   jstl-1.2.jar �ٿ�ε�
   
2) ��Ŭ������ ���� �ֱ�
   webapp/WEB-INF/lib/(jstl-1.2.jar)
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%-- * taglib ��Ƽ��: JSTL�̳� JSP ����� ���� �±� �� �±� ���̺귯�� ��� �� ���ξ �����ϴ� �� ����մϴ�.
     1. prefix �Ӽ�: ����� ����� ���� �±��� ���ӽ����̽��� �����ϸ�,
        ������ ���� �ش� �±� ���̺귯���� ȣ���� �� ����� ���ξ �ǹ��մϴ�.
        
     2. uri �Ӽ�: �±׿� �Ӽ� ������ ���ǵ� ������ ��ġ�� ��ġ�� �����մϴ�.
     
     * taglib ���ν�: �ڵ� ���̸� ���̰� �������� ����ŵ�ϴ�.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
 <%--
    prefix="f": ����� �±��� ���ӽ����̽� �̸��Դϴ�.
    ��) <���ӽ����̽�:�±��̸�/>
    <f:set/>
    
    uri="http://java.sun.com/jsp/jstl/core"
          core ���̺귯���� ����ϰڴٴ� �ǹ��Դϴ�.
          ���� �ּ��̸� �ݵ�� �ۼ��Ǿ�� �մϴ�.
--%>
<html>
<head>
<title>JSTL core ���̺귯�� ��� ���� 2</title>
</head>
<body>
   <%-- 
   		* Cross-Site Scription(XSS)
   		  ���������� ����ڰ� �����Ϸ��� ����Ʈ�� ��ũ��Ʈ�� �ִ� ����̸�
   		  ���ݿ� �����ϸ� ����Ʈ�� ������ ����ڴ� ���Ե� �ڵ带 �����ϰ� �Ǹ鼭 �ǵ�ġ ���� �ൿ�� �����ŵ�ϴ�.
   
    --%>
   <c:set var="test" value="<script>alert('ȯ���մϴ�-escapeXml=false')</script>" />
   <c:out value="${test }" escapeXml="false"/>
   <%--
   	escapeXml=false�� html�±׸� �ν��մϴ�.
   	������ �ҽ� ���� : <script>alert('ȯ���մϴ�.-escapeXml=false')</script>
   	���� ��� : ��ũ��Ʈ ����
    --%>
   </body>
   </html>