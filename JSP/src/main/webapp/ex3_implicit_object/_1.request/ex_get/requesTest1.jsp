<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
 
<!DOCTYPE html>
<html>
<head>
  <title>Request Test (requestTest1_Form.jsp)</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <style>
    .container {
      width: 70%;
      text-align: center;
    }
  </style>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
</head>
<body>
  <div class="container">
    <h3>�̰��� ��û �����Դϴ�.</h3>
    <form action="table">
      <table class="table">
        <tr>
          <td>�̸�</td>
          <td>
            <%-- name �Ű������� ���� ǥ�������� �޾ƿɴϴ�. --%>
            <%= request.getParameter("name") %>
          </td>
        </tr>
        <tr>
          <td>����</td>
          <td>
            <%
            if (request.getParameter("gender").equals("male")) {
            %>
              ����
            <%
            } else {
            %>
              ����
            <%
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
            %>
              <%= hobby %>
            <%
            }
            %>
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>
