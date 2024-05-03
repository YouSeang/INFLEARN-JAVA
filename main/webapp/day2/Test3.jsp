<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
<h1>여기는 테스트3 페이지입니다.</h1>
<%
request.setCharacterEncoding("euc-kr");
//이름과 아이디를 getParameter() 메소드를 사용해서 받아옴
String id = request.getParameter("id");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
%>

<h3><%=request.getParameter("id") %>님 환영합니다.</h3>
EMail: <%=request.getParameter("email") %><br>
Mobile: <%=request.getParameter("mobile") %>

</body>
</html>