<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search.jsp</title>
   <link href="css/ch03-5.css" type="text/css" rel="stylesheet" >
</head>

<body>
  <!-- http://loocalhost:8088/jsp/search -->
  <form action='search'>
   <b>�˻��� �μ� ��ȣ�� �Է��ϼ���</b><br>
   <input type='text' name='deptno' required pattern="[0-9]{2}">
   <input type='submit' value='����'>
  </form>
  
</body>
</html>
