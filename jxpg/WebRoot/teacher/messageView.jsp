<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <base href="<%=basePath%>">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="../js/jquery.js"></script>
</head>
<body>
<div class="place"> <span>位置：</span>
  <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">教师菜单</a></li>
    <li><a href="#">留言查看</a></li>
  </ul>
</div>
<div class="rightinfo">
  <div class="tools">
    <ul class="toolbar">
      <li class="click"><span><img src="../images/t02.png" /></span>修改</li>
      <li><span><img src="../images/t03.png" /></span>删除</li>
    </ul>
    <ul class="toolbar1">
      <li><span><img src="../images/t05.png" /></span>设置</li>
    </ul>
  </div>
  <table class="tablelist">
    <thead>
      <tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
		<th>编号</th>
        <th>学生ID</th>
        <th>课程ID</th>
        <th>留言</th>
        <th>留言时间</th>		
        <!-- <th>操作</th> -->
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><input name="" type="checkbox" value="" /></td>
		<td>001</td>
        <td>005</td>
        <td>003</td>
		<td>环球英语采用欧洲语言共同框架体系，十余年来一直专注于英语教学领域，由浅入深，涵盖零起点到商务英语，适合不同水平、不同需求的学生</td>
		<td>09.10</td>
        <!-- <td><a href="#" class="tablelink">查看</a> <a href="#" class="tablelink"> 删除</a></td> -->
      </tr>
      <tr>
        <td><input name="" type="checkbox" value="" /></td>
      	<td>002</td>
        <td>004</td>
        <td>005</td>
		<td>以学员为中心，利用多媒体教学，结合沙龙课和课外活动让学员在场景中实现流利英语脱口而出，打破语言沟通障碍，实现最美好的职业生涯和最绚丽的人生体验</td>
		<td>05.15</td>
        <!-- <td><a href="#" class="tablelink">查看</a> <a href="#" class="tablelink">删除</a></td> -->
      </tr>
      <tr>
        <td><input name="" type="checkbox" value="" /></td>
		<td>003</td>
        <td>007</td>
        <td>009</td>
		<td>除此之外，环球英语还提供适合各个年龄段学生出国留学应试的解决方案，在有限的时间内，快速有效的提升学员考试分数，为学生出国留学保驾护航</td>
		<td>03.20</td>
        <td><a href="#" class="tablelink">查看</a> <a href="#" class="tablelink">删除</a></td>
      </tr>    
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
</div>
</body>
</html>
