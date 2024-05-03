<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script>
    function validateForm() {
        // 아이디 중복 검사 및 null 값 검사
        var id = document.getElementsByName("id")[0].value.trim();
        if (id === "") {
            alert("아이디를 입력하세요.");
            return false;
        }
        // 여기에 아이디 중복 검사 로직을 추가할 수 있습니다.
        
        // 비밀번호 검사
        var password = document.getElementsByName("password")[0].value.trim();
        if (password === "" || !/^[a-zA-Z0-9]{4,8}$/.test(password)) {
            alert("비밀번호는 4자리 이상 8자리 이하의 숫자, 영문 조합이어야 합니다.");
            return false;
        }
        // 여기에 생년월일 및 추가 입력 정보의 유효성 검사 로직을 추가할 수 있습니다.
        
        return true; // 유효한 경우에만 폼 제출
    }
</script>
</head>
<center>
<body>
<h2>회원가입</h2>
<form action="joininfo.jsp" method="post" onsubmit="return validateForm()">
<hr>
<table border="1px" width="700px">
<tr><td colspan="2" style="text-align: center;">기본입력 정보</td></tr>
<tr><td style="text-align: center;">Id</td><td><input type="text" name="id"> 영문, 영문+숫자로만 입력하세요.</td></tr>
<tr><td style="text-align: center;">Password</td><td><input type="password" name="password"> 4자리~8자리의 숫자,영문,숫자+영문으로 입력하세요.</td></tr>
<tr><td style="text-align: center;">이름</td><td><input type="text" name="name"></td></tr>
<tr><td style="text-align: center;">생년월일</td><td><input type="text" name="birth"> ex)930910</td></tr>
<tr>
    <td style="text-align: center;">취미</td>
    <td>
        <input type="checkbox" name="hobby" value="독서">독서&nbsp;
        <input type="checkbox" name="hobby" value="등산">등산&nbsp;
        <input type="checkbox" name="hobby" value="요리">요리&nbsp;
        <input type="checkbox" name="hobby" value="수영">수영&nbsp;
    </td>
</tr>
<tr><td colspan="2" style="text-align: center;">추가입력 정보</td></tr>
<tr><td style="text-align: center;">자기소개</td><td><textarea name="introduction" rows="5" cols="80"></textarea></td>
</table><br>
<input type="submit" value="전송">
</form>
<tr>
</body>
</center>
</html>