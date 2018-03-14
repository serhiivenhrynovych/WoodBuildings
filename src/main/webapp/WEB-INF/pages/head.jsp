<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 14.03.18
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="nav">
    <div class="container">
        <div class="logo">
            <a href="#">
                <img class="header-logo-img" src="/img/logo.png">
            </a>
        </div>
        <div class="header-numbers">
            <div class="header-number">
                +38 (099) 5521395
            </div>
            <div class="header-number">
                +38 (099) 5521395
            </div>
        </div>
        <div id="mainListDiv" class="main_list">
            <ul class="navlinks">
                <li><a href="#">Головна</a></li>
                <li><a href="#">Галерея</a></li>
                <li><a href="#">Експорт</a></li>
                <li><a href="#">Прайс-лист</a></li>
                <li><a href="#">Контакти</a></li>
            </ul>
        </div>
        <span class="navTrigger">
                <i></i>
                <i></i>
                <i></i>
            </span>
    </div>
</nav>

<section class="home">
</section>

<script>
    $('.navTrigger').click(function () {
        $(this).toggleClass('active1');
        console.log("Clicked menu");
        $("#mainListDiv").toggleClass("show_list");
        $("#mainListDiv").fadeIn();

    });

    $(window).scroll(function () {
        if ($(document).scrollTop() > 50) {
            $('.nav').addClass('affix');
            console.log("OK");
        } else {
            $('.nav').removeClass('affix');
        }
    });
</script>