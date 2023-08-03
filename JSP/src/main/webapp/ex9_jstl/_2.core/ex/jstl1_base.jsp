<%-- 
JSTL(JSP Standard Tag Library) 
- ���� ���Ǵ� ����� ��Ƶ� Ŀ���� ��ũ(�����ڰ� ���� ������ �� �ִ� �±�)�Դϴ�.

JSTL �ٿ�ε�
1) https://mvnrepository.com/ ����
   �˻��� "jstl" �Է�
   
   https://mvnrepository.com/artifact/javax.servlet/jstl/1.2
   jstl-1.2.jar �ٿ�ε�
   
2) ��Ŭ���� ���Ͽ� �ֱ�
   webapp / WEB-INF / lib / (jstl-1.2.jar)
  --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%-- * taglib ���þ� : JSTL�̳� Ŀ���� �±� �� �±� ���̺귯���� JSP���� ����� �� ���λ縦 �����ϱ� ���� ���
     1. prefix �Ӽ��� ����� Ŀ���� �±��� ���ӽ����̽��� �����ϰ�
        ��õ� ���� �±� ���̺귯���� ȣ���� �� ����� ���λ縦 �ǹ��մϴ�.
        
     2. uri �Ӽ��� �±� ���̺귯���� ������ �±׿� �Ӽ� ������ ������ ������ �����ϴ� ��ġ�� �����մϴ�.
     
     *taglib ���� : ����ϸ� �ڵ��� ���̰� �پ��� �νļ��� �������ϴ�.

 --%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
 <%--
    prefix="c" : ����� �±��� ���ӽ����̽��� �̸��Դϴ�.
    ��) <���ӽ����̽�:�±��̸�/>
    <c:set/>
    
    uri = "http://java.sun.com/jsp/jstl/core"
          �ھ� ���̺귯���� ����ϰڴٴ� �ǹ�
          ������ �ִ� �ּ��̸� �ݵ�� ����� ��
  --%>
<html>
<head>
<title>JSTL core ���̺귯�� ��� ���� 1</title>
</head>
<body>
   <%-- <c:set>���ҿ� ���� �����ϴ� �±��Դϴ�.
        var : ���� ���� �� ���� �̸�
        value : ������ ��
    --%>
       <c:set var ="test" value="Hello JSTL!"/>
       <h3>
          &lt;c:set&gt; ��� �� :
          <c:out value='${test}'/> <!--  ����� ���� ����ϴ� �±��Դϴ�. -->
       </h3>
       
       
        <h3>
          &lt;c:set&gt; ��� �� :
          <c:out value='test'/> <!--  ����� ���� ����ϴ� �±��Դϴ�. -->
       </h3>
       
       <c:remove var="test" /> <!--  "test"��� �̸��� ������ �����ϴ� �±��Դϴ�. -->
        <h3>
          &lt;c:remove&gt; ��� �� :
          <c:out value="${test}"/> 
       </h3>
       
        <c:catch var="err"> <!--  ���� ó���� ���� �±��Դϴ�.
        								���ܰ� �߻��ϸ� var�� ������ ���� ��ü�� �Ҵ�˴ϴ�. -->
        	<%=10 / 0%>
        </c:catch>								
        <h3>
          &lt;c:catch&gt; �� ��Ƴ� ���� :
          <c:out value="${err}"/> 
       </h3>
       
       <!-- ���� ó���� ���� �±��Դϴ�.
       	    if �� ���������� else�� �������� �ʽ��ϴ�. -->
       <c:if test="true">
       				true �ڿ� ���� ���� ��� ���� ��µ��� �ʾƿ� - ���ǽ��� ���̾ ������ �����մϴ�.<br>
       </c:if>
       
       <c:if test="${5<10}">
       		<h3>5�� 10���� �۴�.</h3>					    
       </c:if>
       
        <c:if test="${6+3==8}">
       		<h3>6 + 3 �� 9�̴�.</h3>					    
       </c:if>
       
       
    <%-- 
    	1. <c:choose>, <c:when>, <c:otherwise> �±�
    		- �������� �������� ��� ���
    		
    		- �����߿� �����ϴ� ���� ������ �����ϰ� ����ϴ�.
    		  (�� �Ѱ��� ����-if~else if ~ else ���� ����)
    		  �ϳ��� choose �±׿��� ���� ���� when �±װ� ����
    		  
    	2. ��� ��
    	   <c:choose>
    	   
    	   	<c:when test="testCondition">  //������ �����ϸ� ���� - ���� �� �ۼ��� �� �ֽ��ϴ�.
    	   		~
    	   	</c:when>
    	   	
    	   	<c:when test="testCondition">
    	   		~
    	   	</c:when>
    	   	
    	   	<c:otherwise> //������ �������� ������ ����
    	   		~
    	   	</c:otherwise>
    	   </c:choose>
     --%>
      <c:choose>
      	<c:when test="${5+10==50}">
			<h3>5+10�� 50�̴�.</h3>
		</c:when>
		
		<c:otherwise>
			<h3>5+10�� 50�� �ƴϴ�.</h3>	
		</c:otherwise>	
	</c:choose>
	
	
	 <c:set var="a" value="3" />
	 
	<c:choose> 
    <c:when test="${a == 1}">
        <h3>1�Դϴ�.</h3>
    </c:when>
    <c:when test="${a == 2}">
        <h3>2�Դϴ�.</h3>
    </c:when>
    <c:otherwise>
        <h3>1�Ǵ� 2�� �ƴմϴ�.</h3>
        </c:otherwise>
    </c:choose>
	

    <c:set var="a" value="${a + 1}" />

    <h3>
		<c:out value="${a}"/>
	</h3>    
</body>
</html>