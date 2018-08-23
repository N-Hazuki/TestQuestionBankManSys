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
    <title>Tea_SearchProb</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.8.1.min.js" type="text/javascript"></script>
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
    <h1 class="page-title">在库试题查询</h1>
<div class="tab-pane active in" id="home">
<form id="tab" action="selectPro.action" method="post">
	     <input name="teaId" value="${sessionScope.userId }" type="hidden">
<div clss="well">
	 <table class="table">
      <thead>
        <tr>
			<th>关键字：</th>
			<th>题干：</th>
		</tr>
     </thead>
      <tbody>
		  <tr>
			  <td> <input class="input-xlarge" name="proKey" placeholder="" id="text0" type="text"> </td>
			  <td><input class="input-xlarge" name="proTitle" placeholder="" id="text1" type="text"> </td>
		  </tr>
		  <tr>
		  <td>所属章节要点：</td>
		  <td>难度系数：</td>
		  </tr>
		  <tr>
		  <td> <input class="input-xlarge" name="proMpoint" placeholder="" id="text2SearchProbByTestID" type="text"></td>
		  <td>
		<select id="prob" name="proCoe" class="input-xlarge">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
		  <option value="4">4</option>
		  <option value="5">5</option>
    	</select>
		 </td>
		  </tr>
		  <tr>
		  <td><button class="btn" type="submit"><i class="icon-search"></i> 搜索</button></td>
		  <td></td>
		  </tr>
	  </tbody>
    </table>
	</form>
</div>
	</div>	
<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th>习题类型</th>
          <th>所属章节编号</th>
          <th>所属章节标题</th>
          <th>所属章节要点</th>
		  <th>题目</th>
		  <th>关键字</th>
          <th>难度系数</th>
		  <th>操作</th>
          <th style="width: 26px;"></th>
        </tr>
      </thead>
      <tbody>
     			 <c:forEach items="${proList}" var="pro">
        <tr>
        <c:if test="${pro.proType==1}"><td><c:out value="选择题"></c:out></td></c:if>
        <c:if test="${pro.proType==2}"><td><c:out value="判断题"></c:out></td></c:if>
        <td><c:out value="${pro.chaNo}"></c:out></td>
		<td><c:out value="${pro.chaTitle}"></c:out></td>
		<td><c:out value="${pro.chaMpoint}"></c:out></td>
		<td><c:out value="${pro.proTitle}"></c:out></td>
		<td><c:out value="${pro.proKey}"></c:out></td>
		<td><c:out value="${pro.proCoe}"></c:out></td>
		<td>
		<!-- 
		<c:if test="${pro.proType eq '1'} ">
          <a href="updPro.action?proId=${pro.proId }&proType"><i class="icon-pencil"></i></a>
        </c:if>
        -->
          <a href="findProById.action?proId=${pro.proId}&proType=${pro.proType}"><i class="icon-pencil"></i></a>
          <a href="delProById.action?proId=${pro.proId} " role="button" data-toggle="modal"><i class="icon-remove"></i></a>
        </td>
        </tr>
       			 </c:forEach>
      </tbody>
    </table>
</div>
<div class="pagination">
    <ul>
        <li><a href="#">首页</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">下一页</a></li> 
		<div class="btn-group">  </div>
    </ul>
</div>
</div>

        </div>
    </div>
    <footer>
        <hr>
        <p class="pull-right">QUT </p>
        <p>&copy; 2018 </p>
    </footer>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
  </body>
</html>