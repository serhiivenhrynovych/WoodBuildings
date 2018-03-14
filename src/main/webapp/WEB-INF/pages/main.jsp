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
    <link rel="stylesheet" href="/css/sliderStyle.css">
    <link rel="stylesheet" href="/css/headStyle.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>

</head>
<body>
<div class="wrapper">
    <%@include file="head.jsp" %>
    <div class="main-before-slider">

    </div>
    <div class="main-wrapper">
        <div class="slyder-wrapper">
            <%@include file="slyder.jsp" %>
        </div>
        <div class="main-text1">
            <div class="main-title">
                Вітаємо вас на сайті компанії "ZhyVen"!
            </div>
            <div class="main-subtitle">
                Наша фірма надає послуги по проектуванню та оперативному будівництву дерев'яних будинків, саун та альтанок з квадратного та оциліндрованого брусу високої якості. Будівництво з брусу гарантує екологічну безпеку і беззаперечний домашній комфорт, відповідає високим вимогам щодо зміцнення здоров'я та має гарні теплоізоляційні властивості. Саме в такому будинку тепло взимку та прохолодно влітку. Також перевагами будівництва дерев'яних будинків з брусу є швидкий термін побудови, надійність, довговічність та естетична привабливість.
                <br>Користуючись послугами компанії "ZhyVen", у Вас є можливість вибрати вже готовий проект дерев'яного будинку або створити персональний проект з допомогою професіоналів нашої команди. Найкращі архітектори з великим досвідом роботи в своїй галузі допоможуть Вам створити дім Вашої мрії. У нас на сайті ви можете підібрати план і вид майбутньог будинку.
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
