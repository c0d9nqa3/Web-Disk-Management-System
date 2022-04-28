<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.TeacherDao"%>
<%@page import="entity.Course"%>
<%@page import="entity.Homework"%>
<%@page import="Servlet.LoginServlet" %>
<%@page import="Servlet.Stu_downloadHwServlet" %>
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
       // StudentDao stu=new StudentDao();
        TeacherDao tea=new TeacherDao();
        String Course_name=request.getParameter("name");
        String Class=request.getParameter("class");
        String Tea_id=request.getParameter("id");
    	List<Homework> clist=tea.course_TeaHomework(Course_name,LoginServlet.Tea_id);
    	System.out.println(clist);
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
                        <li><a href="TeacherMain.jsp" class="sf-house">HOME</a></li>
                        <li class="cm-submenu">
                                <a class="sf-window-layout">我的信息<span class="caret"></span></a>
                                <ul>
                                    <li><a href="Student-ViewChangePwd.jsp">修改密码</a></li>
                                    <li><a href="Teacher-ViewInfo.jsp">查看信息</a></li>
                                </ul>
                            </li>
                            
                            <li><a href="Teacher-ViewMyFile.jsp" class="sf-house">我的文件</a></li>
                            <li><a href="Student-ViewUpload.jsp" class="sf-house">上传文件</a></li>                             
                            <li class="active"><a href="Teacher-ViewHomework.jsp" class="sf-house">作业</a></li>           
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
                <h2 style="margin-top:0;">查看、提交作业</h2> 
            </div>
            <div class="container-fluid">           
                <div class="row cm-fix-height">
                	 <table class="table">
                	<thead><tr><th>作业文件名</th><th>课程名</th><th>班级</th><th>布置时间</th><th>截止时间</th><th>操作</th></tr></thead>
                	<tbody>
                <%
                
                for(Homework c:clist){
                	
                	//String sub_FileName;
                	/*
                	if(stu.showSubmittedTime(LoginServlet.ID, c.getResource_id()).equals("")){
                		subtime="";
                	}
                	else {
                		subtime="已提交";
                	}
                	*/        
                    out.println("<tr>");
                    out.println("<td>"+c.getFile_Name()+"</td>");                 
                    out.println("<td>"+c.getCourse_name()+"</td>");
                    out.println("<td>"+c.getStu_Class()+"</td>");                   
                    out.println("<td>"+c.getStart_time()+"</td>");
                    out.println("<td>"+c.getOver_time()+"</td>");
                   // out.println("<td>"+stu.showSubmittedTime(LoginServlet.ID, c.getResource_id())+"</td>");
                    
                   	out.println("<td><a href='Stu_downloadHwServlet?&filename="+c.getFile_Name()+"&course_name="+c.getCourse_name()+"&Class="+c.getStu_Class()+"'>下载 </a>"+"<a href='Teacher-ViewHomeworkSubShow.jsp?&Class="+c.getStu_Class()+"&course_name="+c.getCourse_name()+"&resource_id="+c.getResource_id()+"'> 查看提交作业情况</a>"+
                   			"<a href='Tea_deleteHwServlet?&filename="+c.getFile_Name()+"&Tea_id="+LoginServlet.Tea_id+"&Class="+c.getStu_Class()+"&course_name="+c.getCourse_name()+"&resource_id="+c.getResource_id()+"'>   删除已发布作业</a></td>");
                   
                   	
                   	
                   // out.println("<td><a href='Student-ViewHomeworkShow.jsp?&name="+c.getCourse_name()+"&id="+c.getCourse_id()+"&class="+c.get_Class()+"'>查看课程作业</a>");
                   // out.println("<td><a href='Stu_MyFileServlet.action?&name="+c.getFileName()+"&id="+c.getId()+"'>删除</a>"+"     <a href='Public_DownServlet?opttype=down&name="+c.getName()+"'>下载</a>"+"     ");
                    out.println("</tr>");
                }
              //作为中间页面将request的值保存在session中传递到servlet中
				request.setCharacterEncoding("UTF-8");
	        	response.setCharacterEncoding("UTF-8");
				String Stu_id=request.getParameter("Stu_id");
				//String Class=request.getParameter("Class");
				//String Course_name=request.getParameter("Course_name");
				String resource_id=request.getParameter("resource_id");
				String Course_id=request.getParameter("course_id");
				out.println(Stu_id);
				out.println(Class);
				out.println(Course_name);
				out.println(resource_id);
				session.setAttribute("Tea_id", Tea_id);
				session.setAttribute("Class", Class);
				session.setAttribute("Course_name", Course_name);
				
				session.setAttribute("Course_id",Course_id);
				out.println(Course_id);
				session.setAttribute("resource_id", resource_id);
				//session.setAttribute("", resource_id);
                %>
               	 	</tbody>           
           			 </table>    
           			  <form action="Tea_createNewHwServlet" method="post" enctype="multipart/form-data">                	  	
                	  	设置作业截至时间：<input type="date" name="HomeworkEnddate"><br/>
				  		选择一个作业文件: <input type="file" name="uploadFile" /><br/>
                  	<div class="button">
					<input type="submit" name="register" value="上传新作业">			
					</div>
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
