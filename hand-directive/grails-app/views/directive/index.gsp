<!DOCTYPE html>
<html class="st-layout ls-top-navbar ls-bottom-footer hide-sidebar sidebar-r2" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>汉得移动前端库</title>

    <asset:stylesheet src="css/theme-core.min.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="css/module-essentials.min.css"/>
    <asset:stylesheet src="css/module-layout.min.css"/>
    <asset:stylesheet src="css/module-sidebar.min.css"/>
   %{-- <asset:stylesheet src="css/module-maps.min.css"/>--}%
    <asset:stylesheet src="css/module-sidebar-skins.min.css"/>
    <asset:stylesheet src="css/module-navbar.min.css"/>
    <asset:stylesheet src="css/module-timeline.min.css"/>
    <asset:stylesheet src="css/module-cover.min.css"/>
    <asset:stylesheet src="css/module-chat.min.css"/>
    <asset:stylesheet src="css/animate.css"/>
    <asset:stylesheet src="comment_style.css"/>
    <asset:stylesheet src="css/style.css"/>
    <asset:stylesheet src="css/sweetalert.css"/>

    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">

</head>
<body>
<!-- Wrapper required for sidebar transitions -->
<div class="st-container">
    <!-- Fixed navbar -->
    <div class="navbar navbar-main navbar-primary navbar-fixed-top" role="navigation" style="box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.3);">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--<a href="#sidebar-chat" data-toggle="sidebar-menu" class="toggle pull-right visible-xs"><i class="fa fa-comments"></i></a>-->
                <a class="navbar-brand" href="#">汉得移动前端库</a>

            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="main-nav">
               %{-- <ul class="nav navbar-nav">
                    --}%%{--<li style="border: 1px solid red"><a href="#">删&nbsp;&nbsp;除&nbsp;&nbsp;<i class="fa fa-toggle-off" style="font-weight: 600;font-size: 20px;"></i></a>
                    </li>--}%%{--
                 --}%%{--   <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">About</a>
                            </li>
                            <li><a href="#">Friends</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">UI Components <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Buttons</a>
                            </li>
                            <li><a href="#">Icons</a>
                            </li>
                        </ul>
                    </li>--}%%{--
                </ul>--}%
                <ul class="nav navbar-nav  navbar-right ">
                    <g:if test="${session.user!=null}">
                        <li  title="添加" onclick="openModal('myModal')"><a href="#"><img src="/hand-directive/assets/add.png" alt="添加" style="width: 20px;height: 20px;"/></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle user" data-toggle="dropdown">
                                <img src="/hand-directive/assets/guy-5.jpg" alt="Bill" class="img-circle" width="40" /> ${session.user?.username} <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu" style="opacity: 0.9;min-width: 120px;">
                               %{-- <li class="font-icon-style del-option" onclick="delToggle()"><a href="#"><i class="fa fa-toggle-off"></i>&nbsp;删&nbsp;除</a></li>--}%
                                <li class="font-icon-style"><a href="${createLink(controller: 'user',action: 'logout')}"><i class="fa fa-sign-out"></i>&nbsp;退&nbsp;出</a>
                                </li>
                            </ul>
                        </li>
                    </g:if>
                    <g:else>
                        <li title="请登录" onclick="openModal('loginModal')">
                            <a href="#"><img src="/hand-directive/assets/login.png"  style="width: 20px;height: 20px;"/>&nbsp;请登录</a>
                        </li>
                    </g:else>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </div>
    <!-- Sidebar component with st-effect-1 (set on the toggle button within the navbar) -->

    <div class="st-pusher" id="content">
        <div class="st-content">
            <div class="st-content-inner">
                <div class="container" >
                    <div class="row item-row timeline" data-toggle="isotope" id="container">
                        %{--<div class="col-xs-12 col-md-6 col-lg-4 item" style="position: absolute;left:0px;">
                            <div class="items">
                                --}%%{--<g:if test="${session.user!=null}">--}%%{--
                                    <div class="pull-right close-op" style="display: block;">
                                        <a class="close-link close-link-style" onclick="edit_directive('id')" title="修改该条指令">
                                            <i class="fa fa-pencil"></i>
                                        </a>
                                        <a class="close-link close-link-style" onclick="del_directive('id')" title="删除该条指令">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                --}%%{--</g:if>--}%%{--
                                <div class="frame-box">
                                    <iframe src="http://sandbox.runjs.cn/show/w8pzyydx" class="frame-content" onload="" ></iframe>
                                </div>

                                <div style="padding: 5% 5% 0 5%;">
                                    <span><img src="/hand-directive/assets/guy-5.jpg" alt="Bill" class="img-circle" width="40" style="margin-bottom: 2%;margin-right: 3%"/><strong>陈宇超</strong>
                                        <span  class="pull-right" id="emampleid"><button class="btn bgm-deeporange btn-icon btn-default btn-style" onclick=""><i class="fa fa-heart-o"></i>&nbsp;&nbsp;<span class="likeNum">135</span>&nbsp;次</button></span>
                                    </span>
                                </div>
                                <div class="dec-text">
                                    <p class="version-style">version 1.0.0</p>
                                    <p class="dec-color">头图指令Jquery插件 实现球面滚动效果 特效代码时从网上Copy过来的Jquery插件 实现球面滚动效果 特效代码时从网上Copy过来的Jquery插件</p>
                                </div>
                                <div class="btn-group btn-group-justified group-style" role="group">
                                    <div class="btn-group" role="group">
                                        <a type="button" class="btn  btn-lg btn-code-style" href="http://runjs.cn/code/w8pzyydx"  target="_blank">源代码</a>
                                    </div>
                                    <div class="btn-group" role="group">
                                        <a type="button" class="btn  btn-lg btn-show-style" href="http://sandbox.runjs.cn/show/w8pzyydx"  target="_blank">全屏展示</a>
                                    </div>
                                </div>


                                <div class="comment-div">
                                    <div class="chat-discussion">
                                        <div class="chat-message left">
                                            <div class="message">
                                                <img src="/hand-directive/assets/guy-1.jpg" alt="Bill" class="message-avatar" />
                                                <a class="message-author" href="#">群众</a>
                                                <span class="message-date">
                                                    2015/09/08 11:32
                                                </span>
                                                <span class="message-content">
                                                    大哥好叼
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div  class="form-group comment-bottom-style">
                                    <textarea name="comment" id="comment" placeholder="评论不超过200字..."  class="form-control" onfocus="wordCount('comment',200,'comment_count')"></textarea>
                                    <div class="row" style="padding-top: 2%;">
                                        <div class="col-md-6">
                                            <span style="color: darkgrey;" id="comment_count">还剩&nbsp;200&nbsp;字</span>
                                        </div>
                                        <div class="col-md-6">
                                            <span class="pull-right" style="box-shadow: 0 1px 1px rgba(0, 0, 0, 0.25);"><button class="btn btn-default btn-sm" type="button" onclick="sendComment('ceshi')"><i class="fa  fa-paper-plane-o" style="color: grey;">&nbsp;&nbsp;发&nbsp;送</i></button></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--}%

                        <g:each in="${params.dire_comList}" var="dire_com" status="i">
                            %{--<g:if test="${i%3==0}">
                                <div class="row item-row timeline" data-toggle="isotope" id="container">
                            </g:if>--}%
                            <g:if test="${dire_com.direObj!=null}">
                                <div class="col-xs-12 col-md-6 col-lg-4 item"  id="box${dire_com.direObj?.id}" >
                                    <div class="items">
                                        <g:if test="${session.user!=null}">
                                            <div class="pull-right close-op" style="display: block;">
                                                <a class="close-link close-link-style" onclick="edit_directive('${dire_com.direObj?.id}')" title="修改">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                                <a class="close-link close-link-style" onclick="del_directive('${dire_com.direObj?.id}')" title="删除">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </div>
                                        </g:if>
                                        <div class="frame-box">
                                            <iframe src="http://sandbox.runjs.cn/show/${dire_com.direObj?.directive_loc}" class="frame-content" onload=""></iframe>
                                            <div class="spinner"></div>
                                        </div>
                                        <div style="padding: 5% 5% 0 5%;">
                                            <div style="position: absolute;left: 30%"> <g:if test="${dire_com.direObj?.is_directive_flag=="Y"}"><img src="/hand-directive/assets/directive.png" alt=""></g:if></div>
                                            <span>
                                                <img src="/hand-directive/assets/guy-5.jpg" alt="Bill" class="img-circle" width="40" style="margin-bottom: 2%;margin-right: 3%"/><strong>${dire_com.direObj?.author}</strong>
                                               %{-- <img src="/hand-directive/assets/directive.png" alt="">--}%
                                                <span  class="pull-right" id="${dire_com.direObj?.id}"><button class="btn bgm-deeporange btn-icon btn-default btn-style" id="btn${dire_com.direObj?.id}" onclick="clickLike('${dire_com.direObj?.id}')"><i class="fa fa-heart icon-heart-style"></i>&nbsp;&nbsp;<span class="likeNum">${dire_com.direObj?.like_num}</span>&nbsp;次</button></span>
                                            </span>
                                        </div>
                                        <div class="dec-text">

                                            <p class="version-style">version&nbsp;${dire_com.direObj?.directive_version}&nbsp;&nbsp;&nbsp;</p>
                                            <p class="dec-color" style="word-break: break-all; word-wrap:break-word;">${dire_com.direObj?.directive_explain}</p>
                                        </div>
                                        <div class="btn-group btn-group-justified group-style" role="group">
                                            <div class="btn-group" role="group">
                                                <a type="button" class="btn  btn-lg btn-code-style" href="http://runjs.cn/code/${dire_com.direObj?.directive_loc}"  target="_blank">源代码</a>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <a type="button" class="btn  btn-lg btn-show-style" href="http://sandbox.runjs.cn/show/${dire_com.direObj?.directive_loc}"  target="_blank">全屏展示</a>
                                            </div>
                                        </div>

                                        <div class="comment-div comments" id="commentDiv${dire_com.direObj?.id}">
                                                <g:each in="${dire_com?.comList}" var="com" status="j">
                                                    <div class="chat-discussion">
                                                        <div class="chat-message left">
                                                            <div class="message">
                                                                <img src="/hand-directive/assets/guy-1.jpg" alt="Bill" class="message-avatar" />
                                                                <a class="message-author" href="#">群众</a>
                                                                <span class="message-date">
                                                                    ${com?.dateCreated.format('yyyy/MM/dd HH:mm:ss')}
                                                                </span>
                                                                <span class="message-content" style="word-wrap:break-word;word-break: normal; ">
                                                                    ${com?.comment_content}
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </g:each>
                                        </div>

                                        <div  class="form-group comment-bottom-style">
                                            <textarea name="comment" id="comment${dire_com.direObj?.id}" placeholder="评论不超过2000字..."  class="form-control" onfocus="wordCount('comment${dire_com.direObj?.id}',2000,'comment_count${dire_com.direObj?.id}')"></textarea>
                                            <div class="row" style="padding-top: 2%;">
                                                <div class="col-md-6">
                                                    <span style="color: darkgrey;" id="comment_count${dire_com.direObj?.id}">还剩&nbsp;2000&nbsp;字</span>
                                                </div>
                                                <div class="col-md-6">
                                                    <span class="pull-right" style="box-shadow: 0 1px 1px rgba(0, 0, 0, 0.25);"><button class="btn btn-default btn-sm" type="button" onclick="sendComment('${dire_com.direObj?.id}')"><i class="fa  fa-paper-plane-o" style="color: grey;">&nbsp;&nbsp;发&nbsp;送</i></button></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </g:if>
                        </g:each>

                    </div>
                </div>
            </div>
            <!-- /st-content-inner -->
        </div>
        <!-- /st-content -->
    </div>


    <!-- 模态框start -->

    <div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <img src="/hand-directive/assets/guy-5.jpg" alt="Bill" class="img-circle" width="40" />
                    <h4 class="modal-title" style="text-align: center;">${session.user?.username}</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="dire_id" name="" value="">
                    <div class="form-group">
                        <label>作者姓名</label>
                        <input type="text" placeholder="输入作者姓名..." class="form-control" id="directive_author">
                    </div>
                    <div class="form-group">
                        <label>地址</label>
                        <input type="text" placeholder="输入地址..." class="form-control" id="directive_loc">
                    </div>
                    <div class="form-group">
                        <label>版本号</label>
                        <input type="text" placeholder="输入版本号..." class="form-control" id="directive_version">
                    </div>
                    <div class="form-group">
                        <label>是否为指令</label>
                        <select name="is_directive_flag" id="is_directive_flag" class="form-control" style="cursor: pointer">
                            <option value="Y">是</option>
                            <option value="N" selected>否</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>指令说明</label>
                        <textarea name="directive_explain" id="directive_explain"  rows="3" class="form-control" placeholder="说明性文字，不超过2000字..." onfocus="wordCount('directive_explain',2000,'word_count')"></textarea>
                        <span style="color: darkgrey;float: right;" id="word_count">还剩&nbsp;2000&nbsp;字</span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" onclick="publishDirective()">保存</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal inmodal" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" style="width: 25%;">
            <div class="modal-content animated bounceInRight" >
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <img src="/hand-directive/assets/loginModal.png"  style="width: 50px;height: 50px;"/>
                </div>
                <div class="modal-body">
                    %{--<form action="${createLink(controller: 'user',action: 'checkLogin')}" method="post" role="form">--}%
                        <div class="form-group">
                            <input type="text" placeholder="Username" class="form-control" id="username" required="">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Password" class="form-control" id="password" required="">
                        </div>
                        <button  class="btn btn-primary btn-lg" style="width: 100%;background-color: #18a689;border-color: #18a689;" onclick="login()">登录</button>
                    %{--</form>--}%
                </div>
            </div>
        </div>
    </div>


    <!-- /st-pusher -->
    <!-- Footer -->
    <footer class="footer">
        <strong>HAND</strong> v1.0.0 &copy; Copyright 2016
    </footer>
    <!-- // Footer -->
