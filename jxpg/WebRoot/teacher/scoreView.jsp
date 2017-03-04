<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
  	<base href="<%=basePath%>">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>
 </head>
 <body>
    <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.html">首页</a></li>
    <li><a href="left.jsp">教师菜单</a></li>
     <li><a href="teacher/scoreView.jsp" class="tablelink" target="rightFrame">评分查看</a></li>
    </ul>
    </div>
     <form id="fromid" action="<%=path %>//Scoureinfo/findCount" method="post">
         <input type="submit" value="提交">
       </form>  
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>课程名称</th>
        <th>课程号</th>
        <th>课程评分(平均分)</th>
        <th>参与人数</th>
        <th>查看详情</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${RequestScope.courseList}" var="course" varStatus="status"> 
        <tr>
        <td>${course.courseName}</td>
        <td>${course.courseNo }</td>
        <td>${RequestScope.Avg[status]}</td>
        <td>${RequestScope.count[status]}</td>      
        <td><a href="<%=path%>/Leaveword/findCount>" class="tablelink" target="rightFrame">查看详细</a> </td>
        </tr> 
        </c:forEach>
		 
            
        </tbody>
    </table>
  <div class="pagin">
    <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
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



 </body>
</html>
