<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 27.03.18
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>hello</h1>
<h1>${sWoodenProduct.buildName}</h1>
<div>
    <c:forEach items="${woodenProductImage}" var="pr">
            <img src="${pr.images[0]}" width="500" height="500">
            <img src="${pr.images[1]}" width="500" height="500">
            <img src="${pr.images[2]}" width="500" height="500">
            <img src="${pr.images[3]}" width="500" height="500">
    </c:forEach>
</div>
</body>
</html>
