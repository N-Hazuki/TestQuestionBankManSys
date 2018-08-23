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
    <title>录入试题</title>
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
        <div class="row-fluid">
<div class="span9">
    <h1 class="page-title">录入试题</h1>
	
		<label>请选择题型：</label>
        <select name="Test" id="Test" class="input-xlarge" onchange="choosetype(this)">
		  <option value="">/...请选择试题类型.../</option>
          <option value="1">单项选择题</option>
          <option value="2">判断题</option>
        </select>
		
	
		<!--单选题录入区-->
	<form id="table1">
<div class="well" id="tb1" style="display: none">
    <table class="table">
      <thead>
        <tr>
          <th>类别</th>
          <th>内容</th>
          <th style="width: 26px;"></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>题目编号：</td>
          <td><input type="text" value="题目编号系统自动生成" class="input-xlarge" readonly></td>
        </tr>
        <tr>
          <td>题干：</td>
          <td><input type="text" value="" class="input-xlarge" ></td>
        </tr>
        <tr>
          <td>答案项：</td>
         <td><input type="text" value="" class="input-xlarge" ></td>
        </tr>
        <tr>
          <td>选项1:</td>
          <td><input type="text" value="" class="input-xlarge" ></td>
        </tr>
        <tr>
          <td>选项2：</td>
         <td><input type="text" value="" class="input-xlarge" ></td>
        </tr>
        <tr>
          <td>选项3：</td>
          <td><input type="text" value="" class="input-xlarge" ></td>
        </tr>
      </tbody>
    </table>
<div class="btn-toolbar">
    <button class="btn btn-primary"><i class="icon-save"></i> 保存</button>
  <div class="btn-group">
  </div>
</div>
</div>
	</form>	
	
		<!--判断题录入区-->
	<form id="table2">
	<div class="well" id="tb2" style="display: none" >
		  <label>题目编号：</label>
          <td><input type="text" value="题目编号系统自动生成" class="input-xlarge" readonly></td>
		<label>题干：</label>
		<input class="input-xlarge" placeholder="" id="text" type="text">
    <select name="Test" id="Test1" class="input-xlarge">
          <option value="test1">√</option>
          <option value="test2">×</option>
    </select>
		<div class="btn-toolbar">
    <button class="btn btn-primary"><i class="icon-save"></i> 保存</button>
  <div class="btn-group">
  </div>
</div>
	</div>
	</form>
	
        </div>
    </div>
    <footer>
        <hr>
        <p class="pull-right">QUT</p>
        <p>&copy; 2018</p>
    </footer>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
		<script language="javascript">  
 function choosetype(obj)
 {     var _selectedvalue = obj.value; 
  if(_selectedvalue==''){     _selectedvalue = '-1';  } 
   for(i=1;i<=4;i++){  
     var divobj = document.getElementById('tb'+i);   
    if(parseInt(_selectedvalue)==i){       divobj.style.display = 'block';    }
 else{       divobj.style.display = 'none';  
   } 
    } 
      } 
  </script>
		</div>
  </body>
</html>