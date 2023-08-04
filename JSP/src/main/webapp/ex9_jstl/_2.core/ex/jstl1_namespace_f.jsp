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
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
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
<title>JSTL core ���̺귯�� ��� ���� 1</title>
</head>
<body>
   <%-- <f:set>: ���� ������ �����ϴ� �±��Դϴ�.
        var: ������ ������ �̸�
        value: ������ ��
    --%>
   <f:set var="test" value="Hello JSTL!"/>
   <h3>
      <f:out value='${test}'/> <!-- �� �±״� ����� ���� ����մϴ�. -->
   </h3>
   
   <h3>
      <f:out value='test'/> <!-- �� �±״� ����� ���� ����մϴ�. -->
   </h3>
   
   <f:remove var="test" /> <!-- �� �±״� "test"��� �̸��� ������ �����մϴ�. -->
   <h3>
      <f:out value="${test}"/>
   </h3>
   
   <f:catch var="err"> <!-- ���� ó���� ���� �±��Դϴ�.
    ���ܰ� �߻��ϸ� var�� ������ ���� ��ü�� �Ҵ�˴ϴ�. -->
      <%=10 / 0%>
   </f:catch>
   <h3>
      <f:out value="${err}"/>
   </h3>
   
   <!-- ���� ó���� ���� �±��Դϴ�. if�� ���������� else�� �������� �ʽ��ϴ�. -->
   <f:if test="true">
      true ������ ������ ���� ��µ��� �ʽ��ϴ�. - ���ǽ��� true�̹Ƿ� ������ ����˴ϴ�.<br>
   </f:if>
   
   <f:if test="${5<10}">
      <h3>5�� 10���� �۽��ϴ�.</h3>
   </f:if>
   
   <f:if test="${6+3==9}">
      <h3>6 + 3�� 9�Դϴ�.</h3>
   </f:if>
   
   <%--
   1. <f:choose>, <f:when>, <f:otherwise> �±�
   - ���� ���� ���� ���� �ִ� ��� ����մϴ�.
   
   - ���� �� �ϳ��� �����ϸ� �ش� �κ��� �����ϰ� Ż���մϴ�.
   (��, �ϳ��� ����Ǹ� if-else if-else ������ �����մϴ�)
   �� ���� choose �±� �ȿ� ���� ���� when �±װ� �����մϴ�.
   
   2. ���� ��
   <f:choose>
   
   <f:when test="testCondition"> <!-- ������ �����Ǹ� ���� - ���� ���� �ۼ��� �� �ֽ��ϴ�. -->
   ~
   </f:when>
   
   <f:when test="testCondition">
   ~
   </f:when>
   
   <f:otherwise> <!-- ������ �������� ������ ���� -->
   ~
   </f:otherwise>
   
   </f:choose>
   --%>
   <f:choose>
      <f:when test="${5+10==50}">
         <h3>5+10�� 50�� �����ϴ�.</h3>
      </f:when>
      <f:otherwise>
         <h3>5+10�� 50�� ���� �ʽ��ϴ�.</h3>
      </f:otherwise>
   </f:choose>

   <f:set var="a" value="3" />

   <f:choose>
      <f:when test="${a == 1}">
         <h3>1.</h3>
      </f:when>
      <f:when test="${a == 2}">
         <h3>2.</h3>
      </f:when>
      <f:otherwise>
         <h3>1�� 2�� �ƴմϴ�.</h3>
      </f:otherwise>
   </f:choose>

   <f:set var="a" value="${a + 1}" />

   <h3>
      <f:out value="${a}"/>
   </h3>
</body>
</html>
