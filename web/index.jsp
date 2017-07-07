<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>每一个人都是一座岛</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/form-elements.css">
        <link rel="stylesheet" href="css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <!-- 第一个盒标签 表单上部分的内容块-->
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>One Whale&nbsp;</strong>| 一鲸</h1>
                            <div class="description">
                            	<p>
	                            	邀请你回答与众不同
                                    <strong>分享你的世界</strong>
                            	</p>
                            </div>
                        </div>
                    </div>
                    <!-- 第二个盒标签 登陆表单主体设计方案-->

                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                                    <ul id="myTab" class="nav nav-tabs" role="tablist">
                                        <li class="avtive"><a href="#login" class="h4" data-toggle="tab" role="tab" id="login-form">登陆</a></li>
                                        <li><a href="#register" role="tab" data-toggle="tab" class="h4" id="register-form">注册</a></li>
                                    </ul>
                                    <p id="wait">输入你的登陆信息</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="" id="otk"></i>
                        		</div>
                            </div>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane active" id="login">
                                    <!--登录面板-->
                                    <div class="form-bottom">
                                        <form role="form" action="<c:url value="/doUserServlet"/>" method="post" class="login-form" onsubmit="">
                                            <input type="hidden" name="method" value="account_find"/>
                                            <div class="form-group">
                                                <label class="sr-only" for="form-username">用户名</label>
                                                <input type="text" name="form-username" placeholder="请输入你的用户名..." class="form-username form-control" id="form-username">
                                                <span class="help-block text-danger"></span>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="form-password">密码</label>
                                                <input type="password" name="form-password" placeholder="请输入你的密码..." class="form-password form-control" id="form-password">
                                                <span class="help-block text-danger">${uerror}</span>
                                            </div>
                                            <button type="submit" class="btn" id="gew">登陆</button>
                                        </form>
                                    </div>
                                </div>
                                <div class="tab-pane " id="register">
                                    <div class="form-bottom">
                                        <form role="form" action="<c:url value="/doUserServlet"/>" method="post" class="login-form">
                                            <input type="hidden" name="method" value="account_add">
                                            <div class="form-group">
                                                <label class="sr-only" for="form-register-reusername">用户名</label>
                                                <input type="text" name="form-username" placeholder="用户名/邮箱/手机号" class="form-username form-control" id="form-register-reusername">
                                                <span class="help-block text-danger">${unameInfo}${unnameInfo}</span>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="form-register-password">密码</label>
                                                <input type="password" name="form-password" placeholder="密码" class="form-password form-control" id="form-register-password">
                                                <span class="help-block text-danger">${upwInfo}</span>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="form-register-repassword">确认密码</label>
                                                <input type="password" name="form-repassword" placeholder="确认密码" class="form-password form-control" id="form-register-repassword">
                                                <span class="help-block">${reupwd}</span>
                                            </div>
                                            <button type="submit" class="btn" id="ge">注册</button>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- 第三个盒标签 其他登陆方式的盒模型-->
                    <!--<div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>其他登陆方式: </h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-facebook"></i> QQ
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-twitter"></i> 微博
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-google-plus"></i> 微信
	                        	</a>
                        	</div>
                        </div>
                    </div>-->
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <!-- 自己写的js 可修改-->
        <script src="js/scripts.js"></script>

        <!-- 具备一定的兼容性(最多 IE10)-->
        <!--[if lt IE 10]>
        <script src="js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>