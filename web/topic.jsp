<jsp:useBean id="user" scope="session" type="nuonuo.userp.User"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>1%</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">

    <!-- Css -->
    <link rel="stylesheet" href="css/bootstyle.css">
    <link href="css/topic.css" rel="stylesheet">


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
                        <li><a href="${pageContext.request.contextPath}/homepagefill.jsp">我的主页</a></li>
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
    <div class="zg-wrap zu-main clearfix ">
        <div class="zu-main-content">
            <div class="zu-main-content-inner">
                <div class="topic-feed-title">
                    <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
                    <span>已关注的话题动态</span>
                    <a href="#" target="_blank" class="zg-link-gray zg-right">
                        共关注？个问题
                    </a>
                </div>
                <ul class="zm-topic-cat-main js-topic-cat-main clearfix">
                    <c:forEach var="tag" items="${tagsList}">
                    <li class="zm-topic-cat-item current">
                        <a href="<c:url value="/Tagselect?id=${tag.tid}"/>" class="btn btn-default" type="button">${tag.tname}</a>
                    </li>
                    </c:forEach>
                    <li class="zm-topic-cat-item">
                        <a href="#" class="btn btn-default" type="button">狐妖小红娘</a>
                    </li>
                    <li class="zm-topic-cat-item">
                        <a href="#" class="btn btn-default" type="button">vczh</a>
                    </li>
                    <li class="zm-topic-cat-item">
                        <a href="#" class="btn btn-default" type="button">微软</a>
                    </li>
                    <li class="zm-topic-cat-item">
                        <a href="#" class="btn btn-default" type="button">阿里巴巴集团</a>
                    </li>
                    <li class="zm-topic-cat-item">
                        <a href="#" class="btn btn-default" type="button">科技</a>
                    </li>
                    <li class="zm-topic-cat-item">
                        <a href="#" class="btn btn-default" type="button">设计</a>
                    </li>
                    <li class="zm-topic-cat-item">
                        <a href="#" class="btn btn-default" type="button">软件工程</a>
                    </li>
                    <li class="zm-topic-cat-item">
                        <a href="#" class="btn btn-default" type="button">树</a>
                    </li>
                    <li class="zm-topic-cat-item">
                        <a href="#" class="btn btn-default" type="button">数据结构</a>
                    </li>
                </ul>
                <div class="topic-title clearfix js-topic-title">
                    <a href="#" class="zg-left js-topic-title-avatar" target="_blank">
                        <img  class="Avatar Avatar--m js-topic-avatar" src="https://pic2.zhimg.com/v2-6fb3cbc31bed798797e59a0959caa009_m.jpg" alt="狐妖小红娘">
                    </a>
                    <a href="<c:url value="/Tagselect?id=${tagone.tid}"/>" target="_blank" class="zg-left topic-title-name js-topic-title-name">${tagone.tname}</a>
                </div>
                <div class="zm-topic-list-container">
                    <div class="list-group" id="list-group">
                        <div class="list-group-item">
                            <div class="feed-main">
                                <div class="feed-content">
                                    <h2>
                                        <a href="#" class="question_link" target="_blank">如何评价国漫狐妖小红娘?</a>
                                    </h2>
                                    <div class="expandable entry-body">
                                        <div class="zm-item-vote">
                                            <a href="#" class="zm-item-vote-count js-expand js-vote-count">27</a>
                                        </div>
                                        <div class="zm-votebar" data-za-module="VoteBar">
                                            <button class="up" title="赞同" aria-pressed="false">
                                                <span class="fa-caret-up"></span>
                                                <span class="label sr-only">赞成</span>
                                                <span>27</span>
                                            </button>
                                            <button class="down" title="反对" aria-pressed="false">
                                                <span class="fa fa-caret-down"></span>
                                                <span class="label sr-only">反对,不会显示你的名字</span>
                                            </button>
                                        </div>
                                        <div class="zm-item-answer-author-info">
                                            <span class="summary-wrapper">
                                                <span class="author-link-line">
                                                    <a href="#" class="author-link" target="_blank">目清</a>
                                                </span>
                                                <span title="五年网文书龄，吐槽和推荐女频网文，讨厌多角恋" class="bio">
                                                    五年网文书龄，吐槽和推荐女频网文，讨厌多角恋
                                                </span>
                                            </span>
                                        </div>
                                        <div class="zm-item-rich-text expandable js-collapse-body">
                                            <div style="display: none;">
                                                <p>诸位混知乎的大神都没孩子吧，你知道现在湾区励志理工科的孩子们课外兴趣班都流行什么吗？</p>
                                                <p>1. 以Minecraft为基础的游戏编程；</p>
                                            </div>
                                            <label>
                                                <textarea class="content" hidden>
                                                    <p>诸位混知乎的大神都没孩子吧，你知道现在湾区励志理工科的孩子们课外兴趣班都流行什么吗？</p><p>1. 以Minecraft为基础的游戏编程；</p><p>2. 机器人制作与编程；</p><p>3. 以3D打印为平台的入门工业／机械设计。</p><p>这三个课程都高度依赖计算机，你要是孩子爸妈，给她买什么系统的电脑啊？Linux？待电行不行啊？Mac？有些软件没法用啊？只有Windows了，还都是它强项啊。</p><p>你知道这些小孩子买套机器人零件要多少钱吗？报个斯坦福的camp要多少钱吗？在乎钱还能爬藤吗？小孩子正长身体，买个十几磅的Alienware就不必了吧，孩子驼背怎么办啊！而且现在小孩子都能熟练操作ipad了，触屏最好也配上，做CAD作业很有效很直观啊。</p><p>花个一千上下买个轻薄的Windows触屏电脑用，还叫事吗？</p><p>综上，现在Surface Laptop是不是真的只目标教育领域还不好说，但它目标的教育群体其实很清晰明确啊：初高中生用个chromebook不够，需要优秀硬件支持的Windows系统。</p>
                                                </textarea>
                                            </label>
                                            <div class="zh-summary summary clearfix" style="display: block">
                                                诸位混知乎的大神都没孩子吧，你知道现在湾区励志理工科的孩子们课外兴趣班都流行什么吗？1. 以Minecraft为基础的游戏编程；2. 机器人制作与编程；3. 以3D打印为平台的入门工业／机械设计。这三个课程都高度依赖计算机，你要是孩子爸妈，给她买什么系统的电…
                                                <a href="#" class="toggle-expand">显示全部</a>
                                            </div>
                                            <p class="visible-expanded">
                                                <a href="#" class="answer-date-link meta-item" target="_blank">编辑于???</a>
                                            </p>

                                        </div>
                                    </div>
                                    <div class="zm-item-meta feed-meta">
                                        <div class="zm-item-meta answer-actions clearfix js-contentActions">
                                            <div class="zm-meta-panel goog-scrollfloater">
                                                <a href="#" class="follow-link zg-follow meta-item">
                                                    <span class="z-icon-follow fa fa-plus"></span>
                                                    关注问题
                                                </a>
                                                <a href="#" name="addComment" class="meta-item toggle-comment js-toggleCommentBox">
                                                    <span class="z-icon-follow fa fa-comment"></span>
                                                    &nbsp;添加评论
                                                </a>
                                            </div>
                                            <div class="comment-app-holder" style="display: none">
                                                <div class="_CommentBox_root_G_1m _CommentBox_empty_1VbA _CommentBox_bordered_3Fo-"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:forEach var="question" items="${questionList}">
                        <div class="list-group-item">
                            <div class="feed-main">
                                <div class="feed-content">
                                    <h2>
                                        <a href="#" class="question_link" target="_blank">${question.qtitle}?</a>
                                    </h2>
                                    <div class="expandable entry-body">
                                        <div class="zm-item-vote">
                                            <a href="#" class="zm-item-vote-count js-expand js-vote-count">27</a>
                                        </div>
                                        <div class="zm-votebar" data-za-module="VoteBar">
                                            <button class="up" title="赞同" aria-pressed="false">
                                                <span class="fa-caret-up"></span>
                                                <span class="label sr-only">赞成</span>
                                                <span>27</span>
                                            </button>
                                            <button class="down" title="反对" aria-pressed="false">
                                                <span class="fa fa-caret-down"></span>
                                                <span class="label sr-only">反对,不会显示你的名字</span>
                                            </button>
                                        </div>
                                        <div class="zm-item-answer-author-info">
                                            <span class="summary-wrapper">
                                                <span class="author-link-line">
                                                    <a href="#" class="author-link" target="_blank">目清</a>
                                                </span>
                                                <span title="五年网文书龄，吐槽和推荐女频网文，讨厌多角恋" class="bio">
                                                    五年网文书龄，吐槽和推荐女频网文，讨厌多角恋
                                                </span>
                                            </span>
                                        </div>
                                        <div class="zm-item-rich-text expandable js-collapse-body">
                                            <div style="display: none;">
                                                <p>诸位混知乎的大神都没孩子吧，你知道现在湾区励志理工科的孩子们课外兴趣班都流行什么吗？</p>
                                                <p>1. 以Minecraft为基础的游戏编程；</p>
                                            </div>
                                            <label>
                                                <textarea class="content" hidden>
                                                    <p>诸位混知乎的大神都没孩子吧，你知道现在湾区励志理工科的孩子们课外兴趣班都流行什么吗？</p><p>1. 以Minecraft为基础的游戏编程；</p><p>2. 机器人制作与编程；</p><p>3. 以3D打印为平台的入门工业／机械设计。</p><p>这三个课程都高度依赖计算机，你要是孩子爸妈，给她买什么系统的电脑啊？Linux？待电行不行啊？Mac？有些软件没法用啊？只有Windows了，还都是它强项啊。</p><p>你知道这些小孩子买套机器人零件要多少钱吗？报个斯坦福的camp要多少钱吗？在乎钱还能爬藤吗？小孩子正长身体，买个十几磅的Alienware就不必了吧，孩子驼背怎么办啊！而且现在小孩子都能熟练操作ipad了，触屏最好也配上，做CAD作业很有效很直观啊。</p><p>花个一千上下买个轻薄的Windows触屏电脑用，还叫事吗？</p><p>综上，现在Surface Laptop是不是真的只目标教育领域还不好说，但它目标的教育群体其实很清晰明确啊：初高中生用个chromebook不够，需要优秀硬件支持的Windows系统。</p>
                                                </textarea>
                                            </label>
                                            <div class="zh-summary summary clearfix" style="display: block">
                                                诸位混知乎的大神都没孩子吧，你知道现在湾区励志理工科的孩子们课外兴趣班都流行什么吗？1. 以Minecraft为基础的游戏编程；2. 机器人制作与编程；3. 以3D打印为平台的入门工业／机械设计。这三个课程都高度依赖计算机，你要是孩子爸妈，给她买什么系统的电…
                                                <a href="#" class="toggle-expand">显示全部</a>
                                            </div>
                                            <p class="visible-expanded">
                                                <a href="#" class="answer-date-link meta-item" target="_blank">编辑于???</a>
                                            </p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>