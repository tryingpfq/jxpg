<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  </head>
  
  <body>
    <div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="findTeacherList">教师管理</a>
			</li>
			<li><a href="#">修改密码</a>
			</li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle">
			<span>修改密码</span>
		</div>
		<form action="updateTeacher" method="post">
			<ul class="forminfo">
				<li><label>用户名</label><input name="username" type="text"
					class="dfinput" />
				</li>				
				<li><label>新密码</label><input name="userpwd" type="text"
					class="dfinput" />
				</li>				
				<li><label>&nbsp;</label><input name="" type="submit"
					 value="保存" />
				</li>
			</ul>
		</form>
	</div>



  </body>
</html>
