<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α��� ȭ��</title>

</head>
<body>



<a href="/main"><h3>���� ȭ�� ����</h3></a>
		<br>
		<p><h3>�α���</h3>
		<form name="logininfo" method="post" action="/loginservice/loginck">
        <p>���̵� : <input type="text" id="userID" name="userID" autocomplete="on" placeholder="���̵� �Է��ϼ���" autofocus></p>
        <p>��� ��ȣ : <input type="password" id="userPWD" name="userPWD" autocomplete="off" placeholder="��� ��ȣ�� �Է��ϼ���"></p>
        <input type="submit" value="�α���">
        </form>
        </p>
        <%
        String ck=request.getParameter("ck");
        if(ck!=null&&ck.equals("-1")){
        	out.println("<br>");
            out.println("<font color='red' size='5'>���̵�� ��й�ȣ�� Ȯ���� �ּ���.</font>");
        }
        %>
</body>
</html>