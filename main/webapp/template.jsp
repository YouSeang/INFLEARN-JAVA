<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 페이지(레이아웃) 파일</title>
</head>
<body>

<% String page1 = request.getParameter("Page");
	if(page1 == null){
		page1="newitem.jsp";
		}
%>

<center>
<form name="f1" method="get">
	<table border="1" width="1000" height="550">
		<tr>
			<td colspan="2" height="50"><jsp:include page="top.jsp"/></td>
		</tr>
		<tr>
			<td width="100px"><jsp:include page="left.jsp"/></td>
			<td><jsp:include page='<%=page1 %>'/></td>
		</tr>
		<tr>
			<td colspan="2" height="50"><jsp:include page="bottom.jsp"/></td>
		</tr>
	</table>
	</form>
</center>
</body>
</html>