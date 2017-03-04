<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网上选课</title>
<base href="<%=basePath %>"/>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/grade/Project.js"></script>
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="javascript:">首页</a></li>
			<li><a href="gradeManager/gradeList.jsp">分数列表管理</a></li>

		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">

			<ul class="toolbar">
				<li onclick="javascript:window.location.href='gradeManager/addProject.jsp'"
					class="click"><span><img src="images/t01.png" /></span>添加</li>
				<li onclick="javascript:batchDelete();"><span><img src="images/t03.png" /></span>批量删除</li>
			</ul>
		</div>
		<table class="tablelist">
			<thead>
				<tr>
					<th><input id="allProjectCheck" type="checkbox" value="" /></th>
					<th>编号</th>
					<th>项目名称</th>
					<th>备注</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="projectTb">
				
			</tbody>
		</table>


		<div class="pagin">
			<div class="message">
				共<i class="blue" id="projectNum"></i>条记录，当前显示第&nbsp;<i class="blue" id="projectPageNum"></i>&nbsp;页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="javascript:;"><span
						class="pagepre"></span></a></li>
				<li class="paginItem"><a href="javascript:;">1</a></li>
				<li class="paginItem current"><a href="javascript:;">2</a></li>
				<li class="paginItem"><a href="javascript:;">3</a></li>
				<li class="paginItem"><a href="javascript:;">4</a></li>
				<li class="paginItem"><a href="javascript:;">5</a></li>
				<li class="paginItem more"><a href="javascript:;">...</a></li>
				<li class="paginItem"><a href="javascript:;">10</a></li>
				<li class="paginItem"><a href="javascript:;"><span
						class="pagenxt"></span></a></li>
			</ul>
		</div>



	</div>
</body>
</html>