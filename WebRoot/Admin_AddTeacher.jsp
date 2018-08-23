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

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7"> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8"> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9"> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
  <body> 
  <!--<![endif]-->
    
    <div class="navbar"> </div>
    

    <div class="container-fluid">
<form id="tab" action="addTea.action" method="post">   
        <div class="row-fluid">
<div class="span9">
    <h1 class="page-title">添加教师</h1>
<div class="btn-toolbar">
    <button id="sub" class="btn btn-primary" type="submit"><i class="icon-save"></i>提交</button>
    <button class="btn" type="reset" >清空</button>
  <div class="btn-group">
  </div>
</div>
<div class="well">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#home" >基本信息</a></li>
      <li></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
        <label>教师编号</label>
        <input type="text" name="teaNo" class="input-xlarge" onblur="isTeano(),isNull()"><b id="teano"></b>
        <label>姓名</label>
        <input type="text" name="teaName" class="input-xlarge" onblur="isNull()"><b id="teaname"></b>
        <label>专业</label>
        <input type="text" name="teaMajor" class="input-xlarge" onblur="isNull()"><b id="teamajor"></b>
        <label>Email</label>
        <input type="text" name="teaMail" class="input-xlarge" onblur="isTeamail(),isNull()"><b id="teamail"></b>
          <label>初始密码</label>
        <input type="password" name="teaPwd" class="input-xlarge" onblur="isNull()"><b id="teapwd"></b>
      </div>
      <div class="tab-pane fade" id="profile">
      </div>
  
  </div>
</div>

        </div>
    </div>
</form>

    
   <footer>
        <hr>
        
        <p class="pull-right">© 2018 </p>
        
        
        <p>&copy; QUT </p>
    </footer>
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="lib/bootstrap/js/bootstrap.js"></script>
   </div>
  </body>

<script>
isTeano();
isTeamail();

	function isTeano(){
		var v = getElementsByName("teaNo");
		var reg = /^[T][0-9]{5}$/;
		var teano = getElementById("teano");
		 alert(reg.test(v.value));
		if(reg.test(v.value)==false){
			teano.innerHTML="账号必须以大写字母T开头，后接5个数字";
			return false;
		}
		else
			teano.innerHTML="账号格式正确";
			return true;
	}
	
	function isTeamail(){
			var v = getElementsByName("teaMail");
		    var reg=/^\w+@[a-zA-Z0-9]{2,10}(?:\.[a-z]{2,4}){1,3}$/;
		    var teamail = getElementById("teamail");
		    alert(reg.test(v.value));
		    if(reg.test(v.value)==false){
				teamail.innerHTML="邮箱格式不合法";
		    	return false;
		    }
		    else
		    	teamail.innerHTML="邮箱格式正确";
				return true;
	}
	
	function isNull(){
		var inputList = document.getElementsByTagName("input");
		var sub = document.getElementById("sub");
		var teano = isTeano();
		var teamail = isTeamail();
		for(var i=0;i<inputList.length;i++){
			if(inputList[i].value.trim()==""){
				sub.disabled=true;
				return;
			}
		}
		if(teano==true && teamail==true)
			sub.disabled==false;
	}
</script>
</html>