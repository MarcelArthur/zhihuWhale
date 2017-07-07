/**
 * Created by 15R-5537 on 2017/4/27.
 */
$(function () {
   $('.nav-tabs').children('li').each(function () {
       $(this).click(function (){
           $('li').removeClass();
           $(this).addClass('Tabs-link is-active');
       });
   });


});