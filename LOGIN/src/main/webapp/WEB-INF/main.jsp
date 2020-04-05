<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>메인 화면</title>

</head>
<body>
<b><font size="5" color="skyblue">메인화면입니다.</font></b><br><br>
	어서 오세요.
	<br>
	

	<%
	if(session.getAttribute("sessionID")==null){
	%>	
	<h4>사용 가능한 서비스</h4>
	<a href="/loginservice/loginform">1. 로그인</a>
	
	<%	
	}else{
	%>	
	<h2>
	<font color="red"><%=session.getAttribute("sessionID") %>(<%=session.getAttribute("sessionNAME") %> )</font>
         님 로그인되었습니다.
    </h2><br>
    <h3>사용 가능한 서비스</h3>
   <a href="/loginservice/logout">1. 로그아웃</a>
	<%}%>
	
	<input type="button" id="getinfo" onclick='userinfo()' value="아이디 불러오기" >
	<script>
	function userinfo(){
		$.ajax({
			type:"GET",
			url:"http://localhost:8080/loginservice/getinfo",
			success : function(data){
			 alert("회원 아이디 : "+data);
				
			},
			error : function(request,status,error){
      		  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
      		}
			
		});
		}
	
	
	</script>
	<br>
	<a href="#">2. 게시판</a>
	<br>
	3. 할수있다면 3개까지
</body>
</html>