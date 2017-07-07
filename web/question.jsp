<jsp:useBean id="user" scope="session" type="nuonuo.userp.User"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="question" scope="request" type="nuonuo.questions.Question"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！-->
    <title>${question.qtitle}</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">

    <!-- 表头css和自己写的css -->
    <link rel="stylesheet" href="css/bootstyle.css">
    <!--引入wangEditor.css-->
    <link rel="stylesheet" type="text/css" href="wangEditor-2.1.23/dist/css/wangEditor.min.css">

    <link href="css/question.css" rel="stylesheet">



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
        </div>
        <main role="main" class="App-main">
            <div>
                <div data-za-module="QuestionItem" data-za-module-info="{}">
                    <div class="QuestionStatus"></div>
                    <div class="QuestionHeader">
                        <div class="QuestionHeader-content">
                            <div class="QuestionHeader-main">
                                <div class="QuestionHeader-topics">
                                <c:forEach var="topic" items="${question.tags}">
                                    <div class="Tag QuestionTopic">${topic.tname}</div>
                                </c:forEach>
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
                                            <a href="#gg" name="Editable">写回答</a>
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
                            <div class="QuestionAnswers-answers">
                                <div class="Card">
                                    <div class="List">
                                        <div class="List-header">
                                            <h4 class="List-headerText">
                                                <span>235条回答</span>
                                            </h4>
                                            <div class="List-headerOptions"></div>
                                        </div>
                                        <div>
                                            <div class="list-group">
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
                                    </div>
                                </div>
                                <div class="Card">
                                    <button class="Button QuestionMainAction" type="button">更多</button>
                                </div>
                            </div>
                            <div class="Card QuestionAnswers-answerAdd">
                                <div class="AnswerAdd">
                                    <div class="AnswerAdd-header">
                                        <div class="AuthorInfo AnswerAdd-info">
                                            <span class="UserLink AuthorInfo-avatarWrapper">
                                                <img src="https://pic3.zhimg.com/6773628f173676e5b95e301935398412_xs.jpg" alt="WhaleArthur" class="Avatar AuthorInfo-avatar" width="38" height="38">
                                            </span>
                                            <div class="AuthorInfo-content">
                                                <div class="AuthorInfo-head">
                                                    <span class="UserLink AuthorInfo-name" id="aname">
                                                        ${user.alias.aname}
                                                    </span>
                                                </div>
                                                <div class="AuthorInfo-detail">
                                                    <div class="AuthorInfo-badge">
                                                        <span class="AnswerAdd-bio" id="adescribe">${user.alias.adescribe}</span>
                                                        <button class="Button ModifyButton AnswerAdd-topicBiosButton Button--link" type="button">
                                                            <span class="fa fa-pencil" style="height: 16px;width: 12px;"></span>
                                                            编辑话题经验
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <form method="post" id="postanswer">
                                        <input type="hidden" name="q_qtitle" value="${question.qtitle}" id="q_qtitle"/>
                                        <div class="AnswerForm-editor Input-wrapper Input-wrapper--spread Input-wrapper--large Input-wrapper--noPadding" id="gg">
                                            <label for="Editable"></label>
                                            <textarea class="Input Editable" id="Editable" style="max-height: 220px">
                                                <p>写点回答...</p>
                                            </textarea>
                                        </div>
                                        <div>
                                            <div class="Sticky AnswerForm-footer is-bottom">
                                                <div class="AnswerForm-status"></div>
                                                <div class="AnswerForm-footerRight">
                                                    <div class="Popover"></div>
                                                    <button class="Button AnswerForm-submit Button--primary Button--blue" type="submit">提交回答</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="CollapsedAnswers-bar"></div>
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
    <!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->
    <script type="text/javascript" src="wangEditor-2.1.23/dist/js/wangEditor.min.js"></script>
    <script src="js/question.js"></script>
    <!-- 命名好麻烦 随便写个名字注释的js文件-->


</body>
</html>