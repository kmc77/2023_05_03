<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- url �� �����ϴ� ����� �մϴ�.
	�� �±׸� ����ϸ� ���� �Ű������� ������ URL�� �ս��� ���� �� �ֽ��ϴ�.
--%>
 <c:url var="ex"
 	value="jstl1_base.jsp"/>
 	<a href="${ex}">ó�� ������ �̵�/a</a>
 	<%-- <a href="jstl1_base.jsp">ó�� ������ �̵�</a> --%>
 <br>
 <br>
 
 
 <%-- <c:param>�±׿� �Ķ���͸� �����ϱ� ���� �±��Դϴ�.
 		name �Ӽ��� �Ķ�����̸��� �Է��ϰ� value�� ���� �Է��Ͽ� �����մϴ�. --%>	
<c:url var="ex" value="jstl6_param.jsp">
	<c:param name="id" 	value="start"/>
	<c:param name="name" value="ȫ�浿"/>
</c:url>
<a href="${ex}">�Ű����� ���� ������ �̵�</a>		
	 