<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tranvanhai
  Date: 6/30/2022
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
    <h1>List user</h1>
    </tr>
    <c:out value="'${listUser}' var="user"">
        <tr>
            <td  name="name"> ${listUser.name} </td>
            <td name="email"> ${listUser.email} </td>
            <td name="name"> ${listUser.name} </td>
        </tr>
    </c:out>

</table>
</body>
</html>
