<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
<h1>������ �Ӽ� �׽�Ʈ</h1>
<%
request.setCharacterEncoding("euc-kr");
//�̸��� ���̵� getParameter() �޼ҵ带 ����ؼ� �޾ƿ�
String id = request.getParameter("id");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
%>
<h3><%=id %>���� ������ ��� ����Ǿ����ϴ�.</h3>

<%-- <jsp:include page="Test3.jsp">
	<jsp:param name="id" value="<%=id %>" />
	<jsp:param name="email" value="<%=email %>" />
	<jsp:param name="mobile" value="<%=mobile %>" />
</jsp:include> --%>

<%-- <jsp:forward page="Test3.jsp">
		<jsp:param value="<%=id %>" name="id"/>
		<jsp:param value="<%=email %>" name="email"/>
		<jsp:param value="<%=mobile %>" name="mobile"/>
	</jsp:forward> --%>

<form method=post action="Test3.jsp">
		 <input type="hidden" name="id" value="<%= id%>">
   	 	 <input type="hidden" name="email" value="<%=email%>">
   	 	 <input type="hidden" name="mobile" value="<%=mobile%>">
		<input type="submit" value="������ ������ �ѱ��!" style="width:10%">
	</form>


</body>
</html>