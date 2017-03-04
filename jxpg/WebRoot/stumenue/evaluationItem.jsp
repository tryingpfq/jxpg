<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网上评估</title>
<link href="${pageContext.request.contextPath }/css/Teaching evaluation.css" rel="stylesheet" type="text/css" />
<script type="../text/javascript" src="js/jquery.js"></script>

</head>
<body>
	<div class="top">
		<div class="info">
			<font>被评人:</font> <br>
			<font>问卷名称:</font> 2016-2017秋实践课问卷  <br>
			<font>评估内容:</font> <br>
		</div>
	</div>
	<br>
	<div class="main">
		<div class="evaluation">
			<font>1：实践教学目标与要求清晰，我们能够有效理解</font><br>
			<input name="manner1" type="radio" value="fcmy" />(1)非常满意
			<input name="manner1" type="radio" value="my" />(2) 满意
			<input name="manner1" type="radio" value="yb" />(3) 一般
			<input name="manner1" type="radio" value="bmy" />(4) 不满意<br><br>
			
			<font>2：实践所需设备、器件、耗材等充足，运行完好 </font><br>
			<input name="manner2" type="radio" value="fcmy" />(1)非常满意
			<input name="manner2" type="radio" value="my" />(2) 满意
			<input name="manner2" type="radio" value="yb" />(3) 一般
			<input name="manner2" type="radio" value="bmy" />(4) 不满意<br><br>
	 
			<font>3：实践所选择的时间、地点等科学合理</font><br>
			<input name="manner3" type="radio" value="fcmy" />(1)非常满意
			<input name="manner3" type="radio" value="my" />(2) 满意
			<input name="manner3" type="radio" value="yb" />(3) 一般
			<input name="manner3" type="radio" value="bmy" />(4) 不满意<br><br>

			<font>4：认真负责，治学严谨，为人师表，寓育人与教学之中 </font><br>
			<input name="manner4" type="radio" value="fcmy" />(1)非常满意
			<input name="manner4" type="radio" value="my" />(2) 满意
			<input name="manner4" type="radio" value="yb" />(3) 一般
			<input name="manner4" type="radio" value="bmy" />(4) 不满意<br><br>

			<font>5：教师能够有效启发和引导我们思考问题 </font><br>
			<input name="manner5" type="radio" value="fcmy" />(1)非常满意
			<input name="manner5" type="radio" value="my" />(2) 满意
			<input name="manner5" type="radio" value="yb" />(3) 一般
			<input name="manner5" type="radio" value="bmy" />(4) 不满意<br><br>

			<font>6：教师十分关注我们的实践过程，每一过程都能够有效指导  </font><br>
			<input name="manner6" type="radio" value="fcmy" />(1)非常满意
			<input name="manner6" type="radio" value="my" />(2) 满意
			<input name="manner6" type="radio" value="yb" />(3) 一般
			<input name="manner6" type="radio" value="bmy" />(4) 不满意<br><br>

			<font>7：教师答疑认真，能够经常陪同和指导我们实践活动 </font><br>
			<input name="manner7" type="radio" value="fcmy" />(1)非常满意
			<input name="manner7" type="radio" value="my" />(2) 满意
			<input name="manner7" type="radio" value="yb" />(3) 一般
			<input name="manner7" type="radio" value="bmy" />(4) 不满意<br><br>

			<font>8：指导实践活动，方法灵活有效， 没有因教师的教学不利而影响我们的实践活动  </font><br>
			<input name="manner8" type="radio" value="fcmy" />(1)非常满意
			<input name="manner8" type="radio" value="my" />(2) 满意
			<input name="manner8" type="radio" value="yb" />(3) 一般
			<input name="manner8" type="radio" value="bmy" />(4) 不满意<br><br>

			<font>9：实践报告批改及时认真，反馈及时有效 </font><br>
			<input name="manner9" type="radio" value="fcmy" />(1)非常满意
			<input name="manner9" type="radio" value="my" />(2) 满意
			<input name="manner9" type="radio" value="yb" />(3) 一般
			<input name="manner9" type="radio" value="bmy" />(4) 不满意</br></br>

			<font>10：我们综合运用知识、学习知识的能动得到有效提升 </font><br>
			<input name="manner10" type="radio" value="fcmy" />(1)非常满意
			<input name="manner10" type="radio" value="my" />(2) 满意
			<input name="manner10" type="radio" value="yb" />(3) 一般
			<input name="manner10" type="radio" value="bmy" />(4) 不满意<br><br>

			<font>11：开拓了视野，增长了才干 </font><br>
			<input name="manner11" type="radio" value="fcmy" />(1)非常满意
			<input name="manner11" type="radio" value="my" />(2) 满意
			<input name="manner11" type="radio" value="yb" />(3) 一般
			<input name="manner11" type="radio" value="bmy" />(4) 不满意<br><br>

			<font>12：提升我们分析问题、解决问题能力和创新能力 </font><br>
			<input name="manner12" type="radio" value="fcmy" />(1)非常满意
			<input name="manner12" type="radio" value="my" />(2) 满意
			<input name="manner12" type="radio" value="yb" />(3) 一般
			<input name="manner12" type="radio" value="bmy" />(4) 不满意<br><br>

			<font>13：团队精神、协作精神得到有效培养和提升  </font><br>
			<input name="manner13" type="radio" value="fcmy" />(1)非常满意
			<input name="manner13" type="radio" value="my" />(2) 满意
			<input name="manner13" type="radio" value="yb" />(3) 一般
			<input name="manner13" type="radio" value="bmy" />(4) 不满意<br><br>
		</div>
	</div>
	<br>
	<input type="submit" name="submit" class="submit">
	<br><br>
</body>
</html>
