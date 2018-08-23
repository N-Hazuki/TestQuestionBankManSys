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
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>在线答题</title>

<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href="css/iconfont.css" rel="stylesheet" type="text/css" />
<link href="css/test.css" rel="stylesheet" type="text/css" />
<style>
.hasBeenAnswer {
	background: #5d9cec;
	color:#fff;
}
</style>

</head>
<body>
<div class="main">
	<!--nr start-->
	<div class="test_main">
		<div class="nr_left">
			<div class="test">
				<form action="" method="post">
					<div class="test_title">
						<p class="test_time">
							<i class="icon iconfont">&#xe6fb;</i><b class="alt-1">01:40</b>
						</p>
						<font><input type="button" name="test_jiaojuan" value="交卷"></font>
					</div>
					
						<div class="test_content">
							<div class="test_content_title">
								<h2>单选题</h2>
								<p>
									<span>共</span><i class="content_lit">60</i><span>题，</span><span>合计</span><i class="content_fs">60</i><span>分</span>
								</p>
							</div>
						</div>
						<div class="test_content_nr">
							<ul>
								
									<li id="qu_0_0">
										<div class="test_content_nr_tt">
											<i>1</i><span>(1分)</span><font>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（  ）</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer1"
																id="0_answer_1_option_1"
															/>
														
														
														<label for="0_answer_1_option_1">
															A.
															<p class="ue" style="display: inline;">在工具栏中点击“workflow”标签</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer1"
																id="0_answer_1_option_2"
															/>
														
														
														<label for="0_answer_1_option_2">
															B.
															<p class="ue" style="display: inline;">在缺陷单界面中点击“推进流程”按钮</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer1"
																id="0_answer_1_option_3"
															/>
														
														
														<label for="0_answer_1_option_3">
															C.
															<p class="ue" style="display: inline;">在缺陷单界面中点击“提交”按钮</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer1"
																id="0_answer_1_option_4"
															/>
														
														
														<label for="0_answer_1_option_4">
															D.
															<p class="ue" style="display: inline;">后台启动流程推进</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_1">
										<div class="test_content_nr_tt">
											<i>2</i><span>(1分)</span><font>在营销系统中查询客户有无欠费、余额及抄表数据接待客户时应做到哪些最基本的礼仪？</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer2"
																id="0_answer_2_option_1"
															/>
														
														
														<label for="0_answer_2_option_1">
															A.
															<p class="ue" style="display: inline;">起身、微笑、示坐、问候客户</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer2"
																id="0_answer_2_option_2"
															/>
														
														
														<label for="0_answer_2_option_2">
															B.
															<p class="ue" style="display: inline;">坐着，问候客户</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer2"
																id="0_answer_2_option_3"
															/>
														
														
														<label for="0_answer_2_option_3">
															C.
															<p class="ue" style="display: inline;">坐着，问候客户</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer2"
																id="0_answer_2_option_4"
															/>
														
														
														<label for="0_answer_2_option_4">
															D.
															<p class="ue" style="display: inline;">请问需要办理什么业务</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_2">
										<div class="test_content_nr_tt">
											<i>3</i><span>(1分)</span><font>请在下列选项中选择正确进入电力营销系统网址</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer3"
																id="0_answer_3_option_1"
															/>
														
														
														<label for="0_answer_3_option_1">
															A.
															<p class="ue" style="display: inline;">http://10.113.225.24:83/epm/static/logon/logon.jsp</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer3"
																id="0_answer_3_option_2"
															/>
														
														
														<label for="0_answer_3_option_2">
															B.
															<p class="ue" style="display: inline;">http://10.113.255.24:83/epm/static/logon/logon.jsp</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer3"
																id="0_answer_3_option_3"
															/>
														
														
														<label for="0_answer_3_option_3">
															C.
															<p class="ue" style="display: inline;">http://10.113.255.24:81/epm/static/logon/logon.jsphttp://10.113.245.24:81/epm/static/logon/logon.jsp</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_3">
										<div class="test_content_nr_tt">
											<i>4</i><span>(1分)</span><font>如何在电力营销系统查询出客户的是否有余额</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer4"
																id="0_answer_4_option_1"
															/>
														
														
														<label for="0_answer_4_option_1">
															A.
															<p class="ue" style="display: inline;">在综合查询下的电量电费查询中进行查询</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer4"
																id="0_answer_4_option_2"
															/>
														
														
														<label for="0_answer_4_option_2">
															B.
															<p class="ue" style="display: inline;">在综合查询下的抄表信息查询中点击抄表数据进行查询</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer4"
																id="0_answer_4_option_3"
															/>
														
														
														<label for="0_answer_4_option_3">
															C.
															<p class="ue" style="display: inline;">在收费管理下的综合查询中点击欠费查询进行查询</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer4"
																id="0_answer_4_option_4"
															/>
														
														
														<label for="0_answer_4_option_4">
															D.
															<p class="ue" style="display: inline;">在收费管理下的坐收交费中进行查询</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_4">
										<div class="test_content_nr_tt">
											<i>5</i><span>(1分)</span><font>检查、使用万用表,用万用表测量一小型加工厂线电压为351V，请问其电压是否合格（  ）</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer5"
																id="0_answer_5_option_1"
															/>
														
														
														<label for="0_answer_5_option_1">
															A.
															<p class="ue" style="display: inline;">合格</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer5"
																id="0_answer_5_option_2"
															/>
														
														
														<label for="0_answer_5_option_2">
															B.
															<p class="ue" style="display: inline;">不合格</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_5">
										<div class="test_content_nr_tt">
											<i>6</i><span>(1分)</span><font>检查、使用万用表,用万用表测量一小型加工厂线电压为415V，请问其电压是否合格（  ）</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer6"
																id="0_answer_6_option_1"
															/>
														
														
														<label for="0_answer_6_option_1">
															A.
															<p class="ue" style="display: inline;">合格</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer6"
																id="0_answer_6_option_2"
															/>
														
														
														<label for="0_answer_6_option_2">
															B.
															<p class="ue" style="display: inline;">不合格</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_6">
										<div class="test_content_nr_tt">
											<i>7</i><span>(1分)</span><font>万用表使用完毕后，应将转换开关调至（  ）</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer7"
																id="0_answer_7_option_1"
															/>
														
														
														<label for="0_answer_7_option_1">
															A.
															<p class="ue" style="display: inline;">交流电流最高档或空档</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer7"
																id="0_answer_7_option_2"
															/>
														
														
														<label for="0_answer_7_option_2">
															B.
															<p class="ue" style="display: inline;">直流电流最高档或空档</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer7"
																id="0_answer_7_option_3"
															/>
														
														
														<label for="0_answer_7_option_3">
															C.
															<p class="ue" style="display: inline;">交流电压最高档或空档</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer7"
																id="0_answer_7_option_4"
															/>
														
														
														<label for="0_answer_7_option_4">
															D.
															<p class="ue" style="display: inline;">直流电压最高档或空档</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_7">
										<div class="test_content_nr_tt">
											<i>8</i><span>(1分)</span><font>钳形电流表的检查、使用方法,如何判断钳形电流表电池电量充足（  ）</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer8"
																id="0_answer_8_option_1"
															/>
														
														
														<label for="0_answer_8_option_1">
															A.
															<p class="ue" style="display: inline;">钳形电流表开机后数字显示清晰</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer8"
																id="0_answer_8_option_2"
															/>
														
														
														<label for="0_answer_8_option_2">
															B.
															<p class="ue" style="display: inline;">钳形电流表开机后数字显示模糊</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer8"
																id="0_answer_8_option_3"
															/>
														
														
														<label for="0_answer_8_option_3">
															C.
															<p class="ue" style="display: inline;">钳形电流表开机后显示屏发光</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer8"
																id="0_answer_8_option_4"
															/>
														
														
														<label for="0_answer_8_option_4">
															D.
															<p class="ue" style="display: inline;">钳形电流表开机后发出声响</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_8">
										<div class="test_content_nr_tt">
											<i>9</i><span>(1分)</span><font>钳形电流表的检查、使用方法,钳形电流表使用完毕后，应将转换开关调至（  ）</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer9"
																id="0_answer_9_option_1"
															/>
														
														
														<label for="0_answer_9_option_1">
															A.
															<p class="ue" style="display: inline;">交流电压最高档或空档</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer9"
																id="0_answer_9_option_2"
															/>
														
														
														<label for="0_answer_9_option_2">
															B.
															<p class="ue" style="display: inline;">交流电流最高档或空档</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer9"
																id="0_answer_9_option_3"
															/>
														
														
														<label for="0_answer_9_option_3">
															C.
															<p class="ue" style="display: inline;">直流电流最高档或空档</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer9"
																id="0_answer_9_option_4"
															/>
														
														
														<label for="0_answer_9_option_4">
															D.
															<p class="ue" style="display: inline;">直流电压最高档或空档</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_9">
										<div class="test_content_nr_tt">
											<i>10</i><span>(1分)</span><font>灭火器的检查、使用方法,下列不属于灭火器的日常检查主要有（  ）</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer10"
																id="0_answer_10_option_1"
															/>
														
														
														<label for="0_answer_10_option_1">
															A.
															<p class="ue" style="display: inline;">灭火器应在有效试验周期内</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer10"
																id="0_answer_10_option_2"
															/>
														
														
														<label for="0_answer_10_option_2">
															B.
															<p class="ue" style="display: inline;">灭火器压力值应在正常范围内</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer10"
																id="0_answer_10_option_3"
															/>
														
														
														<label for="0_answer_10_option_3">
															C.
															<p class="ue" style="display: inline;">灭火器的型号</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_10">
										<div class="test_content_nr_tt">
											<i>11</i><span>(1分)</span><font>灭火器的检查、使用方法,灭火器的压力指示针指在（  ）范围内时，表示压力值不在正常范围内</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer11"
																id="0_answer_11_option_1"
															/>
														
														
														<label for="0_answer_11_option_1">
															A.
															<p class="ue" style="display: inline;">黄色</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer11"
																id="0_answer_11_option_2"
															/>
														
														
														<label for="0_answer_11_option_2">
															B.
															<p class="ue" style="display: inline;">绿色</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer11"
																id="0_answer_11_option_3"
															/>
														
														
														<label for="0_answer_11_option_3">
															C.
															<p class="ue" style="display: inline;">红色</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_11">
										<div class="test_content_nr_tt">
											<i>12</i><span>(1分)</span><font>现场触电急救摸拟实操,触电急救的三项基本措施错误的是（  ）</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer12"
																id="0_answer_12_option_1"
															/>
														
														
														<label for="0_answer_12_option_1">
															A.
															<p class="ue" style="display: inline;">通畅气道</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer12"
																id="0_answer_12_option_2"
															/>
														
														
														<label for="0_answer_12_option_2">
															B.
															<p class="ue" style="display: inline;">口对口（鼻）人工呼吸</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer12"
																id="0_answer_12_option_3"
															/>
														
														
														<label for="0_answer_12_option_3">
															C.
															<p class="ue" style="display: inline;">胸外心脏挤压</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer12"
																id="0_answer_12_option_4"
															/>
														
														
														<label for="0_answer_12_option_4">
															D.
															<p class="ue" style="display: inline;">腹部猛压法</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_12">
										<div class="test_content_nr_tt">
											<i>13</i><span>(1分)</span><font>现场触电急救摸拟实操,若触电者神志清醒，只是感到心慌、四肢发麻、全身无力或者曾经虽然一度昏迷，但未失去知觉，应做何处理（  ）</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer13"
																id="0_answer_13_option_1"
															/>
														
														
														<label for="0_answer_13_option_1">
															A.
															<p class="ue" style="display: inline;">就地平躺，严格观察，期间不得站立或走动</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer13"
																id="0_answer_13_option_2"
															/>
														
														
														<label for="0_answer_13_option_2">
															B.
															<p class="ue" style="display: inline;">应使其舒适平卧，保持空气流通，同时请医生或送医院诊冶</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer13"
																id="0_answer_13_option_3"
															/>
														
														
														<label for="0_answer_13_option_3">
															C.
															<p class="ue" style="display: inline;">采用胸外心脏挤压法进行抢救</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer13"
																id="0_answer_13_option_4"
															/>
														
														
														<label for="0_answer_13_option_4">
															D.
															<p class="ue" style="display: inline;">采用口对口人工呼吸法抢救</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									<li id="qu_0_13">
										<div class="test_content_nr_tt">
											<i>14</i><span>(1分)</span><font>现场触电急救摸拟实操,下列触电急救的基本原则描述错误的是（  ）</font><b class="icon iconfont">&#xe881;</b>
										</div>

										<div class="test_content_nr_main">
											<ul>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer14"
																id="0_answer_14_option_1"
															/>
														
														
														<label for="0_answer_14_option_1">
															A.
															<p class="ue" style="display: inline;">迅速抱走触电者，使触电者脱离电源</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer14"
																id="0_answer_14_option_2"
															/>
														
														
														<label for="0_answer_14_option_2">
															B.
															<p class="ue" style="display: inline;">救护者熟悉救护方法，按照规定动作进行抢救</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer14"
																id="0_answer_14_option_3"
															/>
														
														
														<label for="0_answer_14_option_3">
															C.
															<p class="ue" style="display: inline;">在现场或附近就地进行抢救，并坚持不懈进行</p>
														</label>
													</li>
												
													<li class="option">
														
															<input type="radio" class="radioOrCheck" name="answer14"
																id="0_answer_14_option_4"
															/>
														
														
														<label for="0_answer_14_option_4">
															D.
															<p class="ue" style="display: inline;">采用正确的方式进行抢救</p>
														</label>
													</li>
												
											</ul>
										</div>
									</li>
								
									
												
											</ul>
										</div>
									</li>
								
							</ul>
						</div>
					
				</form>
			</div>

		</div>
		<div class="nr_right">
			<div class="nr_rt_main">
				<div class="rt_nr1">
					<div class="rt_nr1_title">
						<h1>
							<i class="icon iconfont">&#xe692;</i>答题卡
						</h1>
						<p class="test_time">
							<i class="icon iconfont">&#xe6fb;</i><b class="alt-1">01:40</b>
						</p>
					</div>
					
						<div class="rt_content">
							<div class="rt_content_tt">
								<h2>单选题</h2>
								<p>
									<span>共</span><i class="content_lit">60</i><span>题</span>
								</p>
							</div>
							<div class="rt_content_nr answerSheet">
								<ul>
										<li><a href="#qu_0_0">1</a></li>
										<li><a href="#qu_0_1">2</a></li>
										<li><a href="#qu_0_2">3</a></li>
										<li><a href="#qu_0_3">4</a></li>
										<li><a href="#qu_0_4">5</a></li>
										<li><a href="#qu_0_5">6</a></li>
										<li><a href="#qu_0_6">7</a></li>
										<li><a href="#qu_0_7">8</a></li>
										<li><a href="#qu_0_8">9</a></li>
										<li><a href="#qu_0_9">10</a></li>
										<li><a href="#qu_0_10">11</a></li>
										<li><a href="#qu_0_11">12</a></li>
										<li><a href="#qu_0_12">13</a></li>
									    <li><a href="#qu_0_12">14</a></li>
								</ul>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
	<!--nr end-->
	<div class="foot"></div>
</div>

<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery.easy-pie-chart.js"></script>
<!--时间js-->
<script src="js/jquery.countdown.js"></script>
<script>
	window.jQuery(function($) {
		"use strict";
		
		$('time').countDown({
			with_separators : false
		});
		$('.alt-1').countDown({
			css_class : 'countdown-alt-1'
		});
		$('.alt-2').countDown({
			css_class : 'countdown-alt-2'
		});
		
	});
	
	
	$(function() {
		$('li.option label').click(function() {
		debugger;
			var examId = $(this).closest('.test_content_nr_main').closest('li').attr('id'); // 得到题目ID
			var cardLi = $('a[href=#' + examId + ']'); // 根据题目ID找到对应答题卡
			// 设置已答题
			if(!cardLi.hasClass('hasBeenAnswer')){
				cardLi.addClass('hasBeenAnswer');
			}
			
		});
	});
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p>适用浏览器：FireFox、Chrome、Safari、Opera、</p>
</div>
</body>
</html>