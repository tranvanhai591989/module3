<%--
  Created by IntelliJ IDEA.
  User: tranvanhai
  Date: 6/27/2022
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/discount_price" method="post">
    <table >
        <tr style="border: 1px solid black">
            <th>
                Product Discount Calculator
            </th>
        </tr>
        <tr style="border: 1px solid black">
            <td> Mô tả sản phẩm : ${description}</td>

            <td> Product price : ${price}</td>

            <td>Discount per : ${discount} %</td>

            <td> Discount price : ${priceDiscount}</td>

            <td>After Discount price : ${afterPriceDiscount}</td>
        </tr>

    </table>
</form>
</body>
</html>
