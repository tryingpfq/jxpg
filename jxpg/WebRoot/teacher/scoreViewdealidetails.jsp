<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <!-- "css/style.css" -->
    <base href="<%=basePath%>">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
 <!--    <script type="text/javascript" src="js/jquery.js"></script>
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script> -->
</head>
<body>
<div class="place"> <span>位置：</span>
  <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="left.jsp">教师菜单</a></li>
    <li><a href="teacher/scoreView.jsp" class="tablelink" target="rightFrame">评分查看</a></li>
    <li><a href="teacher/scoreViewdealidetails.jsp" class="tablelink" target="rightFrame">评分查看详细</a></li>
  </ul>
</div>
<div class="rightinfo">
  <table class="tablelist">
    <thead>
      <tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
		<th>编号</th>
        <th>学生ID</th>
        <th>课程ID</th>
        <th>项目评分ID</th>
        <th>项目评分</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><input name="" type="checkbox" value="" /></td>
		<td>001</td>
        <td>005</td>
        <td>003</td>
		<td>003</td>
		<td>90</td>
      </tr>
      <tr>
        <td><input name="" type="checkbox" value="" /></td>
      	<td>002</td>
        <td>004</td>
        <td>005</td>
		<td>006</td>
		<td>79</td>
      </tr>
      <tr>
        <td><input name="" type="checkbox" value="" /></td>
		<td>003</td>
        <td>007</td>
        <td>009</td>
		<td>010</td>
		<td>85</td>
      
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
</div>
<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
