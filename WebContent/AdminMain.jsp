<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.StudentDao"%>
<%@page import="Servlet.AdminLoginServlet"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    	 <meta http-equiv="content-type" content="text/html; charset=UTF-8">
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
            <nav class="cm-navbar cm-navbar-primary">
                <div class="cm-flex"><a href="index.html" class="cm-logo"></a></div>
                <div class="btn btn-primary md-menu-white" data-toggle="cm-menu"></div>
            </nav>
            <div id="cm-menu-content">
                <div id="cm-menu-items-wrapper">
                    <div id="cm-menu-scroller">
                        <ul class="cm-menu-items">
                        <li><a href="AdminMain.jsp" class="sf-house">HOME</a></li>
                        <li class="cm-submenu">
                                <a class="sf-window-layout">我的信息<span class="caret"></span></a>
                                <ul>
                                    <li><a href="AdminChangePwd.jsp">修改密码</a></li>
                                </ul>
                            </li>
                            <li><a href="Admin-ViewPublicFile.jsp" class="sf-house">管理公共资源文件</a></li>           
                            <li><a href="Admin-ViewManageST.jsp" class="sf-house">师生人员管理</a></li>
                            
                            
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
                <div class="dropdown pull-right">        
                    <div class="popover cm-popover bottom">
                        <div class="arrow"></div>
                        
                    </div>
                </div>
            </nav>
        </header>
        <div id="global">
            <div class="container-fluid cm-container-white">
                <h2 style="margin-top:0;">欢迎登录管理员<%out.print(AdminLoginServlet.Admin_id) ;%></h2> 
            </div>
            <div class="container-fluid">           
                <div class="row cm-fix-height">
                     <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <a href="Student-ViewChangePwd.jsp" class="panel panel-default thumbnail cm-thumbnail">
                            <div class="panel-body text-center">                               
                                <h4>修改密码</h4> <small>修改该账号的密码</small>

                            </div>
                        </a>
                    </div>
                    
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <a href="Admin-ViewPublicFile.jsp" class="panel panel-default thumbnail cm-thumbnail">
                            <div class="panel-body text-center">                               
                                <h4>管理公共资源文件</h4> <small>学校行政文档存储归档:规则制度、学生工作文件、申请表</small>

                            </div>
                        </a>
                    </div>
                    
                   
                    
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <a href="Admin-ViewManageST.jsp" class="panel panel-default thumbnail cm-thumbnail">
                            <div class="panel-body text-center">
                                <h4>师生人员管理</h4> <small>查看校内共享网盘资源</small>
                            </div>
                        </a>
                    </div>
                    
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <a href="Login.html" class="panel panel-default thumbnail cm-thumbnail">
                            <div class="panel-body text-center">
                                <h4>返回登录界面</h4> <small>Back</small>
                            </div>
                        </a>
                    </div>
                    
                </div>
                
            </div>
            <footer class="cm-footer"><span>Author: WEIJIAYAN</span></footer>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.mousewheel.min.js"></script>
        <script src="js/jquery.cookie.min.js"></script>
        <script src="js/fastclick.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/clearmin.min.js"></script>
        <script src="js/home.js"></script>
</html>
