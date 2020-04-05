<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인 화면</title>

</head>
<body>



<a href="/main"><h3>메인 화면 가기</h3></a>
		<br>
		<p><h3>로그인</h3>
		<form name="logininfo" method="post" action="/loginservice/loginck">
        <p>아이디 : <input type="text" id="userID" name="userID" autocomplete="on" placeholder="아이디를 입력하세요" autofocus></p>
        <p>비밀 번호 : <input type="password" id="userPWD" name="userPWD" autocomplete="off" placeholder="비밀 번호를 입력하세요"></p>
        <input type="submit" value="로그인">
        </form>
        </p>
        <%
        String ck=request.getParameter("ck");
        if(ck!=null&&ck.equals("-1")){
        	out.println("<br>");
            out.println("<font color='red' size='5'>아이디와 비밀번호를 확인해 주세요.</font>");
        }
        %>
</body>
</html>