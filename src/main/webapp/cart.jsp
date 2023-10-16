<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Cart</title>
</head>
<body>
<div>
    <div>
        <c:forEach var="product" items="${product}">
        <div>
            <div>${product.getName()}</div>
            <div>${product.getPrice()}</div>
            <div><img src="${product.getImage()}"></div>
        </div>
    </c:forEach>
    </div>
</div>
</body>
</html>
