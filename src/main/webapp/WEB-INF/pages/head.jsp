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

<!-- Jquery needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/scripts.js"></script>

<!-- Function used to shrink nav bar removing paddings and adding black background -->
<script>
    $(window).scroll(function () {
        if ($(document).scrollTop() > 50) {
            $('.nav').addClass('affix');
            console.log("OK");
        } else {
            $('.nav').removeClass('affix');
        }
    });
</script>
<style>
    /* Navbar section */

    .nav {
        width: 100%;
        height: 65px;
        position: fixed;
        line-height: 65px;
        text-align: center;
        z-index: 11;
    }

    .container {
        height: 100%;
    }

    .nav div.logo {
        float: left;
        width: auto;
        height: auto;
        /*padding-left: 20px;*/
    }

    .header-numbers {
        display: inline-block;
        box-sizing: border-box;
        float: left;
        width: auto;
        height: 100%;
        line-height: 25px;
        padding: 5px 0 5px 50px;
        color: white;
    }

    .header-number {
        font-size: 22px;
    }

    @media screen and (min-width: 768px) and (max-width: 903px) {
        .header-numbers {
            padding: 5px 0 5px 25px;
        }
    }

    @media screen and (min-width: 401px) and (max-width: 500px) {
        .header-numbers {
            padding: 5px 0 5px 15px;
        }
    }

    @media screen and (min-width: 0) and (max-width: 400px) {
        .header-numbers {
            padding: 5px 0 5px 10px;
        }
        .header-number{
            font-size: 18px;
        }
    }

    .nav div.main_list {
        height: 65px;
        float: right;
    }

    .nav div.main_list ul {
        width: 100%;
        height: 65px;
        display: flex;
        list-style: none;
        margin: 0;
        padding: 0;
    }

    .nav div.main_list ul li {
        width: auto;
        height: 65px;
        padding: 0;
        padding-right: 20px;
    }

    .nav div.main_list ul li a {
        text-decoration: none;
        color: #fff;
        line-height: 65px;
        font-size: 20px;
    }

    .nav div.main_list ul li a:hover {
        color: #00E676;
    }

    /* Home section */

    .navTrigger {
        display: none;
    }

    .nav {
        -webkit-transition: all 0.4s ease;
        transition: all 0.4s ease;
    }

    /* Media qurey section */

    @media screen and (min-width: 768px) and (max-width: 1024px) {
        .container {
            margin: 0;
        }
    }

    @media screen and (max-width: 768px) {
        .navTrigger {
            display: block;
        }

        .nav div.main_list {
            width: 100%;
            height: 0;
            overflow: hidden;
        }

        .nav div.show_list {
            height: auto;
            display: none;
        }

        .nav div.main_list ul {
            flex-direction: column;
            width: 100%;
            height: 50vh;
            right: 0;
            left: 0;
            bottom: 0;
            background-color: #111;
            /*same background color of navbar*/
            /*background-position: center top;*/
        }

        .nav div.main_list ul li {
            width: 100%;
            text-align: center;
        }

        .nav div.main_list ul li a {

            width: 100%;
            font-size: 20px;
            padding: 20px;
        }
    }

    /* Animation */
    /* Inspiration taken from Dicson https://codemyui.com/simple-hamburger-menu-x-mark-animation/ */

    .navTrigger {
        cursor: pointer;
        width: 30px;
        height: 25px;
        margin: auto;
        position: absolute;
        right: 30px;
        top: 0;
        bottom: 0;
    }

    .navTrigger i {
        background-color: #fff;
        border-radius: 2px;
        content: '';
        display: block;
        width: 100%;
        height: 4px;
    }

    .navTrigger i:nth-child(1) {
        -webkit-animation: outT 0.8s backwards;
        animation: outT 0.8s backwards;
        -webkit-animation-direction: reverse;
        animation-direction: reverse;
    }

    .navTrigger i:nth-child(2) {
        margin: 5px 0;
        -webkit-animation: outM 0.8s backwards;
        animation: outM 0.8s backwards;
        -webkit-animation-direction: reverse;
        animation-direction: reverse;
    }

    .navTrigger i:nth-child(3) {
        -webkit-animation: outBtm 0.8s backwards;
        animation: outBtm 0.8s backwards;
        -webkit-animation-direction: reverse;
        animation-direction: reverse;
    }

    .navTrigger.active1 i:nth-child(1) {
        -webkit-animation: inT 0.8s forwards;
        animation: inT 0.8s forwards;
    }

    .navTrigger.active1 i:nth-child(2) {
        -webkit-animation: inM 0.8s forwards;
        animation: inM 0.8s forwards;
    }

    .navTrigger.active1 i:nth-child(3) {
        -webkit-animation: inBtm 0.8s forwards;
        animation: inBtm 0.8s forwards;
    }

    @-webkit-keyframes inM {
        50% {
            -webkit-transform: rotate(0deg);
        }
        100% {
            -webkit-transform: rotate(45deg);
        }
    }

    @keyframes inM {
        50% {
            transform: rotate(0deg);
        }
        100% {
            transform: rotate(45deg);
        }
    }

    @-webkit-keyframes outM {
        50% {
            -webkit-transform: rotate(0deg);
        }
        100% {
            -webkit-transform: rotate(45deg);
        }
    }

    @keyframes outM {
        50% {
            transform: rotate(0deg);
        }
        100% {
            transform: rotate(45deg);
        }
    }

    @-webkit-keyframes inT {
        0% {
            -webkit-transform: translateY(0px) rotate(0deg);
        }
        50% {
            -webkit-transform: translateY(9px) rotate(0deg);
        }
        100% {
            -webkit-transform: translateY(9px) rotate(135deg);
        }
    }

    @keyframes inT {
        0% {
            transform: translateY(0px) rotate(0deg);
        }
        50% {
            transform: translateY(9px) rotate(0deg);
        }
        100% {
            transform: translateY(9px) rotate(135deg);
        }
    }

    @-webkit-keyframes outT {
        0% {
            -webkit-transform: translateY(0px) rotate(0deg);
        }
        50% {
            -webkit-transform: translateY(9px) rotate(0deg);
        }
        100% {
            -webkit-transform: translateY(9px) rotate(135deg);
        }
    }

    @keyframes outT {
        0% {
            transform: translateY(0px) rotate(0deg);
        }
        50% {
            transform: translateY(9px) rotate(0deg);
        }
        100% {
            transform: translateY(9px) rotate(135deg);
        }
    }

    @-webkit-keyframes inBtm {
        0% {
            -webkit-transform: translateY(0px) rotate(0deg);
        }
        50% {
            -webkit-transform: translateY(-9px) rotate(0deg);
        }
        100% {
            -webkit-transform: translateY(-9px) rotate(135deg);
        }
    }

    @keyframes inBtm {
        0% {
            transform: translateY(0px) rotate(0deg);
        }
        50% {
            transform: translateY(-9px) rotate(0deg);
        }
        100% {
            transform: translateY(-9px) rotate(135deg);
        }
    }

    @-webkit-keyframes outBtm {
        0% {
            -webkit-transform: translateY(0px) rotate(0deg);
        }
        50% {
            -webkit-transform: translateY(-9px) rotate(0deg);
        }
        100% {
            -webkit-transform: translateY(-9px) rotate(135deg);
        }
    }

    @keyframes outBtm {
        0% {
            transform: translateY(0px) rotate(0deg);
        }
        50% {
            transform: translateY(-9px) rotate(0deg);
        }
        100% {
            transform: translateY(-9px) rotate(135deg);
        }
    }

    .affix {
        padding: 0;
        background-color: #373b3a;
    }

    .header-logo-img {
        height: 100%;
    }

</style>
<script>
    $('.navTrigger').click(function () {
        $(this).toggleClass('active1');
        console.log("Clicked menu");
        $("#mainListDiv").toggleClass("show_list");
        $("#mainListDiv").fadeIn();

    });

</script>
