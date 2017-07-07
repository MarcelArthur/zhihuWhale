/*
 * Created by 15R-5537 on 2017/5/15.
 */
$(function(){
    var editor = new wangEditor('Editable');
    // 普通的自定义菜单
    editor.config.menus = [
        'source',
        '|',     // '|' 是菜单组的分割线
        'bold',
        'underline',
        'italic',
        'strikethrough',
        'eraser',
        '|',
        'fontsize',
        'fontfamily',
        'forecolor',
        'bgcolor'
    ];
    //颜色
    editor.config.colors = {
        '#880000': '暗红色',
        '#800080': '紫色',
        '#ff0000': '红色'
    };
    //字体
    editor.config.familys = [
        '宋体', '黑体', '楷体', '微软雅黑',
        'Arial', 'Verdana', 'Georgia'
    ];
    //字号
    editor.config.fontsizes = {
        // 格式：'value': 'title'
        1: '10px',
        2: '13px',
        3: '16px',
        4: '19px',
        5: '22px',
        6: '25px',
        7: '28px'
    };

    editor.create();

    $("#postanswer").on("submit",function () {
        $.ajax({
            url:"/onewhale/Answeraction?method=answer_add",
            dataType:"json",
            type:"post",
            data:{
                q_qtitle:$("#q_qtitle").val(),
                Editable:editor.$txt.html()
            },
            success:function (data) {
                if(data===1){
                    editor.$txt.html('<p><br></p>');
                    alert("添加成功");
                }else if(data===0){
                   alert("答案已经存在，请勿重复发布");
                }

            },
            error:function () {
                alert("网络连接不稳定");
            }
        });
        return false;
    });
});