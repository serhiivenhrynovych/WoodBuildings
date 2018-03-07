<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 20.01.18
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Log in here</h1>
<div class="container-fluid content-wrapper loginpol" id="content">
    <div class="col-65">
        <form action="${loginUrl}" method="post">
            <c:if test="${param.error != null}">
                <div class="alert alert-danger">
                    <p>Invalid username and password.</p>
                </div>
            </c:if>
            <c:if test="${param.logout != null}">
                <div class="alert alert-success">
                    <p>You have been logged out successfully.</p>
                </div>
            </c:if>
            <label for="fname">Username</label>
            <br>
            <input type="text" id="fname" name="username" placeholder="Username" required>
            <br>
            <label for="lname">Password</label>
            <br>
            <input type="password" id="lname" name="password" placeholder="********" required>
            <br>
            <input type="submit" value="Log in">

            <input type="hidden"
                   name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>
        </form>
    </div>
    <div class="bottom">
        <a href="registraction" class="btn1">Not Registered yet</a>
    </div>
</div>
</body>
</html>
