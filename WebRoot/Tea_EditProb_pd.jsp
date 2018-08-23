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
	
		<!--判断题录入区-->
	<form id="table2" aciton="updPro.action" method="post">
	
	<input type="hidden" name="proTeaid" value="${pro.proTeaid }">
	<div class="well" id="tb2">
		<!-- 其他不需要修改的字段是否hidden-->
		  <label>题目编号：</label>
        <input type="text" value="${pro.proId} " class="input-xlarge" readonly>
		<label>所属章节编号：</label>
		<input class="input-xlarge" name="chaNo" value="${pro.chaNo }" placeholder="" id="text0" type="text">
		<label>章节要点：</label>
		<input class="input-xlarge" name="chaMpoint" value="${pro.chaMpoint }" placeholder="" id="text1" type="text">
		<label>所属章节标题：</label>
		<input class="input-xlarge" name="chaTitle" value="${pro.chaTitle }" placeholder="" id="text2" type="text">
		<label>关键字：</label>
		<input class="input-xlarge" name="proKey" value="${pro.proKey }" placeholder="" id="text3" type="text">
		<label>本题难度系数：</label>
		<c:set  var="proCoe" value="${pro.proCoe}" scope="request"/>
    <select name="proCoe" id="Test4" class="input-xlarge">
          <option value="1" <c:if test="${proCoe == 1}">selected</c:if>>1</option>
          <option value="2" <c:if test="${proCoe == 2}">selected</c:if>>2</option>
		  <option value="3" <c:if test="${proCoe == 3}">selected</c:if>>3</option>
          <option value="4" <c:if test="${proCoe == 4}">selected</c:if>>4</option>
		  <option value="5" <c:if test="${proCoe == 5}">selected</c:if>>5</option>
    </select>
		<label>题干：</label>
		<input class="input-xlarge" name="proTitle" value="${pro.proTitle }" placeholder="" id="text" type="text">
    <c:set  var="proAns" value="${pro.proAns}" scope="request"/>
    <select name="proAns" id="Test3" class="input-xlarge">
          <option value="1" <c:if test="${proAns == 1}">selected</c:if>>√</option>
          <option value="-1" <c:if test="${proAns == -1}">selected</c:if>>×</option>
    </select>
		<div class="btn-toolbar">
    <button class="btn btn-primary" type="submit"><i class="icon-save"></i> 保存</button>
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
		</div>
  </body>
</html>