<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    /*navbar*/

    header{
        margin: 0;
    }
    .navbar{
        display: inline-block;
        float: right;
    }
    .nav, #touch-menu {
        margin-top: 0;
        margin-bottom: 0;
        font-family: Roboto,sans-serif;
        padding-left: 0;
        list-style-type: none;
    }
    .nav li{
        float: left;

    }
    @media (min-width: 724px) {

    }
    .goleft{
        line-height: 1.8;
        padding-left: 7px;
    }

    .nav{display: block;}
    .nav li a,
    #touch-menu{
        display: block;
        padding:10px 15px;
        font-weight: bold;
        font-size: 18px;
        color: #fff;
        text-decoration: none;
        box-sizing: border-box;
        max-width: 100%;
        height: auto;
    }

    /*.nav li a:hover, #touch-menu:hover{border-bottom: 1px solid #fff; }*/
    #touch-menu {display: none;}
    @media(min-width: 939px){
        .nav li a:hover{border-bottom: 3px solid #08734e; color:#08734e; box-sizing: border-box; }
    }
    @media (max-width: 938px) {
        .navbar {
            width: 50%;
            background-color: #373b3a;
            right: 0;
            position: absolute;
            display: inline-block;
            z-index: 3;
        }
        #touch-menu {
            text-align: right;
        }

        li{
            width: 12.5%;
        }

        .nav {
            display: none;
            width: 100%;
        }

        .nav li {
            float: none;
            width: 100%;


        }
        .nav li a:hover{border-left: 4px solid #08734e; color:#08734e}

        #touch-menu {
            display: block;
        }
    }

    @media (min-width: 725px) {
        .nav li {
            height: auto;
        }
    }


    /*end navbar*/
</style>
<header id="avatar">
    <div class="header-wrapp">
        <div class="container">
            <div class="header-left">
                <div class="header-logo">
                    <a id="avatar2" href="index.html">
                        <img  src="/img/logo.png" alt="img">
                    </a>
                </div>
            </div>
            <div class="header-right">
                <div class="header-top">
                    <ul class="header-tel">
                        <li><a href="tel:+380969391290">+380969391290</a></li>
                        <li><a href="tel:+380995521385">+380995521385</a></li>
                    </ul>
                    <ul class="header-language">
                        <li><a href="language">UKR</a></li>
                        <li><a href="lanquage">ENG</a></li>
                    </ul>
                </div>
                <div class="header-bot">
                    <div class="navbar">
                        <a href="#"  id="touch-menu">Menu<i class="fa fa-bars" aria-hidden="true"></i></a>
                        <nav>
                            <ul class="nav clearfix">

                                <li><a class="goleft" href="#">Головна</a></li>
                                <li><a class="goleft" href="#">Галерея</a></li>
                                <li><a class="goleft" href="#">Експорт</a></li>
                                <li><a class="goleft" href="#">Прайс-лист</a></li>
                                <li><a class="goleft" href="#">Контакти</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>

            </div>
            <script>
                $(document).ready(function(){
                    var touch = $('#touch-menu');
                    var menu = $('.nav');
                    $(touch). on('click', function(e){
                        e.preventDefault();
                        menu.slideToggle();
                    });
                    window.addEventListener("resize",function(e){
                            if (window.innerWidth >938) {
                                menu.slideDown( )
                            }
                        }
                    );
                });
            </script>
        </div>
    </div>
    <script>
        $('#avatar').addClass('original').clone().insertAfter('#avatar').addClass('cloned').css('position','fixed').css('top','0').css('margin-top','0').css('z-index','500').removeClass('original').hide();

        scrollIntervalID = setInterval(stickIt, 10);


        function stickIt() {

            var orgElementPos = $('.original').offset();
            orgElementTop = orgElementPos.top;

            if ($(window).scrollTop() >= (orgElementTop)) {
                // scrolled past the original position; now only show the cloned, sticky element.

                // Cloned element should always have same left position and width as original element.
                orgElement = $('.original');
                coordsOrgElement = orgElement.offset();
                leftOrgElement = coordsOrgElement.left;
                widthOrgElement = orgElement.css('width');
                $('.cloned').css('left',leftOrgElement+'px').css('top',0).css('width',widthOrgElement).show();
                $('.original').css('visibility','hidden');
            } else {
                // not scrolled past the menu; only show the original menu.
                $('.cloned').hide();
                $('.original').css('visibility','visible');
            }
        }


    </script>
</header>

