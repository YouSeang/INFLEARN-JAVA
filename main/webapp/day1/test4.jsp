<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<Center>
<h2>include 지시어 테스트1</h2>
<hr>
<h3><%@include file="test4-1.jsp" %></h3>
<%@include file="test4-2.jsp" %>
<%@include file="test4-3.jsp" %>
<%@include file="calc.jsp" %>
</Center>
</body>
</html>