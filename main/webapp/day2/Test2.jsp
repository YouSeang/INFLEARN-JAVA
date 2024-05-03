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
<%
request.setCharacterEncoding("euc-kr");
//이름과 아이디를 getParameter() 메소드를 사용해서 받아옴
String id = request.getParameter("id");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
%>
<h3><%=id %>님의 정보가 모두 저장되었습니다.</h3>

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
		<input type="submit" value="데이터 최최종 넘기기!" style="width:10%">
	</form>


</body>
</html>