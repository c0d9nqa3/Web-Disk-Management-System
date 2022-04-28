<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.StudentDao"%>

<%@page import="entity.Student"%>
<%@page import="java.util.*"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-clearmin.min.css">
        <link rel="stylesheet" type="text/css" href="css/roboto.css">
        <link rel="stylesheet" type="text/css" href="css/material-design.css">
        <link rel="stylesheet" type="text/css" href="css/small-n-flat.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <title>网盘管理系统</title>
    </head>
    <body class="cm-no-transition cm-1-navbar">
        <div id="cm-menu">
            
            <div id="cm-menu-content">
                <div id="cm-menu-items-wrapper">
                    <div id="cm-menu-scroller">
                        <ul class="cm-menu-items">
                        <li><a href="StudentMain.jsp" class="sf-house">HOME</a></li>
                        <li class="cm-submenu">
                        
                                <a class="sf-window-layout">我的信息<span class="caret"></span></a>
                                <ul>
                                    <li class="active"><a href="Student-ViewChangePwd.jsp">修改密码</a></li>
                                    <li><a href="Student-ViewInfo.jsp">查看信息</a></li>
                                </ul>
                            </li>
                            <li><a href="Student-ViewMyFile.jsp" class="sf-house">我的文件</a></li>
                            <li><a href="Student-ViewUpload" class="sf-house">上传文件</a></li>
                             <li><a href="Student-ViewHomework.jsp" class="sf-house">作业</a></li>            
                            <li><a href="Student-ViewShare.jsp" class="sf-house">共享资源</a></li>
                            <li><a href="Login.html" class="sf-house">返回登录界面</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <header id="cm-header">
            <nav class="cm-navbar cm-navbar-primary">
                <div class="btn btn-primary md-menu-white hidden-md hidden-lg" data-toggle="cm-menu"></div>
                <div class="cm-flex">
                    <h1>SUEP网盘管理系统</h1> 
                </div>      
            </nav>
        </header>
        <div id="global">
            <div class="container-fluid cm-container-white">
                <h2 style="margin-top:0;">修改密码</h2> 
            </div>
            <div class="container-fluid">           
                <div class="row cm-fix-height">
                <form action="Stu-ChangePwd" method="post">
                  输入原密码：<input type="text" name="OldPwd"></br>
                  输入新密码：<input type="text" name="NewPwd"></br>
                  确认新密码：<input type="text" name="CfmPwd"></br>
                  <div class="button">
					<input type="submit" name="register" value="确认">			
					</div>
                  </form>
                </div>
                
            </div>
            <footer class="cm-footer"><span>Anthor: WEIJIAYAN</span></footer>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.mousewheel.min.js"></script>
        <script src="js/jquery.cookie.min.js"></script>
        <script src="js/fastclick.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/clearmin.min.js"></script>
        <script src="js/home.js"></script>
</html>
