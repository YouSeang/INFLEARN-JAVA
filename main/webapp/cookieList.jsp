<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
request.setCharacterEncoding("euc-kr");
String userId = request.getParameter("user_id");
String userPwd = request.getParameter("user_pw");
String product1Quantity = request.getParameter("quantity_product1");
String product2Quantity = request.getParameter("quantity_product2");
String product3Quantity = request.getParameter("quantity_product3");

session.setAttribute("product1Quantity", product1Quantity);
session.setAttribute("product2Quantity", product2Quantity);
session.setAttribute("product3Quantity", product3Quantity);

if(userId!=null && userPwd!=null) {
	session.setAttribute("user_id", userId);
	session.setAttribute("user_pw", userPwd);
}

String sessionUserId = (String) session.getAttribute("user_id"); // 세션에서 사용자 아이디 가져오기

// 로그인 여부 확인
if(sessionUserId == null) {
    // 로그인되지 않은 경우 alert으로 메시지 표시 후 로그인 페이지로 이동
    response.setContentType("text/html;charset=EUC-KR");
    out.println("<script>alert('로그인이 필요합니다.'); location.href='login.jsp';</script>");
} else {
    // 로그인되어 있으면 주문 페이지 표시
    
    
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<script>
//수량 증가
function increaseQuantity(productId) {
    var quantityElement = document.getElementById("quantity_" + productId);
    var quantity = parseInt(quantityElement.value);
    quantityElement.value = quantity + 1;
    // hidden input의 값을 업데이트
    document.getElementById("quantity_product" + productId).value = quantityElement.value;
    // 이벤트의 기본 동작 중지
    event.preventDefault();
}

// 수량 감소
function decreaseQuantity(productId) {
    var quantityElement = document.getElementById("quantity_" + productId);
    var quantity = parseInt(quantityElement.value);
    if (quantity > 1) {
        quantityElement.value = quantity - 1;
        // hidden input의 값을 업데이트
        document.getElementById("quantity_product" + productId).value = quantityElement.value;
    }
    // 이벤트의 기본 동작 중지
    event.preventDefault();
}

// form 제출 함수
function submitForm() {
    // 각 제품의 수량을 hidden input으로 추가
    document.getElementById("quantity_product1").value = document.getElementById("quantity_product1").value;
    document.getElementById("quantity_product2").value = document.getElementById("quantity_product2").value;
    document.getElementById("quantity_product3").value = document.getElementById("quantity_product3").value;
    document.forms["orderForm"].submit();
}
    
// 로그아웃 함수
function logout() {
    if (confirm("로그아웃 하시겠습니까?")) {
        location.href='Logout.jsp';
    }
}
</script>

<title>주문</title>
<style>
    .product-row {
        display: flex;
        justify-content: center;
    }
    .product {
        margin: 0 10px;
    }
</style>
</head>
<center>
<body>
<h2>쿠키닷 주문</h2>
<hr>

<div> 
<%= sessionUserId %> 님 안녕하세요? 무엇을 주문하시겠습니까?
<!-- 로그아웃 버튼 -->
<button onclick="logout()">로그아웃</button>
</div>

<div class="product-row">
    <div class="product">
        <h3>일반 쿠키</h3>
        <img src="image/AmericanCookie.png" alt="일반 쿠키 이미지" height="200px" width="200px">
        <div>가격: 5,000원</div>
        <div>수량: 
            <input type="number" id="quantity_product1" value="1" min="1">
            <button onclick="increaseQuantity('product1')">+</button>
            <button onclick="decreaseQuantity('product1')">-</button>
        </div>
    </div>
    
    <div class="product">
        <h3>초코 쿠키</h3>
        <img src="image/DoubleChocoCookie.png" alt="일반 쿠키 이미지" height="200px" width="200px">
        <div>가격: 5,500원</div>
        <div>수량: 
            <input type="number" id="quantity_product2" value="1" min="1">
            <button onclick="increaseQuantity('product2')">+</button>
            <button onclick="decreaseQuantity('product2')">-</button>
        </div>
    </div>
    
    <div class="product">
        <h3>오트밀 쿠키</h3>
        <img src="image/OtmealCookie.png" alt="일반 쿠키 이미지" height="200px" width="200px">
        <div>가격: 5,500원</div>
        <div>수량: 
            <input type="number" id="quantity_product3" value="1" min="1">
            <button onclick="increaseQuantity('product3')">+</button>
            <button onclick="decreaseQuantity('product3')">-</button>
        </div>
    </div>
</div><br>
<form id="orderForm" name="orderForm" action="cookieCart.jsp" method="post">
    <!-- 각 제품의 수량을 hidden input으로 추가 -->
    <input type="hidden" name="quantity_product1" id="quantity_product1" value="<%= session.getAttribute("product1Quantity") %>">
    <input type="hidden" name="quantity_product2" id="quantity_product2" value="<%= session.getAttribute("product2Quantity") %>">
    <input type="hidden" name="quantity_product3" id="quantity_product3" value="<%= session.getAttribute("product3Quantity") %>">
    <input type="button" value="장바구니 담기" onclick="submitForm()">
</form>

</body>
</center>

</html>
<%
}
%>
