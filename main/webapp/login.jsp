<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
</head>
<center>
<body>

<h2>��Ű�� LOGIN</h2>
<hr>

<%
if (session.getAttribute("UserId") == null) {

%>

<script>
function validateForm(form) {
	if(!form.user_id.value) {
		alert("���̵� �Է��ϼ���.");
		return false;
	}
	if(form.user_pw.value == "") {
		alert("�н����带 �Է��ϼ���.");
		return false;
	}
}
</script>


<form action="cookieList.jsp" method="post" name="loginFrm"
onsubmit="return validateForm(this);">
���̵� : <input type="text" name="user_id"><br>
�н����� : <input type="password" name="user_pw"><br>
<input type="submit" value="Login">
</form>

<%
}else {
%>
	<%= session.getAttribute("UserName") %>ȸ����, �α����ϼ̽��ϴ�.<br>
	<a href="logout.jsp">[�α׾ƿ�]</a>
<% }
%>

</body>
</center>
</html>