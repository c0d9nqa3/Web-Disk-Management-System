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
                                    <li><a href="Student-ViewChangePwd.jsp">修改密码</a></li>
                                    <li class="active"><a href="Student-ViewInfo.jsp">查看信息</a></li>
                                </ul>
                            </li>
                            <li><a href="Student-ViewMyFile.jsp" class="sf-house">我的文件</a></li>
                            <li><a href="Student-ViewUpload.jsp" class="sf-house">上传文件</a></li>
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
                <h2 style="margin-top:0;">查看信息</h2> 
            </div>
            <div class="container-fluid">           
                <div class="row cm-fix-height">
                  姓名：<input type="text" name="name" value="${Stu.getStu_name()}" readonly></br>
                  性别：<input type="text" name="sex" value="${Stu.getStu_sex()}" readonly></br>
                  学号：<input type="text" name="id" value="${Stu.getStu_id()}" readonly></br>
                  密码：<input type="text" name="pwd" value="${Stu.getStu_pwd()}" readonly></br>   
                  班级：<input type="text" name="class" value="${Stu.getStu_Class()}" readonly></br>             
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
