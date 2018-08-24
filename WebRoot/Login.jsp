<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>&nbsp;试题库管理系统&nbsp;-&nbsp;Examination Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/login.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.select.js"></script>
<script type="text/javascript">
</script>
<title>试题库管理系统——登陆</title>
</head>

<body>
<div id="container">
    <div id="bd">
    	<div id="main">
<div class="login-box">
<form name="goWhere" action="User.action" method="post">
          <div id="logo"></div>
                <h1></h1>
                <div class="input username" id="username">
                    <label for="userName">用户名</label>
                    <span></span>
                    <input type="text" id="userName" name="user"/>
                </div>
                <div class="input psw" id="psw">
                    <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <span></span>
                    <input type="password" id="password" name="pwd"/>
                </div>
                <div class="styleArea">
                    <div class="styleWrap">
                        <select name="identity">
                          <option id="stu" value="stu">学生</option>
                          <option id="tea" value="tea">教师</option>
                          <option id="man" value="adm">管理员</option>
                        </select>
                    </div>
                </div>
	     <div id="btn" class="loginButton">
    	    <input type="submit" class="button" value="登录"  />
  	    </div>
</form>
</div>
        </div>
        <div id="ft">CopyRight&nbsp;2018 QUT &nbsp;&nbsp;版权所有&nbsp;&nbsp;</div>
    </div>
   
</div>

</body>




<script type="text/javascript">
	var height = $(window).height() > 445 ? $(window).height() : 445;
	$("#container").height(height);
	var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
	$('#bd').css('padding-top', bdheight);
	$(window).resize(function(e) {
        var height = $(window).height() > 445 ? $(window).height() : 445;
		$("#container").height(height);
		var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
		$('#bd').css('padding-top', bdheight);
    });
	$('select').select();
</script>
</html>
