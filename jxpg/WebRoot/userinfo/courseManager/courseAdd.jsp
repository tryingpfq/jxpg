<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javaScript">
   
   function addCourse(){
	   form1=document.getElementById("formid");
	   form1.action="<%=path %>/userinfo/courseManager/addcourse";
	  // alert(form1.action)
	   if(confirm("确定添加？")){
		   form1.submit();
		   return true;
	   }else{
		   return false;
	   }
	 
   }
</script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">课程管理</a></li>
    <li><a href="#">新增</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>课程信息</span></div>
     <form id="formid" method="post"> 
    <ul class="forminfo">
    <li><label>课程编号</label><input name="courseNo" type="text" class="dfinput" /></li>
    <li><label>课程名称</label><input name="courseName" type="text" class="dfinput" /></li>
    <li><label>学分</label><input name="score" type="text" class="dfinput" /></li>
	<li><label>备注</label><input name="remark" type="text" class="dfinput" /></li>
	<li><label>教师</label><input name="teacherId" type="text" class="dfinput" /></li>
	
    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="添加" onclick="addCourse()"/></li>
    </ul>
    </form>
    
    </div>


</body>

</html>
