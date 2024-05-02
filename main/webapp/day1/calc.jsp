<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
Calendar c=Calendar.getInstance();
int hour=c.get(Calendar.HOUR_OF_DAY);
int minute=c.get(Calendar.MINUTE);
int second=c.get(Calendar.SECOND);
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Servlet Test</title>
</head>
<body>
<center>
<h1>계산기</h1>
<hr>
<form name=form1 action=CalcServlet method=post>
<input type="text" name="num1" width=200 size="5">
<select name="operator">
	<option selected>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
</select>
<input type="text" name="num2" width=200 size="5">
<input type="submit" value="계산" name="B1">
<input type="reset" value="다시입력" name="B2">
</form>
</center>

</body>
</html>