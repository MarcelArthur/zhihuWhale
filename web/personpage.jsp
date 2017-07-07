<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="user" scope="session" type="nuonuo.userp.User"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>一鲸</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstyle.css">


    <!-- CSS -->
    <link rel="stylesheet" href="css/personalinformation.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div>
    <div>
        <nav class="navbar navbar-default" id="MM">
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
                        <li><a href="homepagefill.jsp">首页 <span class="sr-only">(current)</span></a></li>
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">个人<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath}/setting.jsp">设置</a></li>
                                <li><a href="question.jsp">提醒 <span class="badge">10</span></a></li>
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
    </div>
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">提问</h4>
                </div>
                <form action="" id="question_sub" onsubmit="">
                    <div class="form-group">
                        <div class="modal-body">
                            <label for="que_title" class="sr-only">标题</label>
                            <textarea name="que_title" id="que_title" cols="63" rows="3" class="form-control"></textarea>
                            <label for="que_describe">问题说明（可选)</label><br/>
                            <textarea name="que_describe" id="que_describe" cols="63" rows="4" class="form-control"></textarea>
                            <label for="que_tags">选择话题：</label>
                            <input type="text" class="form-control input-lg" id="que_tags" name="que_tags"/>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="submit" class="btn btn-primary">发布</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div>
        <div>
            <div class="ProfileHeader" id="ProfileHeader">
                    <div class="Card">
                        <div class="ProfileHeader-userCover">
                            <div class="UserCoverEditor">
                                <div class="UserCoverGuide">
                                    <div class="UserCoverGuide-inner"></div>
                                </div>
                                <div class="UserCover UserCover--colorBlock"></div>
                            </div>
                        </div>
                        <div class="ProfileHeader-wrapper">
                            <div class="ProfileHeader-main">
                                <div class="ProfileHeader-avatar UserAvatarEditor" style="top: -25px;">
                                    <div class="UserAvatar">
                                        <img src="https://pic3.zhimg.com/6773628f173676e5b95e301935398412_xl.jpg" class="Avatar Avatar--large UserAvatar-inner" width="160" height="160" alt="头像">
                                    </div>
                                    <div class="Mask UserAvatarEditor-mask Mask-hidden">
                                        <div class="Mask-mask Mask-mask--black UserAvatarEditor-maskInner"></div>
                                    </div>
                                </div>
                                <div class="ProfileHeader-content">
                                    <div class="ProfileHeader-contentHead"></div>
                                    <div class="ProfileHeader-contentBody" style="height: 52px">
                            <span>
                                <div class="ProfileHeader-info">
                                    <div class="ProfileHeader-infoItem">
                                        <div class="ProfileHeader-iconWrapper"></div>
                                        计算机软件
                                    </div>
                                    <div class="ProfileHeader-infoItem">
                                        <div class="ProfileHeader-iconWrapper"></div>
                                        软件工程
                                    </div>
                                </div>
                            </span>
                                    </div>
                                    <div class="ProfileHeader-contentFooter">
                                        <button class="Button ProfileHeader-expandButton Button--plain">
                                            <i class="icon-chevron-down ProfileHeader-expandButton Icon "></i>
                                            个人信息
                                        </button>
                                        <div class="ProfileHeader-buttons">
                                            <button class="Button Button--blue" >
                                                编辑个人资料
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <div class="Profile-main">
                <div class="Profile-mainColumn">
                    <div class="Card ProfileMain" id="ProfileMain">
                        <div class="ProfileMain-header">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active" id="zzc"><a href="#tab-trends" role="tab" data-toggle="tab" class="" id="trends">动态</a></li>
                                <li><a href="#tab-answer" role="tab" data-toggle="tab" class="" id="ans">回答</a></li>
                                <li><a href="#tab-question" role="tab" data-toggle="tab" class="" id="que">提问</a></li>
                                <li><a href="#tab-focus" role="tab" data-toggle="tab" class="" id="focus">关注</a></li>
                            </ul>
                        </div>
                        <div></div>
                        <div class="tab-content">
                                <div class="tab-pane active" id="tab-trends">
                                    <div class="maincontent">
                                    <div class="panel panel-default" id="paneldate">
                                        <div class="panel-heading">
                                            我的回答
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
                                                        <h5 class="media-heading text-primary"><a href="#" id="quedata"> 提问是什么情况？</a></h5>
                                                        <span class="h6"><a href="#" class="acolor" id="mengya"><strong>萌芽</strong></a></span>&nbsp;&nbsp;<span class="text-muted h6" id="songshu">三只松鼠</span>
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
                                </div>
                                <div class="tab-pane" id="tab-answer">
                                    <div class="maincontent">
                                        <div class="panel panel-default" id="change">
                                            <div class="panel-heading">
                                                我的动态
                                            </div>
                                            <div class="panel-body">
                                                <ul class="media-list" id="questionul">
                                                    <li class="media">
                                                        <a href="#" class="pull-left">
                                                            <img class="media-object" src="http://tp2.sinaimg.cn/3306361973/50/22875318196/0" alt="头像">
                                                        </a>
                                                        <div class="media-body">
                                                            <div>
                                                                <p class="text-muted">3小时前</p>
                                                            </div>
                                                            <h5 class="media-heading text-primary"><a href="#">人民的名义与魏则西</a></h5>
                                                            <span class="h6"><a href="#" class="acolor"><strong>${user.alias.aname}</strong></a></span>&nbsp;&nbsp;<span class="text-muted h6">${user.alias.adescribe}</span>
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
                                </div>
                                <div class="tab-pane" id="tab-question">
                                    <div class="list-group">
                                        <div class="list-group-item">
                                            <h4><a href="#" >搞事情搞事情</a></h4>
                                            <div class="text-muted">时间·回答数·关注数</div>
                                        </div>
                                        <div class="list-group-item">
                                            <h4><a href="#">产品级的功能模块</a></h4>
                                            <div class="text-muted">时间·回答数·关注数</div>
                                        </div>
                                        <div class="list-group-item">
                                            <h4><a href="#">写完了啊啊啊啊啊啊</a></h4>
                                            <div class="text-muted">时间·回答数·关注数</div>
                                        </div>
                                        <div class="list-group-item">
                                            <h4><a href="#">2333333</a></h4>
                                            <div class="text-muted">知道怎么搞事情吗</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-focus">
                                    <div class="list-group" id="wings">
                                        <div class="list-group-item" >
                                            <div class="SubTabs">
                                                <a class="SubTabs-item is-active" href="#">
                                                    我关注的人
                                                </a>
                                                <a href="#" class="SubTabs-item">
                                                    关注我的人
                                                </a>
                                            </div>
                                        </div>
                                        <div class="list-group-item">
                                            <div class="ContentItem">
                                                <div class="Content-main">
                                                    <div class="ContentItem-image">
                                                        <span class="UserLink UserItem-avatar">
                                                            <div class="Popover">
                                                                <a href="#" class="UserLink-link" >
                                                                    <img class="Avatar Avatar--large UserLink-avatar" src="https://pic4.zhimg.com/0b0e428336a4f5a6279e4a48786694b7_im.jpg"
                                                                         alt="小白先森" width="60" height="60">
                                                                </a>
                                                            </div>
                                                        </span>
                                                    </div>
                                                    <div class="ContentItem-head">
                                                        <h2 class="ContentItem-title">
                                                            <div class="UserItem-title">
                                                                <span class="UserLink UserItem-name">
                                                                    <div class="Popover">
                                                                        <a href="#" class="UserLink-link">吴梦影</a>
                                                                    </div>
                                                                </span>
                                                                <span class="FollowStatus">关注了你</span>
                                                            </div>
                                                        </h2>
                                                        <div class="ContentItem-meta">
                                                            <div>
                                                                <div class="RichText"></div>
                                                                <div class="ContentItem-status">
                                                                    <span class="ContentItem-statusItem">0回答</span>
                                                                    <span class="ContentItem-statusItem">0文章</span>
                                                                    <span class="ContentItem-statusItem">4关注者</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ContentItem-extra"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-group-item">
                                            <div class="ContentItem">
                                                <div class="Content-main">
                                                    <div class="ContentItem-image">
                                                        <span class="UserLink UserItem-avatar">
                                                            <div class="Popover">
                                                                <a href="#" class="UserLink-link" >
                                                                    <img class="Avatar Avatar--large UserLink-avatar" src="https://pic4.zhimg.com/0b0e428336a4f5a6279e4a48786694b7_im.jpg"
                                                                         alt="小白先森" width="60" height="60">
                                                                </a>
                                                            </div>
                                                        </span>
                                                    </div>
                                                    <div class="ContentItem-head">
                                                        <h2 class="ContentItem-title">
                                                            <div class="UserItem-title">
                                                                <span class="UserLink UserItem-name">
                                                                    <div class="Popover">
                                                                        <a href="#" class="UserLink-link">吴梦影</a>
                                                                    </div>
                                                                </span>
                                                                <span class="FollowStatus">关注了你</span>
                                                            </div>
                                                        </h2>
                                                        <div class="ContentItem-meta">
                                                            <div>
                                                                <div class="RichText"></div>
                                                                <div class="ContentItem-status">
                                                                    <span class="ContentItem-statusItem">0回答</span>
                                                                    <span class="ContentItem-statusItem">0文章</span>
                                                                    <span class="ContentItem-statusItem">4关注者</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ContentItem-extra"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-group-item">
                                            <div class="ContentItem">
                                                <div class="Content-main">
                                                    <div class="ContentItem-image">
                                                        <span class="UserLink UserItem-avatar">
                                                            <div class="Popover">
                                                                <a href="#" class="UserLink-link" >
                                                                    <img class="Avatar Avatar--large UserLink-avatar" src="https://pic4.zhimg.com/0b0e428336a4f5a6279e4a48786694b7_im.jpg"
                                                                         alt="小白先森" width="60" height="60">
                                                                </a>
                                                            </div>
                                                        </span>
                                                    </div>
                                                    <div class="ContentItem-head">
                                                        <h2 class="ContentItem-title">
                                                            <div class="UserItem-title">
                                                                <span class="UserLink UserItem-name">
                                                                    <div class="Popover">
                                                                        <a href="#" class="UserLink-link">吴梦影</a>
                                                                    </div>
                                                                </span>
                                                                <span class="FollowStatus">关注了你</span>
                                                            </div>
                                                        </h2>
                                                        <div class="ContentItem-meta">
                                                            <div>
                                                                <div class="RichText"></div>
                                                                <div class="ContentItem-status">
                                                                    <span class="ContentItem-statusItem">0回答</span>
                                                                    <span class="ContentItem-statusItem">0文章</span>
                                                                    <span class="ContentItem-statusItem">4关注者</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ContentItem-extra"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-group-item">
                                            <div class="ContentItem">
                                                <div class="Content-main">
                                                    <div class="ContentItem-image">
                                                        <span class="UserLink UserItem-avatar">
                                                            <div class="Popover">
                                                                <a href="#" class="UserLink-link" >
                                                                    <img class="Avatar Avatar--large UserLink-avatar" src="https://pic4.zhimg.com/0b0e428336a4f5a6279e4a48786694b7_im.jpg"
                                                                         alt="小白先森" width="60" height="60">
                                                                </a>
                                                            </div>
                                                        </span>
                                                    </div>
                                                    <div class="ContentItem-head">
                                                        <h2 class="ContentItem-title">
                                                            <div class="UserItem-title">
                                                                <span class="UserLink UserItem-name">
                                                                    <div class="Popover">
                                                                        <a href="#" class="UserLink-link">吴梦影</a>
                                                                    </div>
                                                                </span>
                                                                <span class="FollowStatus">关注了你</span>
                                                            </div>
                                                        </h2>
                                                        <div class="ContentItem-meta">
                                                            <div>
                                                                <div class="RichText"></div>
                                                                <div class="ContentItem-status">
                                                                    <span class="ContentItem-statusItem">0回答</span>
                                                                    <span class="ContentItem-statusItem">0文章</span>
                                                                    <span class="ContentItem-statusItem">4关注者</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ContentItem-extra"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
                <!-- 右侧块类型 -->
                <div class="Profile-sideColumn" id="Profile-sideColumn">
                    <div class="Card">
                        <div class="Card-header Profile-sideColumnTitle">
                            <div class="Card-headerText">个人成就</div>
                        </div>
                        <div class="Profile-sideColumnItems ">
                            <div class="Profile-sideColumnItems ">
                                <div class="IconGraf">
                                    <div class="IconGraf-iconWrapper"></div>
                                    获得140次赞同
                                </div>
                                <div class="Profile-sideColumnItemValue">
                                    &nbsp;获得109次感谢， 1次收藏
                                </div>
                            </div>
                            <div class="Profile-sideColumnItems ">

                            </div>
                        </div>
                    </div>
                    <div class=""></div>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- 命名好麻烦 随便写个名字注释的js文件-->
    <script src="js/personpage.js"></script>
</body>
</html>
