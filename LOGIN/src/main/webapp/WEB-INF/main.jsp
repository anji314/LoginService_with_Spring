<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ȭ��</title>

</head>
<body>
<b><font size="5" color="skyblue">����ȭ���Դϴ�.</font></b><br><br>
	� ������.
	<br>
	

	<%
	if(session.getAttribute("sessionID")==null){
	%>	
	<h4>��� ������ ����</h4>
	<a href="/loginservice/loginform">1. �α���</a>
	
	<%	
	}else{
	%>	
	<h2>
	<font color="red"><%=session.getAttribute("sessionID") %>(<%=session.getAttribute("sessionNAME") %> )</font>
         �� �α��εǾ����ϴ�.
    </h2><br>
    <h3>��� ������ ����</h3>
   <a href="/loginservice/logout">1. �α׾ƿ�</a>
	<%}%>
	
	<input type="button" id="getinfo" onclick='userinfo()' value="���̵� �ҷ�����" >
	<script>
	function userinfo(){
		$.ajax({
			type:"GET",
			url:"http://localhost:8080/loginservice/getinfo",
			success : function(data){
			 alert("ȸ�� ���̵� : "+data);
				
			},
			error : function(request,status,error){
      		  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
      		}
			
		});
		}
	
	
	</script>
	<br>
	<a href="#">2. �Խ���</a>
	<br>
	3. �Ҽ��ִٸ� 3������
</body>
</html>