/**
    * Created by 15R-5537 on 2017/4/21.
 * .navbar-inverse .navbar-nav>li>a
 * */
/*未知问题*/
$(document).ready(function () {
    $('.navbar-inverse').find('.navbar-nav').children('li').click(function () {
       $('a').addClass('.var-color');
    });
});