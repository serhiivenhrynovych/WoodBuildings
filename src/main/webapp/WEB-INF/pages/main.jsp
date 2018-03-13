<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 12.03.18
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/mainStyle.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
    <div class="main-wrapper">
        <div class="slyder-wrapper">
            <%@include file="slyder.html"%>
        </div>
        <div class="main-blocks">
            <div class="col-6">
                <div class="main-menu-block">
                    <a href="">
                        <img class="col-6-img" src="/img/slimg1.jpg" alt="">
                        <div class="center main-menu-block-font">
                            Галерея
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-6">
                <div class="main-menu-block">
                    <a href="">
                        <img class="col-6-img" src="/img/slimg1.jpg" alt="">
                        <div class="center main-menu-block-font">
                            Експорт
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-6">
                <div class="main-menu-block">
                    <a href="">
                        <img class="col-6-img" src="/img/slimg1.jpg" alt="">
                        <div class="center main-menu-block-font">
                            Прайс-лист
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-6">
                <div class="main-menu-block">
                    <a href="">
                        <img class="col-6-img" src="/img/slimg1.jpg" alt="">
                        <div class="center main-menu-block-font">
                            Контакти
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
