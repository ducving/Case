<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <title>Cart
    </title>
    <style>
        img {
            width: 100px;
            height: 100px;
        }

        .a {
            display: flex;
            gap: 50px;
        }

        body {
            background-image: url("hinh-nen-may-tinh-fantasy-4k-blogchiasekienthuc.com-1-1536x864.png");
            width: 100%;
        }
    </style>
</head>
<body>

<div class="p-3 mb-2 bg-primary-subtle text-emphasis-primary">
    <h1 style="text-align: center">Danh sach</h1>
</div>
<a href="cart.jsp"> <input type="submit" value="click"></a>
<div>
    <div class="a">
        <c:forEach items="${list}" var="product">
            <form action="/cart" method="post">
                <div id="b">
                    <div><img src="${product.getImage()}"></div>
                    <input type="hidden" name="image" value="${product.getImage()}">
                    <div>${product.getName()}</div>
                    <input type="hidden" name="name" value="${product.getName()}">
                    <div>${product.getPrice()}</div>
                    <input type="hidden" name="price" value="${product.getPrice()}">
                <div>
                    <input type="submit" value="add">
                </div>
                </div>
                </form>
        </c:forEach>
    </div>
</div>
</body>
</html>
