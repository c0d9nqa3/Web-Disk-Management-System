<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.StudentDao"%>
<%@page import="entity.Course"%>
<%@page import="entity.Homework"%>
<%@page import="Servlet.LoginServlet" %>
<%@page import="java.util.*"%>
<%@page import="java.io.*" %>
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
        <%
        StudentDao stu=new StudentDao();
       // String Class=request.getParameter("class");
    	//List<Homework> clist=stu.course_Homework(Class);
        //request.getParameter("name");   
        %>
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
                        <li><a href="StudentMain.jsp" class="sf-house">HOME</a></li>
                        <li class="cm-submenu">
                                <a class="sf-window-layout">我的信息<span class="caret"></span></a>
                                <ul>
                                    <li><a href="Student-ViewChangePwd.jsp">修改密码</a></li>
                                    <li><a href="Student-ViewInfo.jsp">查看信息</a></li>
                                </ul>
                            </li>
                            
                            <li><a href="Student-ViewMyFile.jsp" class="sf-house">我的文件</a></li>
                            <li><a href="Student-ViewUpload.jsp" class="sf-house">上传文件</a></li>                             
                            <li class="active"><a href="Student-ViewHomework.jsp" class="sf-house">作业</a></li>           
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
                <div class="dropdown pull-right">        
                    <div class="popover cm-popover bottom">
                        <div class="arrow"></div>
                        
                    </div>
                </div>
            </nav>
        </header>
        <div id="global">
            <div class="container-fluid cm-container-white">
                <h2 style="margin-top:0;">提交作业</h2> 
            </div>
            <div class="container-fluid">           
                <div class="row cm-fix-height">
                <%
				//作为中间页面将request的值保存在session中传递到servlet中
				request.setCharacterEncoding("UTF-8");
	        	response.setCharacterEncoding("UTF-8");
				String Stu_id=request.getParameter("Stu_id");
				String Class=request.getParameter("Class");
				String Course_name=request.getParameter("course_name");
				String resource_id=request.getParameter("resource_id");
				out.println(Stu_id);
				out.println(Class);
				out.println(Course_name);
				out.println(resource_id);
				session.setAttribute("Stu_id", Stu_id);
				session.setAttribute("Class", Class);
				session.setAttribute("Course_name", Course_name);
				session.setAttribute("resource_id", resource_id);
				%>
                	<form method="post" action="Stu_UploadHwServlet" enctype="multipart/form-data">
					选择一个文件: <input type="file" name="uploadFile" /> 
					<br/>
			     <input type="submit" value="上传" />
				</form>                                                      
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
