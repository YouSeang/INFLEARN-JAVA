<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
<h1>����� �׽�Ʈ3 �������Դϴ�.</h1>
<%
request.setCharacterEncoding("euc-kr");
//�̸��� ���̵� getParameter() �޼ҵ带 ����ؼ� �޾ƿ�
String id = request.getParameter("id");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
%>

<h3><%=request.getParameter("id") %>�� ȯ���մϴ�.</h3>
EMail: <%=request.getParameter("email") %><br>
Mobile: <%=request.getParameter("mobile") %>

</body>
</html>