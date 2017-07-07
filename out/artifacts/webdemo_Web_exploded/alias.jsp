<%--
  Created by IntelliJ IDEA.
  User: 15R-5537
  Date: 2017/4/23
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>一鲸</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstyle.css">
    <link rel="stylesheet" href="css/aliasstyle.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-inverse" id="MM">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">一鲸</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">一鲸</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <form action="#" class="navbar-form navbar-left" role="search" method="get">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入要搜索的内容"/>
                    <button type="submit" class="btn btn-default">
                        <span class="text-hide">搜索</span>
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </div>

            </form>
            <ul class="nav navbar-nav">
                <li><a href="#">首页 <span class="sr-only">(current)</span></a></li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">个人<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">设置</a></li>
                        <li><a href="#">提醒 <span class="badge">10</span></a></li>
                        <li><a href="#">我的主页</a></li>
                        <li><a href="#">退出</a></li>
                    </ul>
                </li>
                <li><a href="#">话题</a></li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">登录</a></li>
                <li><a href="#">注册</a></li>
            </ul>
        </div>
    </div>
</nav>

</body>
</html>
