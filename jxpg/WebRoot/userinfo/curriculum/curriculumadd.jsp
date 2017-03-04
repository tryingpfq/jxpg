<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'curriculumadd.jsp' starting page</title>
    
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
<script type="text/javascript" src="js/calendar.js" charset="gb2312"></script>


</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">课程管理</a></li>
    <li><a href="#">新增</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>课程管理</span></div>
    <form  name="Form1" id="Form1"  action="insertCurriculum" method="post">
    <ul class="forminfo" >
    <li><label>编号</label><input name="classid" type="text" class="dfinput" /></li>
    
    <li><label>课程名</label><input name="userpwd" type="text" class="dfinput" /></li>
	<li><label>学分</label><input name="name" type="text" class="dfinput" /></li>
    <li><label>备注</label><input name="telphone" type="text" class="dfinput" /></li>
      <li><label>老师id</label><input name="telphone" type="text" class="dfinput" /></li>
    
 
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="保存"/></li>
    </ul>
    </form>
    
    </div>



</body>

</html>

