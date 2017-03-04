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
<title>网上选课</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script type="../text/javascript" src="js/jquery.js"></script>

</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="<%=path%>/index.jsp">首页</a></li>
    <li>学习菜单</li>
     <li> 网上选课</li>
    </ul>
    </div>
    <div>
      
       <form action="<%=path %>/stumenue/courseFind" method="post">
       <table>
       	  <tr>
       	  	<td>课程号:</td>  <td><input type="text" name="courseNo" value="${course.courseNo }"/></td>
            <td>课程名:</td>  <td><input type="text" name="courseName" value="${course.courseName }"/></td>
            <td>教师ID:</td>  <td><input type="text" name="teacherId" value="${course.teacherId }"/></td>
            <td><input type="submit" value="查询"/></td>
       	  </tr>
       </table>       
       </form>  
    
    </div>
    <div class="rightinfo">    
    <table class="tablelist">
    	<thead>
    	<tr>
       
        <th>编号</th>
        <th>课程号</th>
        <th>课程名称</th>
        <th>学分</th>
        <th>教师ID</th>
        <th>备注</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${courseList}" var="course" varStatus="status"> 
         <tr> 
			<td>${status.index +1 }</td>
	        <td>${course.courseNo }</td>
	        <td>${course.courseName }</td>
	        <td>${course.score }</td>
	        <td>${course.teacherId }</td>
	        <td>${course.remark }</td>
	        <td><a href="<%=path %>/stumenue/courseDetail?course_No=${course.courseNo}" class="tablelink">查看</a>     <a href="select.html" class="tablelink"> 选择</a></td>
         </tr> 
        </c:forEach>  
        </tbody>
    </table>  
   
     <div class="pagin">
    	<div class="message">共<i class="blue">12</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>
