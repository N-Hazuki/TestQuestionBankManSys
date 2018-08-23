<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.8.1.min.js" type="text/javascript"></script>

    <!-- Demo page code -->
    
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>
  <body> 
    <div class="navbar"> </div>
    <div class="container-fluid">
<form id="tab" action="updStu.action" method="post">
        <div class="row-fluid">
<div class="span9">
    <h1 class="page-title">修改教师信息</h1>
<div class="btn-toolbar">
    <button id="sub" class="btn btn-primary" type="submit"><i class="icon-save"></i>提交</button>
    <button class="btn" type="reset" >清空</button>
  <div class="btn-group">
  </div>
</div>
<div class="well">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">基本信息</a></li>
      <li></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
      <c:set var="stu" value="${requestScope.stu}"/>
      	<input type="hidden" name="stuId" value="${stu.stuId}" >
        <label>学生账号</label>
        <input type="text" value="${stu.stuNo}" name="stuNo" class="input-xlarge">
        <label>姓名</label>
        <input type="text" value="${stu.stuName}" name="stuName" class="input-xlarge">
        <label>专业</label>
        <input type="text" value="${stu.stuMajor}" name="stuMajor" class="input-xlarge">
        <label>班级</label>
        <input type="text" value="${stu.stuGrade}" name="stuGrade" class="input-xlarge">
        <label>新密码</label>
        <input type="text" value="${stu.stuPwd}" name="stuPwd" class="input-xlarge">
      </div>
      <div class="tab-pane fade" id="profile">
      </div>
  </div>

</div>


        </div>
    </div>
    <footer>
</form>
        <hr>
        <p class="pull-right">© 2018 </p>
        <p>&copy; 2018 </p>
    </footer>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
</div>
  </body>
</html>
