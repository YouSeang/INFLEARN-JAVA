<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
session.removeAttribute("user_id");
session.removeAttribute("user_pw");

response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α׾ƿ�</title>
</head>
<body>

</body>
</html>