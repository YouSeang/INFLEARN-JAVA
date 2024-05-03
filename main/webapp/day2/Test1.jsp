<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
<h1>영역과 속성 테스트</h1>
<form action="Test2.jsp" method="post">
<table border="1px">
<tr><td colspan="2">영역에 저장할 내용들</td></tr>
<tr><td>아이디</td><td><input type="text" name="id"></td></tr>
<tr><td>이메일</td><td><input type="text" name="email"></td></tr>
<tr><td>전화번호</td><td><input type="text" name="mobile"></td></tr>
<tr><td colspan="2"><input type="submit" value="전송"></td></tr>
</table>

</form>
</body>
</html>