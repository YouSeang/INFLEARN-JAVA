<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<h2>forward_action.jsp 에서 호출</h2>
<hr>
<jsp:forward page="test5-1.jsp">
	<jsp:param name="email" value="test@test.net" />
	<jsp:param name="tel" value="000-0000-0000" />
</jsp:forward>
</body>
</html>