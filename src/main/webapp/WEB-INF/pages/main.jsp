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
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>

</head>
<body>
<div class="wrapper">
    <%@include file="head.jsp" %>
    <div class="main-wrapper">
        <div class="slyder-wrapper">
            <%@include file="slyder.jsp" %>
        </div>
        <div class="main-text1">
            <div class="main-title">
                Вітаємо вас на сайті компанії "ZhyVen"!
            </div>
            <div class="main-subtitle">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad blanditiis cum est eveniet, harum molestias neque officia possimus quia tenetur. Aliquam beatae dolores eligendi est fugit illo nisi quis tempore?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda commodi consequatur, ducimus earum ipsum itaque laudantium magni nihil perspiciatis possimus praesentium quas quis saepe sapiente sint sit voluptate voluptates voluptatum! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet at atque cumque eaque est et fugit laboriosam libero, neque nisi quasi, quis sit sunt. Aliquid dolores fuga modi numquam voluptates? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis dolore, esse eveniet explicabo fuga incidunt ipsam iure nobis odio officia quasi quo reiciendis soluta tempora, unde. Fugiat nostrum rerum sed?
            </div>
        </div>
        <div class="main-blocks">
            <div class="col-4 right-pad">
                <div class="main-menu-block">
                    <a href="">
                        <img class="col-6-img" src="/img/slimg1.jpg" alt="">
                        <div class="center main-menu-block-font">
                            Галерея
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4 right-left-pad">
                <div class="main-menu-block">
                    <a href="">
                        <img class="col-6-img" src="/img/slimg1.jpg" alt="">
                        <div class="center main-menu-block-font">
                            Експорт
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4 left-pad">
                <div class="main-menu-block">
                    <a href="">
                        <img class="col-6-img" src="/img/slimg1.jpg" alt="">
                        <div class="center main-menu-block-font">
                            Прайс-лист
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
