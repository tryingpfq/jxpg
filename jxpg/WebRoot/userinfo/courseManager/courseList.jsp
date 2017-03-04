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
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="../text/javascript" src="<%=path %>/js/jquery.js"></script>

<script type="text/javascript">
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
  
  function add(){
	 
	  window.location.href="<%=path %>/userinfo/courseManager/courseAdd.jsp";
  }
  
  function delete1(id){
	 // var form = $("<form>");
	 var a1=document.getElementById("aa");
	 //form.attr('action',"<%=path %>/userinfo/courseManager/deletecourse?id='id'");
	// form.attr('method','post');
	  if(confirm("确定删除？")){
		  a1.href="<%=path %>/userinfo/courseManager/deletecourse?id="+id;
		  //form.submit();
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
    <li><a href="<%=path%>/index.jsp">首页</a></li>
    <li>学习菜单</li>
     <li> 网上选课</li>
    </ul>
    </div>
   
    <div class="rightinfo">  
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li  onclick="add()"><span><img src="<%=path %>/images/t01.png" /></span>添加</li>
        
        <li><span><img src="<%=path %>/images/t03.png" /></span>删除</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="<%=path %>/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
      
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
        <c:forEach items="${pageBean.list}" var="course" varStatus="status"> 
         <tr> 
			<td>${status.index +1 }</td>
	        <td>${course.courseNo }</td>
	        <td>${course.courseName }</td>
	        <td>${course.score }</td>
	        <td>${course.teacherId }</td>
	        <td>${course.remark }</td>
	        <td><a href="javascript:void(0);" id="aa" onclick="delete1(${course.id})" class="tablelink">删除</a>     <a href="<%=path %>/userinfo/courseManager/update?id=${course.id}" class="tablelink"> 修改</a></td>
         </tr> 
        </c:forEach>  
        </tbody>
    </table>  
   
     <div class="pagin">
    	
        <tr align="center">
					    <td class="ta_01" align="center" bgColor="#afd1f3">
					             第${requestScope.pageBean.pageNum }/${requestScope.pageBean.totalPage }页  &nbsp;&nbsp;
					    <c:choose>
					      <c:when test="${requestScope.pageBean.pageNum != 1}">
					        <a href="${pageContext.request.contextPath }/userinfo/courseManager/list?pageNum=1">首页</a>
					        <a href="${pageContext.request.contextPath }/userinfo/courseManager/list?pageNum=${requestScope.pageBean.pageNum -1}">上一页</a>
					      </c:when>
					      <c:when test="${requestScope.pageBean.pageNum != requestScope.pageBean.totalPage}">
					        <a href="${pageContext.request.contextPath }/userinfo/courseManager/list?pageNum=${requestScope.pageBean.pageNum +1}">下一页</a>
					        <a href="${pageContext.request.contextPath }/userinfo/courseManager/list?pageNum=${requestScope.pageBean.totalPage}">末页</a>
					      </c:when>
					      <c:otherwise></c:otherwise>
					     </c:choose>
					   </td>
					</tr>
    </div>
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>
