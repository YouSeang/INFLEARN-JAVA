<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<h2>������ �Ӽ� ������</h2>
<%
request.setCharacterEncoding("euc-kr");
// �̸���,�ּ�,��ȭ��ȣ�� getParameter() �޼ҵ带 ����� �޾ƿ�
String email=request.getParameter("email");
String address=request.getParameter("address");
String tel=request.getParameter("tel");

// �޾ƿ� �Ķ���� ������ ���� ��� session ������ setAttribute()�޼ҵ带 ����� ���
session.setAttribute("email",email);
session.setAttribute("address",address);
session.setAttribute("tel",tel);

// application ������ ��ϵ� �Ӽ����� getAttribute()�޼ҵ带 ����� �о�鿴��.
String name=(String)application.getAttribute("name");
%>

<h3><%=name %>���� ������ ��� ����Ǿ��ֽ��ϴ�.</h3>
<a href="attributeTest3.jsp">Ȯ���Ϸ� ����</a>

</body>
</html>