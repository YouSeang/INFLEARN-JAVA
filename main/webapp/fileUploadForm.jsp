<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<center>
<body>

<h2>파일 업로드 폼</h2>
<hr>

<form action="fileUpload.jsp" method = "post" enctype="multipart/form-data">
<table border="1px">
<tr><td colspan="2" align="center">파일 업로드 폼</td></tr>
<tr>
<td>올린 사람 :</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>제목 :</td>
<td><input type="text" name="subject"></td>
</tr>
<tr>
<td>파일명1 :</td>
<td><input type="file" name="filename1"></td>
</tr>
<tr>
<td>파일명2 :</td>
<td><input type="file" name="filename2"></td>
</tr>
<tr><td colspan="2" align="center"><input type="submit" value="전송"></td></tr>
</table>
</form>
</body>
</center>
</html>