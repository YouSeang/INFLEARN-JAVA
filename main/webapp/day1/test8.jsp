<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@page import="java.util.Calendar" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<h2>구구단</h2>
<table border="1px" width="800px">
<tr>
<td></td>
<% for(int i=2; i<10; i++) {%>
<td><%=i %>단</td>
<%} %>
</tr>

<% for(int j=1; j<10; j++){%>
<tr>
<td><%= j %></td>
<% for(int k = 2; k<10; k++) { %>
	<td><%= k %> * <%= j %> = <%= j*k %></td>
	<%} %>
</tr>
<%} %>
</table>

</body>
</html>
