<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String name = (String)application.getAttribute("name");
String id = (String)application.getAttribute("id");
String email = (String)session.getAttribute("email");
String address = (String)session.getAttribute("address");
String tel = (String)session.getAttribute("tel");
%>
<table border="1px">
<tr><td colspan="2">Application 영역에 저장할 내용들</td></tr>
<tr><td>이름</td><td><%=name %></td></tr>
<tr><td>아이디</td><td><%=id %></td></tr>
</table>
<br>
<table border="1px">
<tr><td colspan="2">Session 영역에 저장할 내용들1</td></tr>
<tr><td>이메일</td><td><%=email %></td></tr>
<tr><td>집주소</td><td><%=address %></td></tr>
<tr><td>전화번호</td><td><%=tel %></td></tr>
</table>
<br>
<table border="1px">
<tr><td colspan="2">Session 영역에 저장할 내용들2</td></tr>
<%
Enumeration e = session.getAttributeNames();
while(e.hasMoreElements()) {
	String attributeName = (String)e.nextElement();
	String attributeValue = (String)session.getAttribute(attributeName);
	%>
	<tr><td><%=attributeName %></td><td><%=attributeValue %></td></tr>
<%} %>
</table>
</body>
</html>