<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="slideshow-container">

    <div class="mySlides slideintoleft slide-1">
        <img src="/img/001.jpg" style="width:100%">
    </div>

    <div class="mySlides slideintoleft slide-2 hide">
        <img src="/img/002.jpg" style="width:100%">
    </div>

    <div class="mySlides slideintoleft slide-3 hide">
        <img src="/img/003.jpg" style="width:100%">
    </div>

    <div class="mySlides slideintoleft slide-4 hide">
        <img src="/img/004.jpg" style="width:100%">
    </div>

    <div class="mySlides slideintoleft slide-5 hide">
        <img src="/img/005.jpg" style="width:100%">
    </div>

    <a class="prev">&#10094;</a>
    <a class="next">&#10095;</a>

    <div class="dot-inside" style="text-align:center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>

</div>

<style>
    .hide {
        display: none;
    }

    .slideshow-container {
        max-width: 1000px;
        position: relative;
        margin: auto;
        padding: 0;
        overflow: hidden;
    }

    .prev, .next {
        cursor: pointer;
        position: absolute;
        top: 45%;
        width: auto;
        margin-top: -22px;
        padding: 16px;
        color: #fff;
        font-weight: bold;
        font-size: 34px;
        transition: 0.6s ease;
        border-radius: 0 50px 50px 0;
        z-index: 10;
    }

    .next {
        right: 0px;
        border-radius: 50px 0 0 50px;
    }

    .prev:hover, .next:hover {
        background-color: #089369;
    }

    .dot-inside{
        display: block;
        width: 100%;
        position: absolute;
        bottom: 3%;


    }
    .dot {
        cursor: pointer;
        height: 13px;
        width: 13px;
        margin: 0 2px;
        background-color: #fff;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.6s ease;
    }

    .active, .dot:hover {
        background-color: #08734e;
    }

    /*.slide-1 {*/
    /*position: relative;*/
    /*}*/
    /*.slide-2 {*/
    /*position: relative;*/
    /*}*/
    /*.slide-3 {*/
    /*position: relative;*/
    /*}*/
    /*.slide-4 {*/
    /*position: relative;*/
    /*}*/
    /*.slide-5 {*/
    /*position: relative;*/
    /*}*/

    .slideintoleft {
        -webkit-animation-name: slideInL;
        -webkit-animation-duration: 0.5s;
        animation-name: slideInL;
        animation-duration: 0.5s;
    }

    @-webkit-keyframes slideInL {
        from {
            left: 100%
        }
        to {
            left: 0
        }
    }

    @keyframes slideInL {
        from {
            left: 100%
        }
        to {
            left: 0
        }
    }

    .slideintoright {
        -webkit-animation-name: slideInR;
        -webkit-animation-duration: 0.5s;
        animation-name: slideInR;
        animation-duration: 0.5s;
    }

    @-webkit-keyframes slideInR {
        from {
            left: -100%
        }
        to {
            left: 0
        }
    }

    @keyframes slideInR {
        from {
            left: -100%
        }
        to {
            left: 0
        }
    }

    .slideouttoright {
        -webkit-animation-name: slideOutR;
        -webkit-animation-duration: 0.5s;
        animation-name: slideOutR;
        animation-duration: 0.5s;
    }

    @-webkit-keyframes slideOutR {
        from {
            left: 0
        }
        to {
            left: -100%
        }
    }

    @keyframes slideOutR {
        from {
            left: 0
        }
        to {
            left: -100%
        }
    }

</style>
<script>
    (function (window, document, $) {

        $(function () {
            var slideIndex = 0;
            var $slides = $('.mySlides');
            var $dots = $('.dot');
            var $stop = $('.stop');
            window.control = false;
            window.auto = true;
            window.stop = false;


            $slides.hide();
            $slides.removeClass('hide');

            autoSlide();


            $dots.on('click', function () {
                clearTimeout(timer);
                console.log($(this).index());
                slideIndex = $(this).index();
                window.auto = false;
                autoSlide();
            });

            $('.next').on('click', function () {
                window.control = true;
                showSlides(slideIndex += 1);
                slideIndex += -1;
                window.control = false;
                window.auto = false;
                showSlides();
                console.log("executes-next");
            });

            $('.prev').on('click', function () {
                window.control = true;
                showSlides(slideIndex += -1);
                slideIndex += -1;
                window.control = false;
                window.auto = false;
                showSlides();
            });

            $stop.on('click', function (event) {
                event.preventDefault();
                if (!window.stop) {
                    $(this).text('Start');
                    clearTimeout(timer);
                    window.stop = true;
                } else {
                    $(this).text('Stop');
                    autoSlide();
                    window.stop = false;
                }
            });

            function showSlides(n) {
                if (!window.control) {
                    autoSlide();
                } else {
                    controlSlide(n)
                }
            }

            function myTimer(func) {
                timer = setTimeout(func, 3000);
            }

            function autoSlide() {
                $stop.text('Stop');
                window.stop = false;
                $slides.each(function () {
                    $(this).hide();
                });
                slideIndex += 1;
                if (!window.auto) {
                    if (slideIndex > $slides.length) {
                        slideIndex = 0
                    }
                    ;
                    $slides.eq(slideIndex - 1).show();
                } else {
                    if (slideIndex > $slides.length) {
                        slideIndex = 1
                    }
                    ;
                    $slides.eq(slideIndex - 1).show();
                }
                $('.active').removeClass('active');
                $dots.eq(slideIndex - 1).addClass('active');
                myTimer(autoSlide);
                window.execute = true;
            }

            function controlSlide(n) {
                if (n > $slides.length) slideIndex = 1;
                if (0 > n) slideIndex = $slides.length - 1;
                $slides.each(function () {
                    $(this).hide();
                });
                $slides.eq(slideIndex - 1).show();
                clearTimeout(timer);
            }

        });

    })(window, document, window.jQuery);
</script>
