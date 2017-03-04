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
<script type="text/javascript" src="jedate/jedate.js"></script>
<link href="jedate/skin/jedate.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/message/message.js"></script>
</head>
<body>
	 <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="javascript:">首页</a></li>
    <li><a href="messageManager/messageList.jsp">分数列表管理</a></li>
    
     
    </ul>
    </div>
    
    <div class="rightinfo">
    
        <div class="tools">
    
        <ul class="toolbar">
        	<li class="datep"><label>开始时间：</label><input id="startTime" class="datainp" type="text" /></li><li class="datep"><label>结束时间：</label><input id="endTime" class="datainp" type="text" /></li>
            <li onclick=""><span><img src="images/t03.png" /></span>批量删除</li>
        </ul>
     </div>
       <table class="tablelist">
        <thead>
        <tr>
        <th><input id="allMessageCheck" type="checkbox" value="" /></th>
        <th>编号</th>
        <th>课程名</th>
        <th>教授课程老师</th>
        <th>留言</th>
        <th>留言时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody id="messageTb">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>1</td>
        <td>语文</td>
        <td>黄天海</td>
        <td>老师你长得真好看，我好喜欢你哟</td>
        <td>2017/02/19 18:00:00</td>
        
        <td><a href="#" class="tablelink">修改</a>     <a href="#" class="tablelink"> 删除</a></td>
        </tr> 
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>2</td>
        <td>语文</td>
        <td>黄天海</td>
        <td>我也好喜欢你老师</td>
        <td>2017/02/19 18:00:01</td>
        
        <td><a href="#" class="tablelink">修改</a>     <a href="#" class="tablelink"> 删除</a></td>
        </tr> 
        

         <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>3</td>
        <td>语文</td>
        <td>黄天海</td>
        <td>老师你长得那么帅干嘛</td>
        <td>2017/02/19 18:00:02</td>
        
        <td><a href="#" class="tablelink">修改</a>     <a href="#" class="tablelink"> 删除</a></td>
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
