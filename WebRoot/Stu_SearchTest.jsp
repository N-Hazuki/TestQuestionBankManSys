<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


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

<title>学生界面</title>
</head>
<body>
<div id="container">
<div id="bd">
   	  <div id="main">
   	  <form action="findTestByCond.action">
        	<div class="search-box ue-clear">
       
            <div class="search-area">
                <div class="kv-item ue-clear">
            		<label>教师编号：</label>
                    <input type="text" name="testTeaid" class="input-xlarge" style="width:105px">
                
                </div>
             </div>
              <div class="search-area">
 				 <div class="kv-item ue-clear">
                 <label>试卷难度:</label>
                        <div class="kv-item-content">
                            <select name="testCoe">
                                <option value="1">易</option>
                                <option value="2">中</option>
                                <option value="3">难</option>
                            </select>
                        </div>
          		 </div>
          	</div>
          	 <div class="search-area" style="margin-left:20px">
                 <div class="search-button" >
               	  <input class="button" type="submit" value="搜索" />
                 </div>
              	
            </div>
          	</div>
             
            <div class="table">
<div class="grid"></div>
                
                <div class="pagination"></div>
          </div>
          </form>
        </div>
    </div>
</div>
</body>
	
	
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/jquery.select.js"></script>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript" src="js/jquery.grid.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript">

	/* var testList = 
		[<c:forEach items="${testList}" var="test"> 
		{	testId:"${test.testId}",
			testName:"${test.testName}",
			testNum:"${test.testNum}",
			testScore:"${test.testScore}",
			testCoe:"${test.testCoe}",
			testTeaid:"${test.testTeaid}"
		}  </c:forEach>]; */
		
	$('select').select();
	var head = [{
				label: '试卷编号',
				width: 150,
				sortable: 'default',
				name: 'id'
			},{
				label:'试卷名称',
				width: 200,
				sortable: 'default',
				name:'name'	
			},{
				label: '题目数',
				width: 50	
			},{
				label: '总分',
				width:50	
			},{
				label:'难度系数',
				width:50	
			},{
				label: '试卷描述',
				minWidth: 200	
			},{
				label: '出题教师',
				width: 150	
			}];
			
	//var oper = [{label:'查看试卷',onclick: function(){
						
	//			}}]
	var tbody = new Array();
	<c:forEach items="${testList}" var="test">
	
	var oper = [{label:'查看试卷',onclick: function(){
					window.location.href="selTestById.action?testId="+"${test.testId}";
			}}];
	$('.grid').Grid({
		thead: head,
		tbody: null,
		height:400,
		checkbox: {
			single:true	
		},
		operator: {
			type : "normal",
			width : 100	
		},
		sortCallBack : function(name,index,type){
			alert(name+","+index+','+type);
		}
		
	});
	//for(var i=0;i<arr.length;i++){
	var tmp = [   
					["${test.testId}"],
					["${test.testName}"],
					["${test.testNum}"],
					["${test.testScore}"],
					["${test.testCoe}"],
					[""],
					["${test.testTeaid}"],oper
			  ];
				// "${test.testName}",
				//	 "${test.testNum}",
				// "${test.testScore}",
				// "${test.testCoe}","",
				// "{test.testTeaid}",oper] 
	
	
	tbody.push(tmp);
		
		$('.grid').Grid('addLoading');
		/// 模拟异步
		/* setTimeout(function(){
			$('.grid').Grid('setData',tbody, head);
		},2000); */
		$('.grid').Grid('setData',tbody, head);
	//}
	</c:forEach>
	
	
	
	$('.pagination').pagination(100,{
		callback: function(page){
			alert(page);	
		},
		display_msg: false
	});

</script>
</html>