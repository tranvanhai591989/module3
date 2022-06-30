<%--
  Created by IntelliJ IDEA.
  User: tranvanhai
  Date: 6/29/2022
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h2>Product</h2>
<form action="/product">
    <input type="text" name="nameSearch">
    <input type="submit" name="action" value="search">
    <br>
    <input type="submit" name="action" value="Sort by name ">

    <table class="table">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Producer</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${productList}" var="product">
            <tr>
                <td>${product.id}</td>
                <td><a href="/product?action=view&id=${product.getId()}">${product.name}</a></td>
                <td>${product.price}</td>
                <td>${product.producer}</td>
                <td><a href="/product?action=edit&id=${product.getId()}">Edit</a></td>
                <td><a href="/product?action=delete&id=${product.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

</form>
<a href="/product?action=create">Add new Product</a>
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>