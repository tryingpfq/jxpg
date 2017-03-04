<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>个人信息</title>
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
<script type="../text/javascript" src="<%=path%>/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".click").click(function() {
			$(".tip").fadeIn(200);
		});

		$(".tiptop a").click(function() {
			$(".tip").fadeOut(200);
		});

		$(".sure").click(function() {
			$(".tip").fadeOut(100);
		});

		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
		});

	});
</script>
</head>

<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">教师菜单</a></li>
			<li><a href="#">个人信息</a></li>
		</ul>
	</div>
	<div class="rightinfo">
		<div class="tools">
			<ul class="toolbar">
				<li
					onclick="javascript:window.location.href='<%=path%>/teacher/add.jsp'"
					class="clickadd"><span><img src="images/t01.png" />
				</span>添加</li>
				<li class="click"><span><img
						src="<%=path%>/images/t02.png" /> </span>修改</li>
				<li><span><img src="<%=path%>/images/t03.png" /> </span>删除</li>
			</ul>
			<ul class="toolbar1">
				<li><span><img src="<%=path%>/images/t05.png" /> </span>设置</li>
			</ul>
		</div>
		<table class="tablelist">
			<thead>
				<tr>
					<th>编号<i class="sort"><img src="images/px.gif" /> </i></th>
					<th>用户名</th>
					<th>密码</th>
					<th>姓名</th>
					<th>手机号码</th>
					<th>身份证号</th>
					<th>性别</th>
					<th>籍贯</th>
					<th>出生日期</th>
					<th>职称</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${teacherlist}" var="teacherlist"
					varStatus="status">
					<tr>
						<td><input name="" type="checkbox" value="" />${teacherlist.id}</td>
						<td>${teacherlist.username}</td>
						<td>${teacherlist.userpwd}</td>
						<td>${teacherlist.name}</td>
						<td>${teacherlist.telphone}</td>
						<td>${teacherlist.idno}</td>
						<td>${teacherlist.sex}</td>
						<td>${teacherlist.native_place}</td>
						<td>${teacherlist.birthday}</td>
						<td>${teacherlist.profession}</td>
						<td><a href="deleteTeacher?id=${teacherlist.id }"
							class="tablelink"> 删除</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="pagin">
			<div class="message">
				共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="javascript:;"><span
						class="pagepre"></span> </a></li>
				<li class="paginItem"><a href="javascript:;">1</a></li>
				<li class="paginItem current"><a href="javascript:;">2</a></li>
				<li class="paginItem"><a href="javascript:;">3</a></li>
				<li class="paginItem"><a href="javascript:;">4</a></li>
				<li class="paginItem"><a href="javascript:;">5</a></li>
				<li class="paginItem more"><a href="javascript:;">...</a></li>
				<li class="paginItem"><a href="javascript:;">10</a></li>
				<li class="paginItem"><a href="javascript:;"><span
						class="pagenxt"></span> </a></li>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
