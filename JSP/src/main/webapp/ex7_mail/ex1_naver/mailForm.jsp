<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.container {
    width: 50%;
}

label {
    font-weight: bold;
}

fieldset {
    border: 1px solid #9e9e9e;
    padding: 50px;
}

legend {
    text-align: center;
    width: auto;
    padding: 10px;
}
</style>

<meta charset="UTF-8">
<title>���� ������ �� �ۼ�</title>
</head>
<body>
    <div class="container mt-5">
        <form class="form-horizontal" method="post" action="mailSend.jsp">
            <fieldset>
                <legend>
                    <strong>�����ۼ�</strong>
                </legend>
            
                <div class="form-group">
                    <label class="control-label" for="sender"> ������ �ּ� <font color="red">*</font></label>
                    <input type="text" name="sender" id="sender" class="form-control" placeholder="������ ���� �̸��� �ּҸ� �Է��ϼ���"  value = "<%=ex7_java_mail.Myinfo.naverid%>@naver.com" required>
                </div>
                
                <div class="form-group">
                    <label class="control-label" for="receiver"> �޴� �ּ� <font color="red">*</font></label>
                    <input type="email" name="receiver" id="receiver" class="form-control" placeholder="�޴� ���� �̸��� �ּҸ� �Է��ϼ���" required>
                </div>
                
                <div class="form-group">
                    <label class="control-label" for="subject"> �������� <font color="red">*</font></label>
                    <input type="text" name="subject" id="subject" class="form-control" placeholder="�̸����� ������ �Է��ϼ���" required>
                </div>
                
                <div class="form-group">
                    <label class="control-label" for="content"> �����Է� <font color="red">*</font></label>
                    <textarea name="content" id="content" class="form-control" rows="5" required></textarea>
                </div>
                
                <!-- ��ư ���� -->
                <div class = "form-actions">
                <input type = "submit" class = "btn btn-primary" value = "���Ϻ�����" > 
                <input type = "reset" class = "btn btn-danger" value = "�ٽ��ۼ�" > 
                </div>
                
            </fieldset>
        </form>
    </div>
</body>
</html>