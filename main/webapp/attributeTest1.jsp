<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
// 이름과 아이디를 getParameter() 메소드를 사용해서 받아옴
String name = request.getParameter("name");
String id = request.getParameter("id");
// 받아온 파라미터 값이 있는 경우, application영역에 setAttribute()메소드를 통해 저장함
if(name!=null && id!=null) {
	application.setAttribute("name", name);
	application.setAttribute("id", id);
}%>
<h3><%=name %>님 반갑습니다.<br><%=name %>님의 아이디는 <%=id %>입니다.</h3>
<%
// application에 등록된 속성들을 getAttribute()메소드를 통해 읽어들임
name = (String)application.getAttribute("name");
id = (String)application.getAttribute("id");
%>
<h3><%=name %>님 반갑습니다.<br><%=name %>님의 아이디는 <%=id %>입니다.</h3>
<form action="attributeTest2.jsp" method="post">
<table border="1px">
<tr><td colspan="2">Session 영역에 저장할 내용들</td></tr>
<tr><td>이메일</td><td><input type="text" name="email"></td></tr>
<tr><td>집주소</td><td><input type="text" name="address"></td></tr>
<tr><td>전화번호</td><td><input type="text" name="tel"></td></tr>
<tr><td colspan="2"><input type="submit" value="전송"></td></tr>
</table>
</form>
</body>
</html>