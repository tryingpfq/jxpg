<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>classadd.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
$(".btn").click(function(){


})


})



</script>

</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="findClassinfoList">班级管理</a></li>
    <li><a href="#">新增</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>班级信息</span></div>
    <form action="insertClassinfo" method="post">
    <ul class="forminfo">
    <li><label>班级编号</label><input name="classno" type="text" class="dfinput" /></li>
    <li><label>名称</label><input name="classname" type="text" class="dfinput" /></li>
    <li><label>专业</label><input name="major" type="text" class="dfinput" /></li>
	<li><label>院系</label><input name="college" type="text" class="dfinput" /></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="保存" /></li>
    </ul>
    </form>    
    </div>



</body>

</html>
