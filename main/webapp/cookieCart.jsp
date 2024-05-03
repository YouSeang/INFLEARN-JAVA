<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니</title>
<style>
    table {
        border-collapse: collapse;
        width: 50%;
        margin: auto;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: center;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<center>
<body>
<h2>장바구니</h2>
<hr>

<table>
    <tr>
        <th>쿠키 종류</th>
        <th>수량</th>
    </tr>
    <tr>
        <td>일반 쿠키</td>
        <td><%= session.getAttribute("product1Quantity") %></td>
    </tr>
    <tr>
        <td>초코 쿠키</td>
        <td><%= session.getAttribute("product2Quantity") %></td>
    </tr>
    <tr>
        <td>오트밀 쿠키</td>
        <td><%= session.getAttribute("product3Quantity") %></td>
    </tr>
</table>

</body>
</center>
</html>