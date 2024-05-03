<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<center>
<body>

<h2>쿠키닷 LOGIN</h2>
<hr>

<%
if (session.getAttribute("UserId") == null) {

%>

<script>
function validateForm(form) {
	if(!form.user_id.value) {
		alert("아이디를 입력하세요.");
		return false;
	}
	if(form.user_pw.value == "") {
		alert("패스워드를 입력하세요.");
		return false;
	}
}
</script>


<form action="cookieList.jsp" method="post" name="loginFrm"
onsubmit="return validateForm(this);">
아이디 : <input type="text" name="user_id"><br>
패스워드 : <input type="password" name="user_pw"><br>
<input type="submit" value="Login">
</form>

<%
}else {
%>
	<%= session.getAttribute("UserName") %>회원님, 로그인하셨습니다.<br>
	<a href="logout.jsp">[로그아웃]</a>
<% }
%>

</body>
</center>
</html>