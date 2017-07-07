<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>主页内容</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstyle.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <!-- 列表头-->
    <nav class="navbar navbar-inverse" id="MM">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
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
                    <li><a href="#" >首页 <span class="sr-only">(current)</span></a></li>
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
    <!-- 动态timeliness列表 -->
    <div id="changerun">
        <div class="maincontent">
            <div class="panel panel-default" id="change">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-list"></span>
                    最新动态
                </div>
                <div class="panel-body">
                    <ul class="media-list">
                        <li class="media">
                            <a href="#" class="pull-left">
                                <img class="media-object" src="http://tp2.sinaimg.cn/3306361973/50/22875318196/0" alt="头像">
                            </a>
                            <div class="media-body">
                                <div>
                                    <p class="text-muted">3小时前</p>
                                </div>
                                <h5 class="media-heading text-primary"><a href="#">人民的名义与魏则西</a></h5>
                                <span class="h6"><a href="#" class="acolor"><strong>萌芽</strong></a></span>&nbsp;&nbsp;<span class="text-muted h6">只有黄昏的世界</span>
                                <p>（有严重剧透，阅读需谨慎）是祁同伟。祁同伟这个角色如此复杂，使得剧里的主要角色都是都是他的镜面。如果祁同伟身中三颗子弹用生命做代价可以感动陈阳，那么他就能成为用海蛎子感动欧阳箐的李达康，相信凭借出色的业务能力就可以成为一个优秀的干部。如果… </p>
                            </div>
                            <div class="media-bottom">
                                <p class="text-muted">
                                    <a href="#" class="text-muted" >
                                        <span class="glyphicon glyphicon-plus"></span>
                                        <small>关注问题</small>
                                    </a>
                                    <a href="#" class="text-muted meta-item" >
                                        <span class="glyphicon glyphicon-comment"></span>
                                        <small>33条评论</small>
                                    </a>
                                </p>
                            </div>
                        </li>
                        <li class="media">
                            <a href="#" class="pull-left">
                                <img class="media-object" src="http://tp2.sinaimg.cn/3306361973/50/22875318196/0" alt="头像">
                            </a>
                            <div class="media-body">
                                <div>
                                    <p class="text-muted">3小时前</p>
                                </div>
                                <h5 class="media-heading text-primary"><a href="#">读完博士，我发现我未来的孩子依然有可能身处寒门，我该怎么办？</a></h5>
                                <span class="h6"><a href="#" class="acolor"><strong>俗不可耐</strong></a></span>&nbsp;&nbsp;<span class="text-muted h6">一人一谷就是又二又俗</span>
                                <p>最近，Twitter的一位网友@prograpslady在网上看到说：如果你在地上围一个四方形，你的猫就会坐进去。有这么神奇的事？！这位网友抱着怀疑的心态，跟老妈一起试了试，没想到竟然成功了！说好的高冷和傲娇呢，怎么被一个框框就征服了？！网友们也觉得不可置信…</p>
                            </div>
                            <div class="media-bottom">
                                <p class="text-muted">
                                    <a href="#" class="text-muted" >
                                        <span class="glyphicon glyphicon-plus"></span>
                                        <small>关注问题</small>
                                    </a>
                                    <a href="#" class="text-muted meta-item" >
                                        <span class="glyphicon glyphicon-comment"></span>
                                        <small>33条评论</small>
                                    </a>
                                </p>
                            </div>
                        </li>
                        <li class="media">
                            <a href="#" class="pull-left">
                                <img class="media-object" src="http://tp2.sinaimg.cn/3306361973/50/22875318196/0" alt="头像">
                            </a>
                            <div class="media-body">
                                <div>
                                    <p class="text-muted">3小时前</p>
                                </div>
                                <h5 class="media-heading">小白先森</h5>
                                <h6>&nbsp;&nbsp;——————一个任性的少年</h6>
                                <p>大漠孤烟直,场合落日圆</p>
                            </div>
                            <div class="media-bottom">
                                <p class="text-muted">
                                    <a href="#" class="text-muted" >
                                        <span class="glyphicon glyphicon-plus"></span>
                                        <small>关注问题</small>
                                    </a>
                                    <a href="#" class="text-muted meta-item" >
                                        <span class="glyphicon glyphicon-comment"></span>
                                        <small>33条评论</small>
                                    </a>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="main-sidebar">
            <div class="panel panel-default ow-sidear">
                <div class="panel-body">
                    <ul class="ow-side-nav">
                        <li class="ow-side-nav-li">
                            <a href="#" class="ow-side-nav-link">
                                <span class="glyphicon glyphicon-bookmark"></span>
                                我的收藏
                            </a>
                        </li>
                        <li class="ow-side-nav-li">
                            <a href="#" class="ow-side-nav-link">
                                <span class="glyphicon glyphicon-check"></span>
                                我关注的问题
                            </a>
                        </li>
                        <li class="ow-side-nav-li">
                            <a href="#" class="ow-side-nav-link">
                                <span class="glyphicon glyphicon-lamp"></span>
                                邀请我回答的问题
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="panel panel-default ow-sidear-s">
                <div class="panel-heading" id="headmap">
                    <span class="panel-h-s">One Whale专栏</span>
                </div>
                <div class="panel-body">
                    <ul class="ow-side-nav">
                        <li class="ow-side-nav-li">
                            <a href="#" class="ow-side-nav-link">
                                <span class="glyphicon glyphicon-modal-window"></span>
                                文章<i>•</i>专栏
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>




    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/nfc.js"></script>
</body>
</html>