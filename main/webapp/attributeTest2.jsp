<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<h2>영역과 속성 데이터</h2>
<%
request.setCharacterEncoding("euc-kr");
// 이메일,주소,전화번호를 getParameter() 메소드를 사용해 받아옴
String email=request.getParameter("email");
String address=request.getParameter("address");
String tel=request.getParameter("tel");

// 받아온 파라미터 값들이 있을 경우 session 영역에 setAttribute()메소드를 사용해 등록
session.setAttribute("email",email);
session.setAttribute("address",address);
session.setAttribute("tel",tel);

// application 영역에 등록된 속성들을 getAttribute()메소드를 사용해 읽어들였다.
String name=(String)application.getAttribute("name");
%>

<h3><%=name %>님의 정보가 모두 저장되어있습니다.</h3>
<a href="attributeTest3.jsp">확인하러 가기</a>

</body>
</html>