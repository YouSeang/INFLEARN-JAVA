<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<jsp:useBean id="beantest2" class="test.BeanTest2" scope="request"/>
<jsp:setProperty property="*" name="beantest2"/>

<html>
<head>
<meta charset="UTF-8">
<title>회원가입 정보</title>
</head>
<center>
<body>
<h2>회원정보</h2>
<hr>
<b>ID: <jsp:getProperty name="beantest2" property="id"/></b><br><br>
<b>이름: <jsp:getProperty name="beantest2" property="name"/></b><br><br>
<b>생년월일: <jsp:getProperty name="beantest2" property="birth"/></b><br><br>
<b>취미: 
<%
String[] hobby = beantest2.getHobby();
for(int i=0;i<hobby.length;i++){
if(hobby[i] != null){
out.write(hobby[i]+"\n");
}
}%>
</b><br><br>
<b>자기소개: <br><jsp:getProperty name="beantest2" property="introduction"/></b>
</body>
</center>
</html>