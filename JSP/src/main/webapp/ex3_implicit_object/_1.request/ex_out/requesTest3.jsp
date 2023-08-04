<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
 <%-- �Ķ���� �ѱ� ó���� ����  --%>
  <%
  	request.setCharacterEncoding("euc-kr");
  %>
<html>
<head>
  <title>Request Test (requestTest1_Form2.jsp)</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <h3>�̰��� ��û �����Դϴ�.</h3>
    <form action="table">
      <table class="table">
        <tr>
          <td>�̸�</td>
          <td>
            <%-- name �Ķ���� ���� ���ͼ� ǥ�������� ����մϴ�. --%>
            <%= request.getParameter("name") %>
          </td>
        </tr>
        <tr>
          <td>����</td>
          <td>
            <%
            if (request.getParameter("gender").equals("male")) 
            	{
            		out.print("����");
            	} else {
            		out.print("����");
            	}
            %>
          </td>
        </tr>
        <tr>
          <td>���</td>
          <td>
            <%-- hobby��� �Ű������� ���� ���� ���� �� �����Ƿ�,
            getParameterValues() �޼��带 ����Ͽ� String �迭�� ���� �޾ƿɴϴ�. --%>
            <%
            String[] hobbies = request.getParameterValues("hobby");
            for (String hobby : hobbies) {
	          	out.print(hobby + " ");
            }
            %>
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>