</div>

<script>
    var colors = {
        "danger-color": "#e74c3c",
        "success-color": "#81b53e",
        "warning-color": "#f0ad4e",
        "inverse-color": "#2c3e50",
        "info-color": "#2d7cb5",
        "default-color": "#6e7882",
        "default-light-color": "#cfd9db",
        "purple-color": "#9D8AC7",
        "mustard-color": "#d4d171",
        "lightred-color": "#e15258",
        "body-bg": "#f6f6f6"
    };
    var config = {
        theme: "social-3",
        skins: {
            "default": {
                "primary-color": "#16ae9f"
            },
            "orange": {
                "primary-color": "#e74c3c"
            },
            "blue": {
                "primary-color": "#4687ce"
            },
            "purple": {
                "primary-color": "#af86b9"
            },
            "brown": {
                "primary-color": "#c3a961"
            },
            "default-nav-inverse": {
                "color-block": "#242424"
            }
        }
    };
    function wordCount(idStr1,wordNum,idStr2){
        $("#"+idStr1).keyup(function() {
            //alert($("#directive_explain").val().length)
            var left_count= wordNum-$("#"+idStr1).val().length;
            if(left_count<0){
                var num=Math.abs(wordNum-$("#"+idStr1).val().length)
                $("#"+idStr2).html("<span style='color: red;'>字数超过&nbsp;"+num+"&nbsp;字</span>")
            }else{
                var left_count= wordNum-$("#"+idStr1).val().length;
                $("#"+idStr2).html("字数剩余&nbsp;"+left_count+"&nbsp;字")
            }
            $("#"+idStr2).text()

        });

    }
    function openModal(id){
        $('#'+id).modal({backdrop: 'static', keyboard: false});
    }
    function publishDirective(){
        var left_count= 2000-$("#directive_explain").val().length;
        var directive_loc=$("#directive_loc").val();
        var directive_explain=$("#directive_explain").val();
        var directive_version=$("#directive_version").val();
        var author=$("#directive_author").val();
        var is_directive_flag=$("#is_directive_flag").val();
        var dire_id=$("#dire_id").val();
        if(directive_loc!="" && directive_explain!="" && directive_version!="" && author!=""){
            if(left_count>=0){
                $.ajax({
                    url:"${createLink(controller: 'directive',action: 'addDirective')}",
                    type:'POST',
                    data:{directive_id:dire_id,directive_loc:directive_loc,directive_explain:directive_explain,directive_version:directive_version,author:author,is_directive_flag:is_directive_flag},
                    dataType:'json',
                    error:function () {
                        swal({title: "异常!",text: "数据提交错误，请重新提交！",type: "error"});
                    },
                    cache:false,
                    success:function (data) {
                        if(data.code=="s"){
                            swal({title: "成功!",text: data.msg,type: "success"});
                            location.href = '<%=request.getContextPath()%>/directive/index'
                        }else{
                            swal({title: "失败!",text: data.msg,type: "error"});
                        }
                    }});
            }else{
                swal({title: "警告!", text: "字数超过2000字！", type: "error"});
            }
        }else{
            swal({title: "警告!",text: "请将信息填写完整！",type: "error"});
        }
    }
    function login(){
        var username=$("#username").val()
        var password=$("#password").val()
        if(username!="" && password!=""){
            $.ajax({
                url:"${createLink(controller: 'user',action: 'checkLogin')}",
                type:'POST',
                data:{username:username,password:password},
                dataType:'json',
                error:function () {
                    swal({title: "异常!",text: "数据提交错误，请重新提交！",type: "error"});
                },
                cache:false,
                success:function (data) {
                    if(data.code=="s"){
                        location.href = '<%=request.getContextPath()%>/directive/index'
                    }else{
                        swal({title: "失败!",text: data.msg,type: "error"});
                    }
                }});
        }else{
            swal({title: "警告!",text:"请完整填写用户名和密码",type: "error"});
        }
    }
    /*点赞*/
    function clickLike(id){
        //var empty_heart=$("#"+id+" i").hasClass("fa-heart-o");
        var like_num=Number($("#"+id+" .likeNum").text());
        like_num+=1;
       /* if(empty_heart){
            $("#"+id+" i").removeClass("fa-heart-o");
            $("#"+id+" i").addClass("fa-heart icon-heart-style");
            like_num+=1;
        }else{
            $("#"+id+" i").removeClass("fa-heart icon-heart-style");
            $("#"+id+" i").addClass("fa-heart-o");
            like_num-=1;
        }*/
        $.ajax({
            url:"${createLink(controller: 'directive',action: 'addLikeNum')}",
            type:'POST',
            data:{like_num:like_num,dire_id:id},
            dataType:'json',
            error:function () {
                swal({title: "异常!",text: "数据提交错误，请重新提交！",type: "error"});
            },
            cache:false,
            success:function (data) {
                if(data.code=="s"){
                    $("#"+id+" .likeNum").text(like_num);
                    addLikeCss("btn"+id)
                }else{
                    swal({title: "失败!",text: data.msg,type: "error"});
                }
            }});

    }
    /*评论*/
    function sendComment(idStr){
        var com_content=$("#comment"+idStr).val();
        var wordCount=2000-$("#comment"+idStr).val().length;
        if(wordCount!=2000){
            if(wordCount>=0){
                $.ajax({
                    url:"${createLink(controller: 'comment',action: 'addComment')}",
                    type:'POST',
                    data:{directive_id:idStr,com_content:com_content},
                    dataType:'json',
                    error:function () {
                        swal({title: "异常!",text: "数据提交错误，请重新提交！",type: "error"});
                    },
                    cache:false,
                    success:function (data) {
                        if(data.code=="s"){
                            var html='<div class="chat-discussion"> <div class="chat-message left"> <div class="message"> ' +
                                    '<img src="/hand-directive/assets/guy-1.jpg" alt="Bill" class="message-avatar" /> ' +
                                    '<a class="message-author" href="#">群众</a> <span class="message-date">'+data.msg+' </span> ' +
                                    '<span class="message-content">'+com_content +'</span> </div> </div> </div>'
                            var hasDiv= $("#commentDiv"+idStr).children("#noComment").length>0;
                            if(hasDiv){
                                $("#commentDiv"+idStr).html("");
                            }
                            $("#commentDiv"+idStr).prepend(html)

                            $('#container').isotope()//isotope重新布局
                        }else{
                            swal({title: "失败!",text: data.msg,type: "error"});
                        }
                    }});
                $("#comment"+idStr).val("")
                $("#comment_count"+idStr).html("还剩&nbsp;2000&nbsp;字")
            }else{
                swal({title: "警告!",text: "评论内容不能超过2000字",type: "error"});
            }
        }else{
            swal({title: "警告!",text: "发送的评论内容不能为空！",type: "error"});
        }
    }
    /*iframe加载符*/
    /*function show(object){
        object.style.display='block';
        object.style.backgroundImage='none';
       /!* alert("123")*!/
      /!*  object.style.display='block';
        object.next().style.display="none";*!/
    }*/
    function del_directive(idStr){
        swal({
            title: "确定要删除这条指令吗？",
            text: "",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "确定",
            cancelButtonText:"取消",
            closeOnConfirm: false
        }, function () {
            $.ajax({
                url:"${createLink(controller: 'directive',action: 'delDirective')}",
                type:'POST',
                data:{directive_id:idStr},
                dataType:'json',
                error:function () {
                    swal({title: "异常!", text: "数据提交错误，请重新提交！", type: "error"});
                },
                cache:false,
                success:function (data) {
                    if(data.code=="s"){
                        swal("成功!", "指令删除成功.", "success");
                        $("#box"+idStr).css("display","none");
                        $('#container').isotope()
                    }else{
                        swal("失败!", data.msg, "error");
                    }
                }});
        });
    }
    /*修改指令*/
    function edit_directive(idStr){
        $.ajax({
            url:"${createLink(controller: 'directive',action: 'editDirective')}",
            type:'POST',
            data:{directive_id:idStr},
            dataType:'json',
            error:function () {
                swal({title: "异常!",text: "数据提交错误，请重新提交！",type: "error"});
            },
            cache:false,
            success:function (data) {
                if(data.code=="s"){
                    $("#dire_id").val(data.dire_obj.id);
                    $("#directive_author").val(data.dire_obj.author);
                    $("#directive_loc").val(data.dire_obj.directive_loc);
                    $("#directive_explain").val(data.dire_obj.directive_explain);
                    $("#directive_version").val(data.dire_obj.directive_version);
                    $("#is_directive_flag").val(data.dire_obj.is_directive_flag);
                    var left_count= 2000-$("#directive_explain").val().length;
                    $("#word_count").html("字数剩余&nbsp;"+left_count+"&nbsp;字")
                    openModal('myModal');
                }else{
                    swal({title: "失败!",text: "找不到该条指令",type: "error"});
                }
            }});
    }
    window.onload=function() {
        $('#container').isotope({
            sortBy: 'likeNum'
        });
    }

   /* function showFrame(object){
        object.style.display='block';
        object.next('div').display='none';
    }
*/
</script>

<asset:javascript src="vendor-core.js"/>
%{--<asset:javascript src="js/vendor-core.min.js"/>--}%
<asset:javascript src="js/vendor-forms.min.js"/>
<asset:javascript src="js/vendor-maps.min.js"/>
<asset:javascript src="js/module-layout.min.js"/>
<asset:javascript src="js/module-sidebar.min.js"/>
<asset:javascript src="js/module-timeline.min.js"/>
<asset:javascript src="js/theme-core.min.js"/>
<asset:javascript src="js/sweetalert.min.js"/>
<asset:javascript src="like.js"/>
</body>
</html>