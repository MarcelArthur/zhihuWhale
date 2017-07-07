<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>答案页 答案页</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">

    <!-- 表头css和自己写的css -->
    <link rel="stylesheet" href="css/bootstyle.css">
    <link href="css/answer.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="root">
    <div>
        <!-- loading页面~ -->
        <div class="LoadingBar"></div>
        <!-- 导航条!导航条! -->
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
                        <a href="#" class="navbar-brand" id="random">一鲸</a>
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
                            <li><button class="btn btn-primary povositon" data-toggle="modal" data-target=".bs-example-modal-lg" type="button">提问</button></li>
                            <li><a href="#">${user.alias.aname}</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <main role="main" class="App-main">
            <div>
                <div data-za-module="QuestionItem" data-za-module-info="{}">
                    <div class="QuestionStatus"></div>
                    <div class="QuestionHeader">
                        <div class="QuestionHeader-content">
                            <div class="QuestionHeader-main">
                                <div class="QuestionHeader-topics">
                                    <c:forEach items="${question.tags}" var="Topic">
                                    <div class="Tag QuestionTopic">${Topic.tname}</div>
                                    </c:forEach>
                                    <div class="Tag QuestionTopic">前无敌</div>
                                    <div class="Tag QuestionTopic">2333666666</div>
                                </div>
                                <h1 class="QuestionHeader-title">
                                    ${question.qtitle}
                                </h1>
                                <div class="QuestionHeader-detail">
                                    <div class="QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed">
                                        <div>
                                            <span class="RichText">${question.qdescribe}</span>
                                            <button class="Button QuestionRichText-more Button--plain">显示全部</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="QuestionHeader-side">
                                <div class="QuestionHeader-follow-status">
                                    <div class="QuestionFollowStatus">
                                        <div class="NumberBoard QuestionFollowStatus-counts">
                                            <button class="Button NumberBoard-item Button--plain">
                                                <div class="NumberBoard-name">关注者</div>
                                                <div class="NumberBoard-value">747</div>
                                            </button>
                                            <div class="NumberBoard-divider"></div>
                                            <div class="NumberBoard-item">
                                                <div class="NumberBoard-name">被浏览者</div>
                                                <div class="NumberBoard-value">123</div>
                                            </div>
                                        </div>
                                        <button class="Button QuestionFollowStatus-people Button--plain" type="button">
                                        <span class="QuestionFollowStatus-people-tip">
                                            图灵 也关注了这个问题
                                        </span>
                                            <span class="UserLink">
                                            <img src="https://pic2.zhimg.com/bdb7baa2d_is.jpg" alt="图灵icon" width="26" height="26" class="Avatar Avatar--round UserLink-avatar">
                                        </span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="QuestionHeader-footer">
                            <div class="QuestionHeader-footer-inner">
                                <div class="QuestionHeader-main QuestionHeader-footer-main">
                                    <div class="QuestionHeader-actions">
                                        <button class="Button Button--plain" type="button" >
                                            <span class="fa fa-comment" style="height: 16px; width: 14px;"></span>
                                            23条评论
                                        </button>
                                        <div class="Popover">
                                            <button class="Button Button--plain" type="button">
                                                <span class="fa fa-ellipsis-h" style="height: 16px; width: 14px;"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="QuestionHeader-actions"></div>
                                </div>
                                <div class="QuestionHeader-side">
                                    <div class="QuestionButtonGroup">
                                        <button class="Button Button--primary Button--blue" type="button">关注问题</button>
                                        <button class="Button" type="button">
                                            <span class="fa fa-pencil" style="height: 16px; width: 14px;"></span>
                                            写回答
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="Question-main">
                    <div class="Question-mainColumn">
                        <div>
                            <div class="Card">
                                <a class="QuestionMainAction" href="question.jsp">
                                    查看全部 198 回答
                                </a>
                            </div>
                            <div class="Card">
                                <div class="list-group">
                                    <c:forEach items="${question.answers}" var="answer">
                                    <div class="list-group-item">
                                        <div class="ContentItem AnswerItem">
                                            <div class="ContentItem-meta">
                                                <div class="AnswerItem-meta AnswerItem-meta--related">
                                                    <div class="AuthorInfo">
                                                                <span class="UserLink AuthorInfo-avatarWrapper">
                                                            <div class="Popover">
                                                                <div>
                                                                    <a href="#" class="UserLink-link">
                                                                        <img src="https://pic3.zhimg.com/v2-0e4d37879e1fd3df6756877f185ecf4e_xs.jpg" alt="风千里" class="Avatar AuthorInfo-avatar" style="width: 38px;height: 38px;">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </span>
                                                        <div class="AuthorInfo-content">
                                                            <!-- 提供的选择标签项目-->
                                                            <div class="AuthorInfo-title">
                                                                <div class="AuthorInfo-name">
                                                                            <span class="UserLink">
                                                                                <div class="Popover">
                                                                                    <div>
                                                                                        <a href="#" class="UserLink-link">小白先森</a>
                                                                                    </div>
                                                                                </div>
                                                                            </span>
                                                                </div>
                                                            </div>
                                                            <div class="RichText AuthorInfo-badge">随便聊一聊</div>
                                                        </div>
                                                    </div>
                                                    <div class="AnswerItem-extraInfo"></div>
                                                </div>
                                            </div>
                                            <div class="RichContent is-collapsed RichContent--unescapable">
                                                <div class="RichContent-inner">
                                                            <span class="RichContent RichContent--unescapable">
                                                                ${answer.ancontent}
                                                            </span>
                                                </div>
                                                <div class="ContentItem-time">
                                                    <a href="#" target="_blank">${answer.andate}</a>
                                                </div>
                                                <div class="ContentItem-actions">
                                                            <span>
                                                                <button class="Button VoteButton VoteButton--up" type="button" aria-label="赞同">
                                                                    <span class="fa fa-caret-up" style="width: 9px;height: 16px;"></span>
                                                                    2432
                                                                </button>
                                                                <button class="Button VoteButton VoteButton--down" type="button" aria-label="反对">
                                                                    <span class="fa fa-caret-down" style="width: 9px;height: 16px;"></span>
                                                                </button>
                                                            </span>
                                                    <button type="button" class="Button ContentItem-action Button--plain">
                                                        <span class="fa fa-comment" style="height: 16px; width: 12px;"></span>
                                                        99条评论
                                                    </button>
                                                    <button type="button" class="Button ContentItem-action Button--plain">
                                                        <span class="fa fa-ellipsis-h" style="height: 16px; width: 12px;"></span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
                                    <div class="list-group-item">
                                        <div class="ContentItem AnswerItem">
                                            <div class="ContentItem-meta">
                                                <div class="AnswerItem-meta AnswerItem-meta--related">
                                                    <div class="AuthorInfo">
                                                                <span class="UserLink AuthorInfo-avatarWrapper">
                                                            <div class="Popover">
                                                                <div>
                                                                    <a href="#" class="UserLink-link">
                                                                        <img src="https://pic3.zhimg.com/v2-0e4d37879e1fd3df6756877f185ecf4e_xs.jpg" alt="风千里" class="Avatar AuthorInfo-avatar" style="width: 38px;height: 38px;">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </span>
                                                        <div class="AuthorInfo-content">
                                                            <!-- 提供的选择标签项目-->
                                                            <div class="AuthorInfo-title">
                                                                <div class="AuthorInfo-name">
                                                                            <span class="UserLink">
                                                                                <div class="Popover">
                                                                                    <div>
                                                                                        <a href="#" class="UserLink-link">小白先森</a>
                                                                                    </div>
                                                                                </div>
                                                                            </span>
                                                                </div>
                                                            </div>
                                                            <div class="RichText AuthorInfo-badge">随便聊一聊</div>
                                                        </div>
                                                    </div>
                                                    <div class="AnswerItem-extraInfo"></div>
                                                </div>
                                            </div>
                                            <div class="RichContent is-collapsed RichContent--unescapable">
                                                <div class="RichContent-inner">
                                                            <span class="RichContent RichContent--unescapable">
                                                                <p>澳门人撸过</p><p>1.有很多很多香港人是很少去过大陆的，他们对大陆真心停留在几十年前，还记得之前我大学里一个香港人问我去上海玩一周2000块够不够，相反澳门人近珠海，经常出入关口也就知道大陆是个什么样子。</p><p>2.经济，很多人或许不知道，澳门旅游业上挣得钱是远超香港的，澳门政府有钱的不行，每年都给居民发钱不说，还有各种医疗卷，学习补贴，学费津贴什么的，优惠政策实在太多太多了，同比香港，他们闹事不就是下层的那群人赚不到钱看不到出头日争不过外来的大陆人么。</p><p>3.澳门人和香港人天生有种互相瞧不起的心理，香港人觉得澳门人向大陆谄媚，但是澳门人很清楚自己的钱从哪里来，所以从来都不逼逼，有道是“闷声发大财”</p>
                                                            </span>
                                                </div>
                                                <div class="ContentItem-time">
                                                    <a href="#" target="_blank">发布于 2015-09-23</a>
                                                </div>
                                                <div class="ContentItem-actions">
                                                            <span>
                                                                <button class="Button VoteButton VoteButton--up" type="button" aria-label="赞同">
                                                                    <span class="fa fa-caret-up" style="width: 9px;height: 16px;"></span>
                                                                    2432
                                                                </button>
                                                                <button class="Button VoteButton VoteButton--down" type="button" aria-label="反对">
                                                                    <span class="fa fa-caret-down" style="width: 9px;height: 16px;"></span>
                                                                </button>
                                                            </span>
                                                    <button type="button" class="Button ContentItem-action Button--plain">
                                                        <span class="fa fa-comment" style="height: 16px; width: 12px;"></span>
                                                        99条评论
                                                    </button>
                                                    <button type="button" class="Button ContentItem-action Button--plain">
                                                        <span class="fa fa-ellipsis-h" style="height: 16px; width: 12px;"></span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="list-group-item">
                                        <div class="ContentItem AnswerItem">
                                            <div class="ContentItem-meta">
                                                <div class="AnswerItem-meta AnswerItem-meta--related">
                                                    <div class="AuthorInfo">
                                                                <span class="UserLink AuthorInfo-avatarWrapper">
                                                            <div class="Popover">
                                                                <div>
                                                                    <a href="#" class="UserLink-link">
                                                                        <img src="https://pic3.zhimg.com/v2-0e4d37879e1fd3df6756877f185ecf4e_xs.jpg" alt="风千里" class="Avatar AuthorInfo-avatar" style="width: 38px;height: 38px;">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </span>
                                                        <div class="AuthorInfo-content">
                                                            <!-- 提供的选择标签项目-->
                                                            <div class="AuthorInfo-title">
                                                                <div class="AuthorInfo-name">
                                                                            <span class="UserLink">
                                                                                <div class="Popover">
                                                                                    <div>
                                                                                        <a href="#" class="UserLink-link">小白先森</a>
                                                                                    </div>
                                                                                </div>
                                                                            </span>
                                                                </div>
                                                            </div>
                                                            <div class="RichText AuthorInfo-badge">随便聊一聊</div>
                                                        </div>
                                                    </div>
                                                    <div class="AnswerItem-extraInfo"></div>
                                                </div>
                                            </div>
                                            <div class="RichContent is-collapsed RichContent--unescapable">
                                                <div class="RichContent-inner">
                                                            <span class="RichContent RichContent--unescapable">
                                                                <p>澳门人撸过</p><p>1.有很多很多香港人是很少去过大陆的，他们对大陆真心停留在几十年前，还记得之前我大学里一个香港人问我去上海玩一周2000块够不够，相反澳门人近珠海，经常出入关口也就知道大陆是个什么样子。</p><p>2.经济，很多人或许不知道，澳门旅游业上挣得钱是远超香港的，澳门政府有钱的不行，每年都给居民发钱不说，还有各种医疗卷，学习补贴，学费津贴什么的，优惠政策实在太多太多了，同比香港，他们闹事不就是下层的那群人赚不到钱看不到出头日争不过外来的大陆人么。</p><p>3.澳门人和香港人天生有种互相瞧不起的心理，香港人觉得澳门人向大陆谄媚，但是澳门人很清楚自己的钱从哪里来，所以从来都不逼逼，有道是“闷声发大财”</p>
                                                            </span>
                                                </div>
                                                <div class="ContentItem-time">
                                                    <a href="#" target="_blank">发布于 2015-09-23</a>
                                                </div>
                                                <div class="ContentItem-actions">
                                                            <span>
                                                                <button class="Button VoteButton VoteButton--up" type="button" aria-label="赞同">
                                                                    <span class="fa fa-caret-up" style="width: 9px;height: 16px;"></span>
                                                                    2432
                                                                </button>
                                                                <button class="Button VoteButton VoteButton--down" type="button" aria-label="反对">
                                                                    <span class="fa fa-caret-down" style="width: 9px;height: 16px;"></span>
                                                                </button>
                                                            </span>
                                                    <button type="button" class="Button ContentItem-action Button--plain">
                                                        <span class="fa fa-comment" style="height: 16px; width: 12px;"></span>
                                                        99条评论
                                                    </button>
                                                    <button type="button" class="Button ContentItem-action Button--plain">
                                                        <span class="fa fa-ellipsis-h" style="height: 16px; width: 12px;"></span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="Card" data-za-module="MessageItem">
                                <a class="QuestionMainAction" href="question.jsp">
                                    查看全部 198 回答
                                </a>
                            </div>

                        </div>
                    </div>
                    <div></div>
                    <div class="Question-sideColumn">
                        <div>
                            <div class="Card AnswerAuthor">
                                <div class="Card-header AnswerAuthor-title">
                                    <div class="Card-headerText">关于作者</div>
                                </div>
                                <div class="Card-section">
                                    <div class="AnswerAuthor-user">
                                        <div class="AnswerAuthor-user-avatar">
                                            <span class="UserLink">
                                                <a href="#" class="UserLink-link">
                                                    <img src="https://pic4.zhimg.com/c7514384b_im.jpg" alt="" width="60" height="60">
                                                </a>
                                            </span>
                                        </div>
                                        <div class="AnswerAuthor-user-content">
                                            <div class="AnswerAuthor-user-name">
                                                <span class="UserLink">
                                                    <a href="#" class="UserLink-link">Rua</a>
                                                </span>
                                            </div>
                                            <div class="AnswerAuthor-user-headline">
                                                <div class="RichText">通信业</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="Card-section">
                                    <div class="AnswerAuthor-item">
                                        <span class="AnswerAuthor-item-icon">
                                            <span class="Icon fa fa-users" style="height: 16px; width: 14px;"></span>
                                        </span>
                                        <span class="AnswerAuthor-item-value">
                                            <span>
                                                <span>
                                                    <span class="UserLink">
                                                        <a href="#" class="UserLink-link">Kitty</a>
                                                    </span>
                                                </span>
                                            </span>
                                            也关注了他
                                        </span>
                                    </div>

                                </div>
                                <div class="Card-section">
                                    <div class="AnswerAuthor-counts">
                                        <div class="NumberBoard">
                                            <a href="#" type="button" class="Button NumberBoard-item Button--plain">
                                                <div class="NumberBoard-name">回答</div>
                                                <div class="NumberBoard-value">1024</div>
                                            </a>
                                            <a href="#" type="button" class="Button NumberBoard-item Button--plain">
                                                <div class="NumberBoard-name">文章</div>
                                                <div class="NumberBoard-value">0</div>
                                            </a>
                                            <a href="#" type="button" class="Button NumberBoard-item Button--plain">
                                                <div class="NumberBoard-name">关注者</div>
                                                <div class="NumberBoard-value">1737</div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="MemberButtonGroup AnswerAuthor-buttons">
                                        <button class="Button FollowButton Button--primary Button--blue" type="button">
                                            <span class="Icon FollowButton-icon fa fa-plus" style="height: 16px;width: 12px" ></span>
                                            关注他
                                        </button>
                                        <button class="Button" type="button">
                                            <span class="Icon Button-icon fa fa-comment"></span>
                                            <span>发私信</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="Footer">
                            <a href="#" target="_blank" class="Footer-item">诺诺</a>
                            <span class="fa fa-dot-circle-o"></span>
                            <a href="#" target="_blank" class="Footer-item">与我联系</a>
                            <span class="fa fa-dot-circle-o"></span>
                            <a href="#" target="_blank" class="Footer-item">一鲸</a>
                            <span class="fa fa-dot-circle-o"></span>
                            <a href="#" target="_blank" class="Footer-item">诺诺的小站</a>
                            <span class="fa fa-dot-circle-o"></span>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>





    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>