<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%-- ���� ���� �Ʒ��� "upload" ������ �����ϰ� �����ϼ���. --%>
<%@ page language="java" import="com.oreilly.servlet.MultipartRequest" %>

<%-- ���� ���ε带 ���� MultipartRequest ��ü�� �����ɴϴ�. --%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%-- �ߺ� ���� �̸��� ó���ϱ� ���� DefaultFileRenamePolicy ��ü�� �����ɴϴ�. --%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
String uploadPath = application.getRealPath("upload");
out.print("upload ���: " + uploadPath);
	
	int size = 10*1024*1024; //���� �ִ� ũ�⸦ 10MB�� �����մϴ�.
	String name = "";
	String subject = "";
	String systemName1 = "";
	String systemName2 = "";
	String origfileName1 = "";
	String origfileName2 = "";
	
	try{
		/* ���ε带 ����ϴ� �κ��Դϴ�.
		1. ù ��° ����(request) : ������ ������ ���� ��� ���� request��ü�� ������ �ݴϴ�.
		2. �� ��° ����(uploadPath) : ���ε�� ������ ��ġ �Դϴ�.
		3. �� ��° ����(size) : ���ε� �� ũ���̸� ���� ũ�⺸�� ũ�� Exception�߻��մϴ�.
		4. �� ��° ����("euc-kr") : ���� �̸��� �ѱ��� ��� ó���ϴ� �κ��Դϴ�.
		5. �ټ� ��° ���� : �Ȱ��� ������ ���ε� �� ��� �ߺ����� �ʵ��� �ڵ����� �����̸��� ��ȯ���ִ� ����� �մϴ�.
		
		*/
		 MultipartRequest multi = new MultipartRequest(request,
                 uploadPath,
                 size,
                 "euc-kr",
                 new DefaultFileRenamePolicy());
		
	  name = multi.getParameter("name");
	    subject = multi.getParameter("subject");

	    // name=fileName1 �Է� ������ ���ε�� ������ �ý��� ���� �̸��� �����ɴϴ�.
	    // �ߺ� ���� �̸��� ��� ���� �̸� �ڿ� ��ȣ�� �߰��Ͽ� ó���մϴ�.
	    systemName1 = multi.getFilesystemName("fileName1");

	    // name=fileName1 �Է� ������ ���ε�� ������ ���� ���� �̸��� �����ɴϴ�.
	    origfileName1 = multi.getOriginalFileName("fileName1");

	    systemName2 = multi.getFilesystemName("fileName2");
	    origfileName2 = multi.getOriginalFileName("fileName2");

	} catch(Exception e) {
	    e.printStackTrace();
	    out.print("���� �Դϴ�.");
	}
	%>
<html>
<head>
 <title> ���� ���ε� </title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<form name="filecheck" action="fileCheck2.jsp" method="post">
		<input type="hidden" name="name" 		value="<%=name %>">
		<input type="hidden" name="subject" 		value="<%=subject %>">
		
		<input type="hidden" name="systemName1" 	value="<%=systemName1 %>">
		<input type="hidden" name="systemName2" 	value="<%=systemName2 %>">
		
		<input type="hidden" name="origfileName1"	value="<%=origfileName1 %>">
		<input type="hidden" name="origfileName2"	value="<%=origfileName2 %>">
		<input type="hidden" name="uploadPath" 		value="<%=uploadPath %>">
		<input type="submit" value="���ε� Ȯ�� �� �ٿ�ε� ������ �̵�" 		class="btn btn-info">
		</form>
</div>
</body>
</html>	

