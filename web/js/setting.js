/**
 * Created by 15R-5537 on 2017/5/17.
 */
$(function () {
   $("#edit").on("click",function () {
       $(".rename-tab").removeClass("hidden");
   });
   $("#email").on("click",function () {
      $(".email-form").removeClass("hidden");
   });
   $("#mobilephone").on("click",function () {
       $(".phone-form").removeClass("hidden");
   });
   $("#changepassword").on("click",function () {
      $(".password-form").removeClass("hidden");
   })
});