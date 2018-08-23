<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Tea_SearchProbByTest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <table>
    dddd
    <c:forEach items="${proList}" var="pro">
    	
    	<c:if test="${pro.proType == 1}">
    	d1
    	<tr>
    		<td>题目编号：</td><td><c:out value="${pro.proId }"></c:out></td>
    	</tr>
    	<tr>
    		<td>章节编号：</td><td><c:out value="${pro.chaNo }"></c:out></td>
    	</tr>
    	<tr>	
    		<td>章节要点：</td><td><c:out value="${pro.chaMpoint }"></c:out></td>
    	</tr>
    	<tr>	
    		<td>章节标题：</td><td><c:out value="${pro.chaTitle }"></c:out></td>
    	</tr>
    	<tr>	
    		<td>题目：</td><td><c:out value="${pro.proTitle }"></c:out></td>
    	</tr>
    	<tr>	
    		<td>难度系数：</td><td><c:out value="${pro.proCoe }"></c:out></td>
    	</tr>
    	<tr>	
    		<tr><td>选项：</td><td></td></tr>
    		<tr><td>A：</td><td><c:out value="${pro.proConta }"></c:out></td></tr>
    		<tr><td>B：</td><td><c:out value="${pro.proContb }"></c:out></td></tr>
    		<tr><td>C：</td><td><c:out value="${pro.proContc }"></c:out></td></tr>
    		<tr><td>D：</td><td><c:out value="${pro.proContd }"></c:out></td></tr>
    		<tr><td>正确选项：</td><td><c:out value="${pro.proAns }"></c:out></td></tr>
    	</tr>
    	</c:if>
    	<c:if test="${pro.proType == 2}">
    	d2
    		<tr><td>题目编号：</td><td><c:out value="${pro.proId }"></c:out></td></tr>
    		<tr><td>章节编号：</td><td><c:out value="${pro.chaNo }"></c:out></td></tr>
    		<tr><td>章节要点：</td><td><c:out value="${pro.chaMpoint }"></c:out></td></tr>
    		<tr><td>章节标题：</td><td><c:out value="${pro.chaTitle }"></c:out></td></tr>
    		<tr><td>题目：</td><td><c:out value="${pro.proTitle }"></c:out></td></tr>
    		<tr><td>难度系数：</td><td><c:out value="${pro.proCoe }"></c:out></td></tr>
    		<tr><td>正确答案：</td><td><c:out value="${pro.proAns }"></c:out></td></tr>
    	</c:if>
     </c:forEach>	
    </table>
    
    
    
    
    

  </body>
</html>
