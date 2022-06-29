<%--
  Created by IntelliJ IDEA.
  User: tranvanhai
  Date: 6/29/2022
  Time: 6:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/product">Back to product list</a>
</p>
<table>
    <tr>
        <td>Id: </td>
        <td>${product.getId()}</td>
    </tr>
    <tr>
        <td>Name: </td>
        <td>${product.getName()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${product.getPrice()}</td>
    </tr>
    <tr>
        <td>Producer: </td>
        <td>${product.getProducer()}</td>
    </tr>
</table>
</body>
</html>