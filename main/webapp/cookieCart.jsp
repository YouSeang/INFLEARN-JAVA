<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ٱ���</title>
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
<h2>��ٱ���</h2>
<hr>

<table>
    <tr>
        <th>��Ű ����</th>
        <th>����</th>
    </tr>
    <tr>
        <td>�Ϲ� ��Ű</td>
        <td><%= session.getAttribute("product1Quantity") %></td>
    </tr>
    <tr>
        <td>���� ��Ű</td>
        <td><%= session.getAttribute("product2Quantity") %></td>
    </tr>
    <tr>
        <td>��Ʈ�� ��Ű</td>
        <td><%= session.getAttribute("product3Quantity") %></td>
    </tr>
</table>

</body>
</center>
</html>