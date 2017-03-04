<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/header.jsp"%>
 <script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>
</head>

<body style="background:#f0f9fd;">

    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>管理员菜单
    </div>
    	<ul class="menuson">
        <li  class="active"><cite></cite><a href="userinfo/userlist.html" target="rightFrame">用户管理</a><i></i></li>
        <li><cite></cite><a href="findClassinfoList" target="rightFrame">班级管理</a><i></i></li>
        <li><cite></cite><a href="findStudentList" target="rightFrame">学生管理</a><i></i></li>
        <li><cite></cite><a href="findCurriculumList" target="rightFrame">课程管理</a><i></i></li>
		<li><cite></cite><a href="gradeManager/gradeList.jsp" target="rightFrame">评分项目管理</a><i></i></li>
		<li><cite></cite><a href="messageManager/messageList.jsp" target="rightFrame">留言管理</a><i></i></li>
        <li><cite></cite><a href="userinfo/gradeManager/gradeCount.html" target="rightFrame">评教统计</a><i></i></li>
        
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>学生菜单
    </div>		
    <ul class="menuson">
        <li><cite></cite><a href="<%=path %>/stumenue/coursePage?pageNum=1" target="rightFrame">网上选课</a><i></i></li>
        <li><cite></cite><a href="stumenue/myCourse.html" target="rightFrame">我的课程</a><i></i></li>
		<li><cite></cite><a href="stumenue/evaluationList.jsp" target="rightFrame">网上评教</a><i></i></li>
        <li><cite></cite><a href="#">我的留言</a><i></i></li>
		<li><cite></cite><a href="#">个人信息</a><i></i></li>
        </ul>     
    </dd> 
    
    
    <dd><div class="title"><span><img src="<%=path%>/images/leftico03.png" /></span>教师菜单</div>
    <ul class="menuson">
        <li><cite></cite><a href="findTeacherList" target="rightFrame">个人信息</a><i></i></li>
        <li><cite></cite><a href="teacher/scoreView.html" target="rightFrame">评分查看</a><i></i></li>
        <li><cite></cite><a href="teacher/messageView.html" target="rightFrame">留言查看</a><i></i></li>
        <li><cite></cite><a href="teacher/modifyPassword.jsp" target="rightFrame">修改密码</a><i></i></li>
    </ul>    
    </dd>  
    
    
    <dd><div class="title"><span><img src="<%=path%>/images/leftico04.png" /></span>系统菜单</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">修改密码</a><i></i></li>
        <li><cite></cite><a href="#">退出登录</a><i></i></li>
       
    </ul>
    
    </dd>   
    
    </dl>
    
</body>
</html>