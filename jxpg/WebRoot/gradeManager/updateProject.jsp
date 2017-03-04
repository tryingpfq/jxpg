<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/grade/ProjectManager.js"></script>
</head>
<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="gradeManager/gradeList.jsp">评分项目管理</a></li>
    <li><a href="gradeManager/updateProject.jsp">修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>评分项目信息</span></div>
    
    <ul class="forminfo">
    <li><label>项目名称</label><input id="projectName" type="text" class="dfinput" /></li>
    <li><label>备注</label><input id="projectRemark" type="text" class="dfinput" /></li>
    <li><label>&nbsp;</label><input id="projectSave" type="button" class="btn" onclick="clickUpdateProject()" value="保存"/></li>
    </ul>
    </div>
</body>
</html>
