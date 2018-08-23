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
    <title>试题详情</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap_0.css">
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
    <h1 class="page-title">试题详情</h1>
	
<c:forEach items="${proList}" var="pro">
<c:if test="${pro.proType == 1}">
<!--单选题-->
<div class="well" id="tb1">
    <table class="table">
      <thead>
        <tr>
          <th>类别</th>
          <th>内容</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>题目编号：</td>
          <td><c:out value="${pro.proId }"></c:out></td>
        </tr>
		<tr>
          <td>所属章节编号：</td>
          <td><c:out value="${pro.chaNo }"></c:out></td>
        </tr>
		 <tr>
          <td>章节要点：</td>
          <td><c:out value="${pro.chaMpoint }"></c:out></td>
        </tr>
		 <tr>
          <td>所属章节标题：</td>
          <td><c:out value="${pro.chaTitle }"></c:out></td>
        </tr>
		<tr>
          <td>题目：</td>
		  <td><c:out value="${pro.proTitle }"></c:out></td>
        </tr>
        <tr>
          <td>选项A:</td>
          <td><c:out value="${pro.proConta }"></c:out></td>
        </tr>
        <tr>
          <td>选项B：</td>
         <td><c:out value="${pro.proContb }"></c:out></td>
        </tr>
        <tr>
          <td>选项C：</td>
          <td><c:out value="${pro.proContc }"></c:out></td>
        </tr>
		 <tr>
          <td>选项D：</td>
         <td><c:out value="${pro.proContd }"></c:out></td>
        </tr>
	    <tr>
          <td>正确答案</td>
         <td>
         <c:if test="${pro.proAns == 1 }"><c:out value="A"></c:out></c:if>
         <c:if test="${pro.proAns == 2 }"><c:out value="B"></c:out></c:if>
         <c:if test="${pro.proAns == 3 }"><c:out value="C"></c:out></c:if>
         <c:if test="${pro.proAns == 4 }"><c:out value="D"></c:out></c:if>
         </td>
        </tr>
		 <tr>
          <td>难度系数：</td>
		  <td><c:out value="${pro.proCoe }"></c:out></td>
        </tr>
           </tbody>
    </table>
</div>
</c:if>
<c:if test="${pro.proType == 2}">
<!--判断题-->
<div class="well" id="tb1">
    <table class="table">
      <thead>
        <tr>
          <th>类别</th>
          <th>内容</th>
        </tr>
      </thead>
      <tbody>    
   		<tr>
          <td>题目编号：</td>
          <td><c:out value="${pro.proId }"></c:out></td>
        </tr>
		<tr>
          <td>所属章节编号：</td>
          <td><c:out value="${pro.chaNo }"></c:out></td>
        </tr>
		 <tr>
          <td>章节要点：</td>
          <td><c:out value="${pro.chaMpoint }"></c:out></td>
        </tr>
		 <tr>
          <td>所属章节标题：</td>
          <td><c:out value="${pro.chaTitle }"></c:out></td>
        </tr>
		<tr>
          <td>题目：</td>
          <td><c:out value="${pro.proTitle }"></c:out></td>
        </tr>
	    <tr>
          <td>正确答案</td>
         <td>
         <c:if test="${pro.proAns == 1 }"><c:out value="√"></c:out></c:if>
         <c:if test="${pro.proAns == -1 }"><c:out value="×"></c:out></c:if>
         </td>
        </tr>
		 <tr>
          <td>难度系数：</td>
		  <td><c:out value="${pro.proCoe }"></c:out></td>
        </tr>
      </tbody>
    </table>
</div>
</c:if>
</c:forEach>
	
	
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
