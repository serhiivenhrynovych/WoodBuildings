<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 12.03.18
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/mainStyle.css">
    <link rel="stylesheet" href="/css/sliderStyle.css">
    <link rel="stylesheet" href="/css/headStyle.css">
    <link rel="stylesheet" href="/css/footStyle.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                Наша фірма надає послуги по проектуванню та оперативному будівництву дерев'яних будинків, саун та
                альтанок з квадратного та оциліндрованого брусу високої якості. Будівництво з брусу гарантує екологічну
                безпеку і беззаперечний домашній комфорт, відповідає високим вимогам щодо зміцнення здоров'я та має
                гарні теплоізоляційні властивості. Саме в такому будинку тепло взимку та прохолодно влітку. Також
                перевагами будівництва дерев'яних будинків з брусу є швидкий термін побудови, надійність, довговічність
                та естетична привабливість.
                <br>Користуючись послугами компанії "ZhyVen", у Вас є можливість вибрати вже готовий проект дерев'яного
                будинку або створити персональний проект з допомогою професіоналів нашої команди. Найкращі архітектори з
                великим досвідом роботи в своїй галузі допоможуть Вам створити дім Вашої мрії. У нас на сайті ви можете
                підібрати план і вид майбутньог будинку.
            </div>
        </div>
        <div class="main-blocks">
            <div class="col-4 right-pad">
                <div class="main-menu-block">
                    <a href="">
                        <img class="col-6-img" src="/img/slimg1.jpg" alt="">
                        <div class="center main-menu-block-font">
                            Оциліндрована колода
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4 right-left-pad">
                <div class="main-menu-block">
                    <a href="">
                        <img class="col-6-img" src="/img/slimg1.jpg" alt="">
                        <div class="center main-menu-block-font">
                            Профільований брус
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
        <div class="before-main-title">
            <h4>Проекти дерев’яних будинків з брусу</h4>
            Ескізи будівель, представлені на сайті є типовими. В кожному конкретному випадку, відбувається адаптація
            проекту бані чи котеджу до вимог замовника. Корегуються зовнішні параметри зрубу, розміри кімнат, розміщення
            віконних та дверних блоків, кольорові поєднання елементів фасадів, тощо.
        </div>
        <main class="main">

            <div class="paginator">

                ${sproduct}
                <c:forEach items="${woodenProductsList}" var="woodenProduct">
                    <a href="woodenProduct${woodenProduct.id}">
                        <div class="product main-border">
                            <img class="col-6-img" src="${woodenProduct.image}" alt="img">

                            <div class="main-build-name">
                                    ${woodenProduct.buildName}
                            </div>
                            <div class="main-price">
                                $${woodenProduct.buildPrice.priceSum}
                            </div>
                        </div>
                    </a>
                </c:forEach>
            </div>


        </main>

        <script>
            var paginator_selector = '.paginator';
            var paginator_selector = (!paginator_selector) ? '.paginator' : paginator_selector;

            // Items Per Page
            var items_per_page = 8;

            // Item Selector - Optional. Default: *
            var item_selector = '*';
            var item_selector = (!item_selector) ? '*' : item_selector;

            // Define Pages
            var pages = $(paginator_selector + " > " + item_selector);

            // FUNCTION
            // Wrap items in Pages
            for (var i = 0; i < pages.length; i += items_per_page) {
                pages.slice(i, i + items_per_page).wrapAll("<div class='page'></div>");
            }

            // Add Page Control Class
            $(paginator_selector + " > " + item_selector).addClass('page_control');

            // Add Paginator Control Class
            $(paginator_selector).addClass('paginator_control');

            // Create Navigation Container
            $(paginator_selector).after('<div class="page-nav"></div>');

            // Create Navigation
            $('.page_control').each(function () {
                $(".page-nav").append('<a href="#" data-target="' + $(this).index() + '">' + $(this).index() + '</a>');
            });

            // Activate first page
            $(paginator_selector + " > " + item_selector + ":first-child").addClass('active5');

            // Activate first Nav item
            $('.page-nav a:first-child').addClass('active5');

            // Navigation Function
            $(".page-nav a").on("click", function () {

                var targetPage = $('.page_control:eq(' + $(this).data('target') + ')'),
                    targetPageHeight = targetPage.height(),
                    activePage = $('.page_control.active5');

                $(".page-nav a").removeClass('active5');
                $(this).addClass('active5');
                $('.paginator_control').animate({height: targetPageHeight}, 350, function () {
                    $('.paginator_control').css({height: 'auto'});
                });
                $('.page_control').removeClass('active5');
                targetPage.addClass('active5');
            });

        </script>

    </div>
    <%@include file="footer.jsp" %>
</div>
</body>
</html>
