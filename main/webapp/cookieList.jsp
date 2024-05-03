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

String sessionUserId = (String) session.getAttribute("user_id"); // ���ǿ��� ����� ���̵� ��������

// �α��� ���� Ȯ��
if(sessionUserId == null) {
    // �α��ε��� ���� ��� alert���� �޽��� ǥ�� �� �α��� �������� �̵�
    response.setContentType("text/html;charset=EUC-KR");
    out.println("<script>alert('�α����� �ʿ��մϴ�.'); location.href='login.jsp';</script>");
} else {
    // �α��εǾ� ������ �ֹ� ������ ǥ��
    
    
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<script>
//���� ����
function increaseQuantity(productId) {
    var quantityElement = document.getElementById("quantity_" + productId);
    var quantity = parseInt(quantityElement.value);
    quantityElement.value = quantity + 1;
    // hidden input�� ���� ������Ʈ
    document.getElementById("quantity_product" + productId).value = quantityElement.value;
    // �̺�Ʈ�� �⺻ ���� ����
    event.preventDefault();
}

// ���� ����
function decreaseQuantity(productId) {
    var quantityElement = document.getElementById("quantity_" + productId);
    var quantity = parseInt(quantityElement.value);
    if (quantity > 1) {
        quantityElement.value = quantity - 1;
        // hidden input�� ���� ������Ʈ
        document.getElementById("quantity_product" + productId).value = quantityElement.value;
    }
    // �̺�Ʈ�� �⺻ ���� ����
    event.preventDefault();
}

// form ���� �Լ�
function submitForm() {
    // �� ��ǰ�� ������ hidden input���� �߰�
    document.getElementById("quantity_product1").value = document.getElementById("quantity_product1").value;
    document.getElementById("quantity_product2").value = document.getElementById("quantity_product2").value;
    document.getElementById("quantity_product3").value = document.getElementById("quantity_product3").value;
    document.forms["orderForm"].submit();
}
    
// �α׾ƿ� �Լ�
function logout() {
    if (confirm("�α׾ƿ� �Ͻðڽ��ϱ�?")) {
        location.href='Logout.jsp';
    }
}
</script>

<title>�ֹ�</title>
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
<h2>��Ű�� �ֹ�</h2>
<hr>

<div> 
<%= sessionUserId %> �� �ȳ��ϼ���? ������ �ֹ��Ͻðڽ��ϱ�?
<!-- �α׾ƿ� ��ư -->
<button onclick="logout()">�α׾ƿ�</button>
</div>

<div class="product-row">
    <div class="product">
        <h3>�Ϲ� ��Ű</h3>
        <img src="image/AmericanCookie.png" alt="�Ϲ� ��Ű �̹���" height="200px" width="200px">
        <div>����: 5,000��</div>
        <div>����: 
            <input type="number" id="quantity_product1" value="1" min="1">
            <button onclick="increaseQuantity('product1')">+</button>
            <button onclick="decreaseQuantity('product1')">-</button>
        </div>
    </div>
    
    <div class="product">
        <h3>���� ��Ű</h3>
        <img src="image/DoubleChocoCookie.png" alt="�Ϲ� ��Ű �̹���" height="200px" width="200px">
        <div>����: 5,500��</div>
        <div>����: 
            <input type="number" id="quantity_product2" value="1" min="1">
            <button onclick="increaseQuantity('product2')">+</button>
            <button onclick="decreaseQuantity('product2')">-</button>
        </div>
    </div>
    
    <div class="product">
        <h3>��Ʈ�� ��Ű</h3>
        <img src="image/OtmealCookie.png" alt="�Ϲ� ��Ű �̹���" height="200px" width="200px">
        <div>����: 5,500��</div>
        <div>����: 
            <input type="number" id="quantity_product3" value="1" min="1">
            <button onclick="increaseQuantity('product3')">+</button>
            <button onclick="decreaseQuantity('product3')">-</button>
        </div>
    </div>
</div><br>
<form id="orderForm" name="orderForm" action="cookieCart.jsp" method="post">
    <!-- �� ��ǰ�� ������ hidden input���� �߰� -->
    <input type="hidden" name="quantity_product1" id="quantity_product1" value="<%= session.getAttribute("product1Quantity") %>">
    <input type="hidden" name="quantity_product2" id="quantity_product2" value="<%= session.getAttribute("product2Quantity") %>">
    <input type="hidden" name="quantity_product3" id="quantity_product3" value="<%= session.getAttribute("product3Quantity") %>">
    <input type="button" value="��ٱ��� ���" onclick="submitForm()">
</form>

</body>
</center>

</html>
<%
}
%>
