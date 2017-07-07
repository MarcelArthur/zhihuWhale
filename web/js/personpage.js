/*
 * Created by 15R-5537 on 2017/4/27.
 */
$(function () {
    serarch();
   $(".nav-tabs").children('li').each(function () {
       $(this).click(function (){
           $('li').removeClass();
           $(this).addClass('Tabs-link is-active');
       });
   });

   //异步请求的ajax技术可以实现向处理数据后向后台传递数据
   /*var title=$('#que_title').val().trim();
   var describe=$('#que_describe').val().trim();
   var url="do_question?method=add";
   $("#question_sub").submit(function () {
        var formParam = $("#question_sub").serialize();
        $.ajax({
            type:'post',
            url:"url",
            data:"formParam",
            cache:false,
            dataType:'json'
        });
    });*/


});
function serarch() {
        $.ajax({
            type:'post',
            url:'/onewhale/doAliasServlet?method=mytrends',
            dataType:'json',
            success:function (data) {
                console.log(data);
                $.each(JSON.parse(data),function (item) {
                    $('#questionul').append(
                        '<li class="media">'+
                        '<a href="#" class="pull-left">'+
                        '<img class="media-object" src="http://tp2.sinaimg.cn/3306361973/50/22875318196/0" alt="头像">'+
                        '</a>'+
                        '<div class="media-body">'+
                        '<div>'+
                        '<p class="text-muted">'+item.andate+'</p>'+
                        '</div>'+
                        '<h5 class="media-heading text-primary"><a href="#" id="quedata">'+item.question.qititle+'</a></h5>'+
                        '<span class="h6"><a href="#" class="acolor" id="mengya"><strong>${user.alias.aname}</strong></a></span>&nbsp;&nbsp;<span class="text-muted h6" id="songshu">${user.alias.adescribe}</span>'+
                        '<p>（有严重剧透，阅读需谨慎）是祁同伟。祁同伟这个角色如此复杂，使得剧里的主要角色都是都是他的镜面。如果祁同伟身中三颗子弹用生命做代价可以感动陈阳，那么他就能成为用海蛎子感动欧阳箐的李达康，相信凭借出色的业务能力就可以成为一个优秀的干部。如果… </p>'+
                        '</div>'+
                        '<div class="media-bottom">'+
                        '<p class="text-muted">'+
                        '<a href="#" class="text-muted">'+
                        '<span class="glyphicon glyphicon-plus"></span>'+
                        '<small>关注问题</small>'+
                        '</a>'+
                        '<a href="#" class="text-muted meta-item" >'+
                        '<span class="glyphicon glyphicon-comment"></span>'+
                        '<small>33条评论</small>'+
                        '</a>'+
                        '</p>'+
                        '</div>'+
                        '</li>');
                });
            },
            error:function () {
                alert("显示失败");
            }
        });

}