<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.StudentDao"%>
<%@page import="dao.TeacherDao"%>
<%@page import="entity.Course"%>
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
        //StudentDao stu=new StudentDao();
        TeacherDao tea=new TeacherDao();
        
        //String Class=stu.showClassofStudent(LoginServlet.ID);
    	List<Course> clist=tea.allTeachCourse(LoginServlet.ID);
        
        
        
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
                                    <li><a href="Student-ViewInfo.jsp">查看信息</a></li>
                                </ul>
                            </li>
                            
                            <li><a href="Student-ViewMyFile.jsp" class="sf-house">我的文件</a></li>
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
                <h2 style="margin-top:0;">管理，布置作业</h2> 
            </div>
            <div class="container-fluid">           
                <div class="row cm-fix-height">
                	 <table class="table">
                	<thead><tr><th>课程ID</th><th>老师</th><th>课程名</th><th>班级</th><th>操作</th></tr></thead>
                	<tbody>
                <%
                for(Course c:clist){
                    out.println("<tr>");
                    out.println("<td>"+c.getCourse_id()+"</td>");
                    out.println("<td>"+c.getTea_name()+"</td>");
                    out.println("<td>"+c.getCourse_name()+"</td>");
                    out.println("<td>"+c.get_Class()+"</td>");
                   // out.println("<td><a href='MyFileServlet?&name="+c.getFileName()+"&id="+c.getId()+"'>下载</a></td>");
                    out.println("<td><a href='Teacher-ViewHomeworkShow.jsp?&name="+c.getCourse_name()+"&id="+c.getTea_id()+"&class="+c.get_Class()+"&course_id="+c.getCourse_id()+"'>查看、管理课程作业</a> "+"<a href='Tea_deleteCourseServlet?&Course_id="+c.getCourse_id()+"&Course_name="+c.getCourse_name()+"&Class="+c.get_Class()+"'>删除</a></td>");
                   // out.println("<td><a href='Stu_MyFileServlet.action?&name="+c.getFileName()+"&id="+c.getId()+"'>删除</a>"+"     <a href='Public_DownServlet?opttype=down&name="+c.getName()+"'>下载</a>"+"     ");
                    out.println("</tr>");
                }
                %>
                </tbody>
               
           
            </table>
                  <form action="CreateNewCourse" method="post">
                  输入新增课程名称:<input type="text" name="newCoursename"><br/>
				  输入新增课程班级:<input type="text" name="newCourseclass"> <br/>
                  <div class="button">
					<input type="submit" name="register" value="新增课程">			
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
