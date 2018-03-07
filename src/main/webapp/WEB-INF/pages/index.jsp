<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 07.01.18
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>hello builders</h1>
<br>
${sproduct}
<c:forEach items="${woodenProductsList}" var="woodenProduct">
    <div class="product">
        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6" style="text-align: center">

            <img src="${woodenProduct.image}" alt="" height="100px" width="100px">

            <h3>${woodenProduct.buildName}</h3>
            <h3>$${woodenProduct.buildPrice.priceSum}</h3>
            <a href="woodenProduct${woodenProduct.id}"></a>
            <h2>${woodenProduct.id}</h2>
            <a href="woodenProduct-${woodenProduct.id}">show details</a>
            <a href="del">del</a>
        </div>

    </div>

</c:forEach>
</body>
</html>
