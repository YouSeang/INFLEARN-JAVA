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

<h2>���� ���ε� ��</h2>
<hr>

<form action="fileUpload.jsp" method = "post" enctype="multipart/form-data">
<table border="1px">
<tr><td colspan="2" align="center">���� ���ε� ��</td></tr>
<tr>
<td>�ø� ��� :</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>���� :</td>
<td><input type="text" name="subject"></td>
</tr>
<tr>
<td>���ϸ�1 :</td>
<td><input type="file" name="filename1"></td>
</tr>
<tr>
<td>���ϸ�2 :</td>
<td><input type="file" name="filename2"></td>
</tr>
<tr><td colspan="2" align="center"><input type="submit" value="����"></td></tr>
</table>
</form>
</body>
</center>
</html>