<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
 <%@ page import="java.util.Enumeration"%>
 <!DOCTYPE HTML>
 <html>
 <head>
 <title>Application Test - �ʱ�ȭ �Ķ���� �о����</title>
 </head>
 <%-- 
 		- �ʱ�ȭ �Ķ���ʹ� web.xml�� �ۼ��մϴ�.
 		1. getInitParameterNames() : �� ���ø����̼� �ʱ�ȭ �Ķ������ �̸� ����� �����մϴ�.
 		2. getInitParameter(Name) : �̸��� Name�� �� ���ø����̼� �ʱ�ȭ �Ķ������ ���� �о�ɴϴ�.
 									�������� ���� ��� null�� �����մϴ�.
  --%>
 <body>
 	<h2>�ʱ�ȭ �Ķ���� ���</h2>
 	  <ul>
        <% 
        Enumeration<String> initParamEnum = application.getInitParameterNames();
        
        while (initParamEnum.hasMoreElements()) {
            String initParamName = initParamEnum.nextElement();
        %>
        
        <li>
            <%=initParamName %> =
            <%=application.getInitParameter(initParamName) %>
        </li>
        
        <% 
        }
        %>
    </ul>
</body>
</html>