<%--
  Created by IntelliJ IDEA.
  User: tranvanhai
  Date: 6/27/2022
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/discount_price" method="post">
    <h1> Product Discount Calculator</h1>
    <input type="text" name="description" placeholder="Mô tả sản phẩm">
    <input type="text" name="price" placeholder="Product price">
    <input type="text" name="discount" placeholder="% discount">
    <button type="submit">Enter </button>

  </form>
  </body>
</html>
