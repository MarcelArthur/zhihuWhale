<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>个人设置</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstyle.css">

    <!-- CSS -->
    <link rel="stylesheet" href="css/setting.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div>
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
                <a href="homepagefill.jsp" class="navbar-brand">一鲸</a>
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
                    <li><a href="homepagefill.jsp">首页 <span class="sr-only">(current)</span></a></li>
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">个人<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/setting.jsp">设置</a></li>
                            <li><a href="#">提醒 <span class="badge">10</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/personpage.jsp">我的主页</a></li>
                            <li><a href="<c:url value="/doUserServlet?method=login_out"/>">退出</a></li>
                        </ul>
                    </li>
                    <li><a href="<c:url value="/TagsAction?method=Topic_serach"/>">话题</a></li>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><button class="btn btn-primary povositon" data-toggle="modal" data-target=".bs-example-modal-lg" type="button">提问</button></li>
                    <li><a href="#">${user.alias.aname}</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="zg-wrap zu-main clearfix no-sidebar" role="main">
        <div class="zu-main-content-inner">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#tab-datum"  data-toggle="tab" role="tab" class="">基本资料</a></li>
                <li><a href="#id-account" data-toggle="tab" role="tab" class="">账号和密码</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab-datum">
                    <form action="<c:url value="/doAliasServlet"/>" method="post" class="zm-settings-account" id="js-settings-account-form" >
                        <input type="hidden" class="_xsrf" name="method" value="account_setting"/>
                        <div class="settings-section">
                            <div class="settings-item clearfix">
                                <label for="aliasname" class="settings-item-title">昵称</label>
                                <div class="settings-item-content rename-section" id="rename-section">
                                    <span class="name">${user.alias.aname}</span>
                                    <a href="javascript:" class="zu-edit-button rename-button" name="edit" id="edit">
                                        <span class="fa fa-edit"></span>
                                        修改
                                    </a>
                                    <div class="rename-tab hidden">
                                        <p>
                                            <input type="text" class="zg-form-text-input" id="aliasname" placeholder="昵称" name="aliasname"/>
                                        </p>
                                        <div class="note gray"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="settings-item clearfix">
                                <label for="alias_desrcibe" class="settings-item-title with-input">个人描述</label>
                                <div class="settings-item-content">
                                    <input autocomplete="off" type="text" id="alias_desrcibe" name="alias_desrcibe" class="zg-form-text-input" value="${user.alias.adescribe}" required>
                                    <span class="validate-info zg-gray">修改个人描述</span>
                                </div>
                            </div>
                            <div class="settings-item clearfix"></div>
                        </div>
                        <div class="settings-save">
                            <button class="zg-btn-blue" type="submit">保存</button>
                        </div>
                    </form>
                </div>
                <div class="tab-pane" id="id-account">
                    <div class="settings-item clearfix">
                        绑定手机和邮箱，并设置密码，帐号更安全。
                    </div>
                    <div class="settings-section">
                        <div class="settings-item clearfix">
                            <label class="settings-item-title">邮箱</label>
                            <div class="settings-item-content form-container">
                                <div class="group group-text">
                                    <span class="text email">8547****8.com</span>
                                    <a href="javascript:" class="js-expand" id="email">修改</a>
                                </div>
                                <form class="form-basic panel hidden email-form" method="post" novalidate="novalidate">
                                    <input type="hidden" name="method" value="method"/>
                                    <div class="group">
                                        <input required type="email" name="email" class="email"  placeholder="输入新邮箱">
                                    </div>
                                    <div class="group hidden">
                                        <input class="text digits" name="digits" type="number" placeholder="6位数验证码">
                                        <a href="#" class="js-send-digits digits-button">发送验证码</a>
                                    </div>
                                    <button class="next zg-btn-blue">获取验证码</button>
                                    <span class="hint-label-container z-text-muted"></span>
                                </form>
                            </div>
                        </div>
                        <div class="settings-item clearfix">
                            <label class="settings-item-title">手机</label>
                            <div class="settings-item-content form-container">
                                <span class="text phone"></span>
                                <a href="javascript:" class="js-expand" id="mobilephone">绑定手机</a>
                            </div>
                            <form class="form-basic panel hidden phone-form" method="post" novalidate="novalidate">
                                <div class="group">
                                    <div class="Input-selectWrapper CountryInput-selectWrapper">
                                        <label>
                                            <select name="country" class="Input js-countries-selector"></select>
                                        </label>
                                        <span class="Input-selectArrow sprite-global-icon-select-arrow"></span>
                                    </div>
                                    <input required class="text" name="phone_no" type="tel" placeholder="输入手机号">
                                </div>
                                <div class="group hidden"></div>
                                <button class="next zg-btn-blue">获取验证码</button>
                                <span class="hint-label-container z-text-muted"></span>
                            </form>
                        </div>
                        <div class="settings-item clearfix">
                            <label class="settings-item-title">账号密码</label>
                            <div class="settings-item-content form-container expanded">
                                <div class="group group-text hidden-expanded">
                                    <a href="#" class="js-expand" id="changepassword">修改密码</a>
                                </div>
                                <form class="form-basic panel hidden password-form" method="post" novalidate="novalidate">
                                    <div class="group">
                                        <input required type="password" class="text valid" placeholder="输入新密码" name="password" id="password">
                                        <label for="password" class="error" style="display: none;">请填写密码</label>
                                    </div>
                                    <div class="group">
                                        <input required type="password" class="text error" placeholder="再次输入" id="password_repeat" data-rule-equalto="#password">
                                        <label for="password_repeat" class="error">请填写密码</label>
                                    </div>
                                    <button class="next zg-btn-blue"></button>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="zh-footer" id="zh-footer">
        <div class="content zg-wrap clearfix">
            <ul>
                <li><a href="https://liukanshan.zhihu.com" target="_blank">从不看山</a></li>
                <li><a href="#">诺诺</a></li>
                <li><a href="https://miaoyuss.com">联系我们</a></li>
            </ul>
            <span class="copy">© 2017 一鲸</span>
        </div>
    </div>
</div>




    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/setting.js"></script>
</body>
</html>