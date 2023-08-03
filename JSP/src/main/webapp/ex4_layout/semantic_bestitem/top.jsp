<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<style>
    .bg-dark {
        background-color: #28a745!important;
    }

    .navbar-dark .navbar-nav .nav-link {
        color: rgb(255,255,255);
    }
</style>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="#">�׼���ũ</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
    	 data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <!--  flex-row-reverse �߰� - ������ ������ �پ�� -->
    <div class="collapse navbar-collapse flex-row-reverse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <%
	            String id = (String) session.getAttribute("id");
	            if (id != null && !id.equals("")) {
            %>
            <li class="nav-item"><a class="nav-link"><%=id %> ���� �α��� �Ǿ����ϴ�.</a></li>
            <li class="nav-item"><a class="nav-link" href="logout.jsp"> �α׾ƿ�</a></li>
            <% 
            	} else {
            %>
             <li class="nav-item"><a class="nav-link" href="login.jsp">�α���</a></li>
            <li class="nav-item"><a class="nav-link" href="join.jsp">ȸ������</a></li>
            
            <%
            	}
            %>
        </ul>
    </div>
</nav>
