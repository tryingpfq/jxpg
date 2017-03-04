<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li>学习菜单</li>
     <li>课程详情</li>
    </ul>
    </div>
    <div>
    <div class="rightinfo">
    	<table class="tablelist">
    		<tr>
    			<td>课程号</td>
                <td>课程名</td>
                <td>教师ID</td>
                <td>学分</td>
                <td>课程简介</td>
    		</tr>
            <tr>
    			<td>${course.courseNo }</td>
                <td>${course.courseName }</td>
                <td>${course.teacherId }</td>
                <td>${course.score }</td>
                <td>${course.remark }</td>
    		</tr>   	
    		</table>

    </div>
</body>
</html>