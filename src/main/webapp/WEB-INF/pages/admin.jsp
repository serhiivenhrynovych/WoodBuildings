<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 20.01.18
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>adminPage</title>
</head>
<body>
<h1>Hello Admin!</h1>
<a href="index">Go to index</a>

<h2>Add new Wooden Product</h2>
<form action="saveWoodenProduct" method="post" enctype="multipart/form-data">
    <input type="text" name="buildName" placeholder="build name">
    <select name="buildType" id="">
        <c:forEach items="${buildTypesList}" var="buildType">
            <option value="${buildType.id}">${buildType.typeOfBuild}</option>
        </c:forEach>
    </select>
    <select name="buildMaterial" id="">
        <c:forEach items="${buildMaterialsList}" var="buildMaterial">
            <option value="${buildMaterial.id}">${buildMaterial.materialType}</option>
        </c:forEach>
    </select>
    <select name="buildPrice" id="">
        <c:forEach items="${buildPricesList}" var="buildPrice">
            <option value="${buildPrice.id}">${buildPrice.priceSum}</option>
        </c:forEach>
    </select>

    <select name="buildSquare" id="">
        <c:forEach items="${buildSquaresList}" var="buildSquare">
            <option value="${buildSquare.id}">${buildSquare.squareSum}</option>
        </c:forEach>
    </select>

    <select name="buildStorey" id="">
        <c:forEach items="${buildStoreysList}" var="buildStorey">
            <option value="${buildStorey.id}">${buildStorey.storeyType}</option>
        </c:forEach>
    </select>
    <select name="buildStyle" id="">
        <c:forEach items="${buildStylesList}" var="buildStyle">
            <option value="${buildStyle.id}">${buildStyle.styleType}</option>
        </c:forEach>
    </select>
    <input type="file" name="image" placeholder="image">
    <input type="file" id="InputImage" name="imagee" placeholder="input image" multiple>
    <input type="submit">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>
<h3>Save new Build Material</h3>
<form action="saveBuildMaterial" method="post">
    <input type="text" name="materialType" placeholder="material type">
    <input type="submit">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>
<h3>Remove Build Material</h3>
<form action="removeBuildMaterial" method="post">
    <select name="materialType" id="">
        <c:forEach items="${buildMaterialsList}" var="buildMaterial">
            <option value="${buildMaterial.materialType}">${buildMaterial.materialType}</option>
        </c:forEach>
        <input type="submit">
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </select>
</form>
<h3>Save new Build Price</h3>
<form action="saveBuildPrice" method="post">
    <input type="text" name="priceSum" placeholder="price">
    <input type="submit">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>
<h3>Remove Build Price</h3>
<form action="removeBuildPrice" method="post">
    <select name="priceSum" id="">
        <c:forEach items="${buildPricesList}" var="buildPrice">
            <option value="${buildPrice.priceSum}">${buildPrice.priceSum}</option>
        </c:forEach>
        <input type="submit">
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </select>
</form>
<h3>Save new Build Square</h3>
<form action="saveBuildSquare" method="post">
    <input type="text" name="squareSum" placeholder="square">
    <input type="submit">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>
<h3>Remove Build Square</h3>
<form action="removeBuildSquare" method="post">
    <select name="squareSum" id="">
        <c:forEach items="${buildSquaresList}" var="buildSquare">
            <option value="${buildSquare.squareSum}">${buildSquare.squareSum}</option>
        </c:forEach>
        <input type="submit">
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </select>
</form>
<h3>Save new Build Storey</h3>
<form action="saveBuildStorey" method="post">
    <input type="text" name="storeyType" placeholder="storey type">
    <input type="submit">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>
<h3>Remove Build Storey</h3>
<form action="removeBuildStorey" method="post">
    <select name="storeyType" id="">
        <c:forEach items="${buildStoreysList}" var="buildStorey">
            <option value="${buildStorey.storeyType}">${buildStorey.storeyType}</option>
        </c:forEach>
        <input type="submit">
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </select>
</form>
<h3>Save new Build Style</h3>
<form action="saveBuildStyle" method="post">
    <input type="text" name="styleType" placeholder="style type">
    <input type="submit">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>
<h3>Remove Build Style</h3>
<form action="removeBuildStyle" method="post">
    <select name="styleType" id="">
        <c:forEach items="${buildStylesList}" var="styleType">
            <option value="${styleType.styleType}">${styleType.styleType}</option>
        </c:forEach>
        <input type="submit">
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </select>
</form>
<h3>Save new Build Type</h3>
<form action="saveBuildType" method="post">
    <input type="text" name="typeOfBuild" placeholder="type of build">
    <input type="submit">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>
<h3>Remove Build Type</h3>
<form action="removeBuildType" method="post">
    <select name="typeOfBuild" id="">
        <c:forEach items="${buildTypesList}" var="buildType">
            <option value="${buildType.typeOfBuild}">${buildType.typeOfBuild}</option>
        </c:forEach>
        <input type="submit">
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </select>
</form>
</body>
</html>
