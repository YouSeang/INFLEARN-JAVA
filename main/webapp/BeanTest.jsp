<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<jsp:useBean id="beantest" class="test.BeanTest" scope="page"/>
�ڹٺ� ��ü�� ��������� ���� �����ϴ� ���� �ƴ϶� setter ȣ��
<jsp:setProperty name="beantest" property="name" value="Batman!"/> 

<html>
<head>
<meta charset="EUC-KR">
<title>JavaBean Test</title>
</head>
<body>
<b>�ڹٺ� ��� ����</b>
<%-- <%
	beantest.setName("Superman");
%> --%>
<h3><%=beantest.getName() %></h3>
<h3><jsp:getProperty name="beantest" property="name"/></h3>
</body>
</html>