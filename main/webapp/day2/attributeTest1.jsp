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
// �̸��� ���̵� getParameter() �޼ҵ带 ����ؼ� �޾ƿ�
String name = request.getParameter("name");
String id = request.getParameter("id");
// �޾ƿ� �Ķ���� ���� �ִ� ���, application������ setAttribute()�޼ҵ带 ���� ������
if(name!=null && id!=null) {
	application.setAttribute("name", name);
	application.setAttribute("id", id);
}%>
<h3><%=name %>�� �ݰ����ϴ�.<br><%=name %>���� ���̵�� <%=id %>�Դϴ�.</h3>
<%
// application�� ��ϵ� �Ӽ����� getAttribute()�޼ҵ带 ���� �о����
name = (String)application.getAttribute("name");
id = (String)application.getAttribute("id");
%>
<h3><%=name %>�� �ݰ����ϴ�.<br><%=name %>���� ���̵�� <%=id %>�Դϴ�.</h3>
<form action="attributeTest2.jsp" method="post">
<table border="1px">
<tr><td colspan="2">Session ������ ������ �����</td></tr>
<tr><td>�̸���</td><td><input type="text" name="email"></td></tr>
<tr><td>���ּ�</td><td><input type="text" name="address"></td></tr>
<tr><td>��ȭ��ȣ</td><td><input type="text" name="tel"></td></tr>
<tr><td colspan="2"><input type="submit" value="����"></td></tr>
</table>
</form>
</body>
</html>