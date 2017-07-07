/**
 * Created by 15R-5537 on 2017/5/22.
 */
$(function () {
    $( "#que_title" ).autocomplete({
        delay:500,
        max:10,
        minChars:1,
        scrollHeight:400,
        autoFill:true,
        minLength:1,
        source: function(request,response){
            $.ajax({
                Type:"post",
                url:"/onewhale/QuestionAction?method=Question_title",
                dateType:"json",
                data:{
                    question_title:request.term
                },
                success:function (data) {
                    response($.map(JSON.parse(data),function (item) {
                        console.log(item);
                        return{
                            label:item.qtitle,
                            value:item.qtitle
                        };
                    }));
                },
                error:function () {
                    alert("异常");
                }
            });
        },
        select: function (event, ui) {
            //提交搜索
            $("#que_title").val(ui.item.qtitle);
        }

    });

    $("#que_tags").autocomplete({
        delay:500,
        max:10,
        minChars:1,
        scrollHeight:400,
        autoFill:true,
        minLength:1,
        source:function(request,response){
            $.ajax({
                Type:"post",
                url:"/onewhale/TagsAction?method=fuzzy_Tags",
                dateType:"json",
                data:{
                    tags_tname:request.term
                },
                success:function (data) {
                    response($.map(JSON.parse(data),function (item) {
                        return{
                            label:item.tname,
                            value:item.tname
                        };
                    }));
                },
                error:function () {
                    alert("异常");
                }
            });
        },
        select: function (event, ui) {
            //提交搜索
            $("#que_tags").val(ui.item.tname);
        }
    });
});