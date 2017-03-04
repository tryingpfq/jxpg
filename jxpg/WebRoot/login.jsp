<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/header.jsp"%>
<base href="<%=basePath%>">
<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 
</head>

<body style="background-color:#1c77ac; background-image:url(<%=path%>/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
   
     
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox">
    
    <ul>
    <li><input name="" type="text" class="loginuser" value="admin" onclick="JavaScript:this.value=''"/></li>
    <li><input name="" type="text" class="loginpwd" value="密码" onclick="JavaScript:this.value=''"/></li>
 
    <li>
	 <input name="utype" checked type="radio" /> 学生 &nbsp;
	 <input name="utype" type="radio" /> 教师 &nbsp;
	 <input name="utype" type="radio" /> 管理员 &nbsp;
	 &nbsp; &nbsp; &nbsp;
	<input name="" type="button" class="loginbtn" value="登录"  onclick="javascript:window.location='main.html'"  /> </li>
    </ul>
    
    
    </div>
    
    </div>
    
    
    
    <div class="loginbm">版权所有  2017  <a href="http://www.biyeseng.cn">毕业僧</a> </div>
	
    
</body>
</html>
<script>

function login(){

     if($("#username").val() == ""){
          alert("请输入用户名！");
          return ;
     }
      if( $("#pwd").val() == ""){
          alert("请输入密码！");
          return ;
     }  
 	
     document.forms[0].action = "<%=path%>/index/login";
	 document.forms[0].submit();
	 
}



$(document).ready(function(){
	 var $messageInfo = $("#messageInfo").val();
	 if($messageInfo != null && $messageInfo != ""){
		 alert($messageInfo);
		 $("#messageInfo").val("");
	 }
  });
  
  
</script>