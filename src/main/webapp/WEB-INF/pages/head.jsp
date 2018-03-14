<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .header-wrapp{
        background: #373b3a;
        width: 100%;
        height: 115px;
    }
    .container{
        max-width: 1000px;
        height: 100%;
        padding-left: 15px;
        padding-right: 15px;
        margin: 0 auto;
    }
    .header-left{
        float: left;
        display: inline-block;
        width: 30%;
        height: 100%;

    }
    .header-logo-img{
        max-width: 100%;
        max-height: 100%;

    }
    .header-right{
        display: inline-block;
        width: 70%;
        float: left;

        box-sizing: border-box;
    }

    .header-top{
        text-align: right;
        font-size: 20px;
        color: #fff;
        height: 50%;
        padding: 10px 10px 10px 10px;
        box-sizing: border-box;

    }
    .header-top a{
        display: inline-block;
        color: #fff;
        text-decoration: none;
    }
    .email{
        padding-right: 20px;
    }
    .header-bot{
        height: 50%;
        box-sizing: border-box;
    }

    /*NAVBAR*/

    .navbar{
        text-align:right;
    }
    .nav, #touch-menu {
        margin-top: 0;
        margin-bottom: 0;
        font-family: Roboto,sans-serif;
        padding-left: 0;
        list-style-type: none;
    }
    .nav li{
        display: inline-block;

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
    #touch-menu {display: none;}
    @media(min-width: 939px){
        .nav li a:hover{border-bottom: 3px solid #08734e; color:#08734e; box-sizing: border-box; }
    }
    @media (max-width: 938px) {
        .navbar {
            max-width: 68%;
            background-color: #373b3a;
            right: 0;
            position: absolute;
            display: inline-block;

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
</style>
<header class="header-wrapp">
    <div class="container">
        <div class="header-left">
            <a href="index.html">
                <img class="header-logo-img" src="img/logo.png">
            </a>
        </div>
        <div class="header-right">
            <div class="header-top">
                <a class="tel" href="tel:+380969391290">+380969391290</a><br>
                <a class="tel" href="tel:+380969391290">+380969391290</a>
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
    </div>
</header>
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
