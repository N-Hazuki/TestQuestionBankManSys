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
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/table.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.grid.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/main.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.dialog.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<title>Top</title>
</head>
<body data-spy="scroll" data-target=".navbar" onload="startclock();">    	
<div id="container">
	<div id="hd">
	<div class="hd-top">
            <h1 class="logo">&nbsp;</h1>
            <div class="setting ue-clear">
            	<div class="setting-skin"> </div>
                <ul class="setting-main ue-clear">
                    <li><a href="UpdatePersonPassword.jsp" target="main">编辑</a></li>
                    <li><a href="Logout.action" class="close-btn exit" target="_top"></a></li>
                </ul>
            </div>
      </div>
	</div>
    <div id="bd">
    	<div id="main">
<div class="table">
  <div class="grid"></div>
                <div class="pagination"></div>
        </div>
      </div>
    </div>
</div>
</body>
</html>