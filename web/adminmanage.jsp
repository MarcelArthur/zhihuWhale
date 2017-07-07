<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>一·鲸·后·台</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div>
    <div class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="navbar-brand">
                    <small class="glyphicon glyphicon-fire"></small>
                    MicroSoft
                </div>
            </div>
            <ul class="nav navbar-nav nav-stacked navbar-right">
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-tasks"></span>
                        <i class="badge">2</i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-bell"></span>
                        <i class="badge">1</i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-envelope"></span>
                        <i class="badge">1</i>
                    </a>
                </li>
                <li>
                    <a href="#" data-toggle="dropdown">
                        <img class="img-circle" src="" width="15" height="15"/>
                        <small>${user.uaccount}</small>
                        ${user.uaccount}
                        <span class="caret"></span>
                    </a>
                    <ul class="nav nav-pills nav-stacked dropdown-menu">
                        <li class="active">
                            <a href="#">
                                <span class="glyphicon glyphicon-cog"></span> Setting
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <span class="glyphicon glyphicon-user"></span> Profile
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="<c:url value="/AdminServlet?method=admin_loginout"/> ">
                                <span class="glyphicon glyphicon-off"></span> Logout
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <div class="panel-group" id="box">
                <div class="list-group">
                    <a class="list-group-item" href="<c:url value="/doUserServlet?method=find_user"/>"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp; 用户</a>
                    <a class="list-group-item" href="#"><i class="fa fa-book fa-fw" aria-hidden="true"></i>&nbsp; 文章</a>
                    <a class="list-group-item" href="<c:url value="/QuestionAction?method=find_questionList"/>"><i class="fa fa-pencil fa-fw" aria-hidden="true"></i>&nbsp; 提问</a>
                    <a class="list-group-item" href="<c:url value="/TagsAction?method=Topic_manage"/>"><i class="fa fa-cloud fa-fw" aria-hidden="true"></i>&nbsp; 话题</a>
                    <a class="list-group-item" href="<c:url value="/Answeraction?method=answer_findAll"/>"><i class="fa fa-cog fa-fw" aria-hidden="true"></i>&nbsp; 回答</a>
                </div>
            </div>
        </div>

        <div class="col-sm-10">
            <div class="bread-crumb">
                <ul class="breadcrumb">
                    <li><span class="glyphicon glyphicon-home"></span><a href="#">Home</a></li>
                    <li><a href="#">User</a></li>
                    <li>Add</li>
                </ul>
            </div>
            <div class="panle panel-success">
                <div class="panel-heading">
                    <a class="panel-title">用户管理</a>
                </div>
                <div class="panel-body">
                    <form action="<c:url value="/TagsAction"/>" method="post">
                        <input type="hidden" name="method" value="addTags">
                        <label for="NewBee">Tags:</label>
                        <input type="text" id="NewBee" name="NewBee" placeholder="输入添加一下Tag..."/>
                        <button type="submit" class="btn-default">添加话题</button><span>${msgInfo}</span>
                    </form>
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>用户名</th>
                            <th>密码</th>
                            <th>激活状态</th>
                            <th>权限</th>
                            <th>时间</th>
                            <th>昵称</th>
                            <th>管&nbsp;&nbsp;&nbsp;&nbsp;理</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.userid}</td>
                            <td>${user.uaccount}</td>
                            <td>${user.upwd}</td>
                            <td>${user.status}</td>
                            <td>${user.anthority}</td>
                            <td>${user.udate}</td>
                            <td>${user.alias.aname}</td>
                            <td><a href="#">禁用</a>&nbsp;&nbsp;<a href="#">解禁</a></td>
                        </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="8">
                                <ul class="pagination">
                                    <li><a href="#">«</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">»</a></li>
                                </ul>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!-- 具备一定的兼容性(最多 IE10)-->
    <!--[if lt IE 10]>
    <script src="js/placeholder.js"></script>
    <![endif]-->
</body>
</html>