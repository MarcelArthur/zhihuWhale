
jQuery(document).ready(function() {
	
    /*
        Fullscreen background
        这里的js组件实现图片轮播的效果 图片覆盖背景样式
    */

    $.backstretch([
                    "img/backgrounds/2.jpg"
	              , "img/backgrounds/3.jpg"
	              , "img/backgrounds/1.jpg"
	             ], {duration: 3000, fade: 750});


    /*
        Form validation
        组件实现jq自带的错误提示功能 在登陆表单非异常时移除添加的input-error样式
    */
    $('.login-form input[type="text"], .login-form input[type="password"], .login-form textarea').on('focus', function() {
    	$(this).removeClass('input-error');
    });

    /*
       点击出发表单提交时，实现表单验证和提示异常 （添加class样式input-error 在非异常时移除class)
    */
    $('.login-form').on('submit', function(e) {
    	
    	$(this).find('input[type="text"], input[type="password"], textarea').each(function(){
    		if( $(this).val() == "" ) {
    			e.preventDefault();
    			$(this).addClass('input-error');

    		}
    		else {
    			$(this).removeClass('input-error');
    		}
    	});
    });
    /*
       获取和失去焦点时,username默认值发生的变化
    */
    $('#form-username').on('focus',function(){
        $(this).attr('placeholder','');
    });
    $('#form-username').on('blur',function(){
        $(this).attr('placeholder','请输入用户名');
    });
    /*
       获取和失去焦点时,密码框的问题
    */
    $('#form-password').on('focus',function(){
        $(this).attr('placeholder','');
    });
    $('#form-password').on('blur',function(){
        $(this).attr('placeholder','请输入密码');
    });

    /**/
    $('#form-register-reusername').on('focus',function(){
        $(this).attr('placeholder','');
    });
    $('#form-register-reusername').on('blur',function(){
        $(this).attr('placeholder','用户名/邮箱/手机号');
    });
    /**/
    $('#form-register-password').on('focus',function(){
        $(this).attr('placeholder','');
    });
    $('#form-register-password').on('blur',function(){
        $(this).attr('placeholder','密码');
    });
    /**/
    $('#form-register-repassword').on('focus',function(){
        $(this).attr('placeholder','');
    });
    $('#form-register-repassword').on('blur',function(){
        $(this).attr('placeholder','确认密码');
    });


    $('#register-form').click(function(){
        $('#wait').html('请输入你的注册信息');
        $('#otk').removeClass();
        $('#otk').addClass('fa fa-user-circle');
    });


    $('#login-form').click(function(){
        $('#wait').html('请输入你的登陆信息');
        $("#otk").removeClass();
        $('#otk').addClass('fa fa-user-circle-o');
    });



    /*表单验证  要来了~~*/



});
