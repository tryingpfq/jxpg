<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>add.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/teacher/My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".btn").click(function() {

		})

	})
</script>

</head>

<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="findTeacherList">教师管理</a></li>
			<li><a href="#">新增</a></li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle">
			<span>教师信息</span>
		</div>
		<form action="insertTeacher" method="post">
			<ul class="forminfo">
				<li><label>用户名</label><input name="username" type="text"
					class="dfinput" /></li>
				<li><label>密码</label><input name="userpwd" type="text"
					class="dfinput" /></li>
				<li><label>姓名</label><input name="name" type="text"
					class="dfinput" /></li>
				<li><label>手机号码</label><input name="telphone" type="text"
					class="dfinput" /></li>
				<li><label>身份证号</label><input name="idno" type="text"
					class="dfinput" /></li>
				<li><label>性别</label><input name="sex" type="text"
					class="dfinput" /></li>
				<li><label>籍贯</label><input name="native_place" type="text"
					class="dfinput" /></li>
				<li><label>出生日期</label><input type="text" name="birthday"
					style="width: 28%" class="Wdate"
					onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" /> <font color=red>&lt;-
						点我弹出日期控件</font>
				</li>
				<li><label>职称</label><input name="profession" type="text"
					class="dfinput" />
				</li>
				<li><label>&nbsp;</label><input name="" type="submit"
					class="btn" value="保存" /></li>
			</ul>
		</form>
	</div>



</body>

</html>
